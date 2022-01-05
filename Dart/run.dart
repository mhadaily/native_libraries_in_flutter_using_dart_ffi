import 'dart:developer' as dev;
import 'package:path/path.dart';
import 'dart:ffi';

import './lib/ffi/generated_bindings.dart';

void main() {
  final path = absolute('native/libadd.dylib');
  dev.log('path to lib $path'); // 42
  final dylib = DynamicLibrary.open(path);
  final add = dylib.lookupFunction<Int32 Function(Int32, Int32),
      int Function(int, int)>('add');
  dev.log('calling native function'); // 42
  final result = add(40, 2);
  dev.log('result is $result'); // 42
}
