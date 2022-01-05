import 'dart:convert';
import 'dart:developer' as dev_tools;
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'package:flutter/services.dart' show rootBundle;

import './ffi/cjson_generated_bindings.dart' as cj;

class MyNativeCJson {
  MyNativeCJson({
    required this.pathToJson,
  }) {
    final cJSONNative = Platform.isAndroid
        ? DynamicLibrary.open('libcjson.so')
        : DynamicLibrary.process();
    cjson = cj.CJson(cJSONNative);
  }
  late cj.CJson cjson;
  final String pathToJson;
  Future<void> load() async {
    final jsonString = await rootBundle.loadString('assets/$pathToJson');
    final cjsonParsedJson = cjson.cJSON_Parse(jsonString.toNativeUtf8().cast());
    if (cjsonParsedJson == nullptr) {
      dev_tools.log('Error parsing cjson.');
    }
    final dynamic dartJson = convertCJsonToDartObj(cjsonParsedJson.cast());
    cjson.cJSON_Delete(cjsonParsedJson);
    if (dartJson.toString() == json.decode(jsonString).toString()) {
      dev_tools.log('Parsed Json: $dartJson');
      dev_tools.log('Json converted successfully');
    } else {
      dev_tools.log("Converted json doesn't match\n");
      dev_tools.log('Actual:\n$dartJson\n');
      print('Expected:\n${json.decode(jsonString)}');
    }
  }

  dynamic convertCJsonToDartObj(Pointer<cj.cJSON> parsedcjson) {
    dynamic obj;
    if (cjson.cJSON_IsObject(parsedcjson.cast()) == 1) {
      obj = <String, dynamic>{};
      Pointer<cj.cJSON>? ptr;
      ptr = parsedcjson.ref.child;
      while (ptr != nullptr) {
        final dynamic o = convertCJsonToDartObj(ptr!);
        _addToObj(obj, o, ptr.ref.string.cast());
        ptr = ptr.ref.next;
      }
    } else if (cjson.cJSON_IsArray(parsedcjson.cast()) == 1) {
      obj = <dynamic>[];
      Pointer<cj.cJSON>? ptr;
      ptr = parsedcjson.ref.child;
      while (ptr != nullptr) {
        final dynamic o = convertCJsonToDartObj(ptr!);
        _addToObj(obj, o);
        ptr = ptr.ref.next;
      }
    } else if (cjson.cJSON_IsString(parsedcjson.cast()) == 1) {
      obj = parsedcjson.ref.valuestring.cast<Utf8>().toDartString();
    } else if (cjson.cJSON_IsNumber(parsedcjson.cast()) == 1) {
      obj = parsedcjson.ref.valueint == parsedcjson.ref.valuedouble
          ? parsedcjson.ref.valueint
          : parsedcjson.ref.valuedouble;
    }
    return obj;
  }

  void _addToObj(dynamic obj, dynamic o, [Pointer<Utf8>? name]) {
    if (obj is Map<String, dynamic>) {
      obj[name!.toDartString()] = o;
    } else if (obj is List<dynamic>) {
      obj.add(o);
    }
  }
}
