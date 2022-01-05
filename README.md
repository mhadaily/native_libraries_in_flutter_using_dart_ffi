# How to access native libraries in Flutter using Dart FFI
Despite the fact that Dart is a great language and feature-riched, there are cases that it does not expose the functinalities that you might need in an Flutter app. For example, there are features in the host platform that are limited to be accessable with a low-level languages such as C, C++ or Rust or the need to link to an external binary library such as TensorFlow. 

Another use case is when you want to provide a same functionalies across different platform using the same code. For instance, if you want to utelize OpenCV (a library of programming functions mainly aimed at real-time computer vision) in all platforms without writing the same logic in Swift, Kotlin and etc. You can implment it in C, Rust and expose it with FFI to an Flutter app. 

Luckily, Dart comes with a feature named FFI or Foreign Function Interface whih generally is used to describe interop mechanisim between programming languages. 

Dart FFI is a Dart’s interop machenism for calling C libraries. One of the use cases is to call C-based compiled library such as `cJSON.dylib` or to call C source code ‘lib/utils.c’ directly from Dart.

One of the great benefits of having FFI in Dart is you can write your code in any languages that can compiled to C lib for example Go or Rust. This is will open a new window towards your development especially when it comes to share native codes between teams and projects or to boost performance of your applications. 

First let’s get started with the basics and fundations.  

## Dart FFI

Let’s write a simple math function in C and use in a simple Dart application. 


    /// native/add.c
     
    int add(int a, int b)
    {
        return a + b;
    }

**Dynamic vs static linking**

A native library can be linked into an app either dynamically or statically. A statically linked library is embedded into the app’s executable image, and is loaded when the app starts.

A dynamically linked library, by contrast, is distributed in a separate file or folder within the app, and loaded on-demand. 

I can covert my `C`  file to dynamic library `dylib` by running `gcc -dynamiclib add.c -o libadd.dylib` on my Mac terminal. I can see the output will be `add.dylib`. 

In order to call this function in Dart, we need to follow the steps below 

        1- open the dynamic library containing the function 
        2- then we need to look up the function, in this step you need to define both C and Dart type as the type between these languages are different. 
        3- finally, we need to call the function. 


    /// run.dart
    
    import 'dart:developer' as dev;
    import 'package:path/path.dart';
    import 'dart:ffi';
    
    void main() {
      final path = absolute('native/libadd.dylib');
      dev.log('path to lib $path');
      final dylib = DynamicLibrary.open(path);
      final add = dylib.lookupFunction<Int32 Function(Int32, Int32),
          int Function(int, int)>('add');
      dev.log('calling native function'); 
      final result = add(40, 2);
      dev.log('result is $result'); // 42
    }
    
    

This simple example shows that you can easily use any dynamic library in Dart. 

Now that you know the basics, It’s time to introduce a tool that can help you to generate FFI binding via code generation. 


## FFIGEN

`ffigen`  (https://pub.dev/packages/ffigen) is a binding generator for FFI bindings. `ffigen` can help you to parse `C` headers and automatically generate `dart`  code.  

I have a `C` header file that contains basic math functions. 


    /// native/math.h
    
    /** Adds 2 integers. */
    int sum(int a, int b);
    /** Subtracts 2 integers. */
    int subtract(int *a, int b);
    /** Multiplies 2 integers, returns pointer to an integer,. */
    int *multiply(int a, int b);
    /** Divides 2 integers, returns pointer to a float. */
    float *divide(int a, int b);
    /** Divides 2 floats, returns a pointer to double. */
    double *dividePercision(float *a, float *b);

To generate FFI bindings in Dart, I can add `ffigen` to my `dev_dependencies` in `pubspec.yml` file


    /// pubspec.yaml 
    dev_dependencies:
      ffigen: ^4.1.2

`ffigen` requires configurations which can be added either as a seperated `config.yaml` file or you can add it under `ffigen` in `pubspec.yaml` . 

The mandatory fields are your entry points and the output file that should be generated. Yoy may also define name or description for your generate class too. 


    /// pubspec.yaml
    ....
    
    ffigen:
      name: 'MathUtilsFFI'
      description: 'Written for the FFI article'
      output: 'lib/ffi/generated_bindings.dart'
      headers:
        entry-points:
          - 'native/headers/math.h'
    

Next, you need to run `dart run ffigen` and you will find `generated_bindings.dart` is generated and you can use `MathUtilsFFI` class in your `dart` files. 


Now that you learn the basics of `ffigen` let’s take a look at a real example.  I would like to use `cJSON` (https://github.com/DaveGamble/cJSON) which is an ultralightweight JSON parser in my `Flutter` or `Dart` application. 

Because the entire `cJSON` library is only one `C` file and one header file, you can just copy `cJSON.h` and `cJSON.c` to your projects source and start using it. However, we need to use use `CMake` which helps to get the most features.

As of writing the article to build the libvrary, CMake with an equal or higher version than 2.8.5 is supported. With CMake it is recommended to do an out of tree build, meaning the compiled files are put in a directory separate from the source files. So in order to build cJSON with CMake on a Unix platform, make a `build` directory and run CMake inside it.


    cd native/cJSON  // where I have copied the source files
    mkdir build 
    cd build
    cmake ..

Then, you’ll see 


    -- The C compiler identification is AppleClang 13.0.0.13000029
    -- Detecting C compiler ABI info
    -- Detecting C compiler ABI info - done
    -- Check for working C compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc - skipped
    -- Detecting C compile features
    -- Detecting C compile features - done
    -- Performing Test FLAG_SUPPORTED_fvisibilityhidden
    -- Performing Test FLAG_SUPPORTED_fvisibilityhidden - Success
    -- Configuring done
    -- Generating done
    -- Build files have been written to: ./my_app_sample/native/cJSON/build

This will create a Makefile and a bunch of other files. You can then compile it:


    make

You’ll see the build progress bar until it’s 100%  done. 


    [ 88%] Built target readme_examples
    [ 91%] Building C object tests/CMakeFiles/minify_tests.dir/minify_tests.c.o
    [ 93%] Linking C executable minify_tests
    [ 93%] Built target minify_tests
    [ 95%] Building C object fuzzing/CMakeFiles/fuzz_main.dir/fuzz_main.c.o
    [ 97%] Building C object fuzzing/CMakeFiles/fuzz_main.dir/cjson_read_fuzzer.c.o
    [100%] Linking C executable fuzz_main
    [100%] Built target fuzz_main

At this point, you’ll have your dynamic libraries generated based on the paltform. For exmaple, on Mac, I have `libcjson.dylib` created but you might see on windows `cjson.dll`  or on Linux and other platform  `libcjson.so` or so on. 

Great! now it’s time to generate my `dart` FFI binding file. This time, to show you how to use sepearted configuration, I am going to create a new configuration file named `cJSON.config.yaml` and I will config my `cJSON` library. 


    // cJSON.config.yaml
    
    output: 'lib/ffi/cjson_generated_bindings.dart'
    name: 'CJson'
    description: 'Holds bindings to cJSON.'
    headers:
      entry-points:
        - 'native/cJSON/cJSON.h'
      include-directives:
        - '**cJSON.h'
    comments: false
    typedef-map:
      'size_t': 'IntPtr'

Finally, I need to run `dart run ffigen --config cJSON.config.yaml` to generate FFI bindings. 


    > flutter pub run ffigen --config cJSON.config.yaml
    Changing current working directory to: /**/my_app_sample
    Running in Directory: '/**/my_app_sample'
    Input Headers: [native/cJSON/cJSON.h]
    Finished, Bindings generated in /**/my_app_sample/lib/ffi/cjson_generated_bindings.dart

To use this library, I will create a `json` file. 


    /// example.json 
    
    {
      "name": "Majid Hajian",
      "age": 30,
      "nicknames": [
        {
          "name": "Mr. Majid",
          "length": 9
        },
        {
          "name": "Mr. Dart",
          "length": 8
        }
      ]
    }
    

The JSON file is simple but imagine that you have heavy JSON which requires performant parsing. 

First, I need to make sure that I am loading the dynalic library correctly. 


    /// cJSON.dart
    import 'dart:convert';
    import 'dart:ffi';
    import 'dart:io';
    import 'package:ffi/ffi.dart';
    import 'package:path/path.dart' as p;
    import './lib/ffi/cjson_generated_bindings.dart' as cj;
    
    String _getPath() {
      final cjsonExamplePath = Directory.current.absolute.path;
      var path = p.join(cjsonExamplePath, 'native/cJSON/build/');
      if (Platform.isMacOS) {
        path = p.join(path, 'libcjson.dylib');
      } else if (Platform.isWindows) {
        path = p.join(path, 'Debug', 'cjson.dll');
      } else {
        path = p.join(path, 'libcjson.so');
      }
      return path;
    }

Then, we need to open the dynamic library 


    final cjson = cj.CJson(DynamicLibrary.open(_getPath()));

Now, I can use the generated C_JSON bindings. 


    /// cJSON.dart
    
    void main() {
      final pathToJson = p.absolute('example.json');
      final jsonString = File(pathToJson).readAsStringSync();
      final cjsonParsedJson = cjson.cJSON_Parse(jsonString.toNativeUtf8().cast());
      if (cjsonParsedJson == nullptr) {
        print('Error parsing cjson.');
        exit(1);
      }
      // The json is now stored in some C data structure which we need
      // to iterate and convert to a dart object (map/list).
      // Converting cjson object to a dart object.
      final dynamic dartJson = convertCJsonToDartObj(cjsonParsedJson.cast());
      // Delete the cjsonParsedJson object.
      cjson.cJSON_Delete(cjsonParsedJson);
      // Check if the converted json is correct
      // by comparing the result with json converted by `dart:convert`.
      if (dartJson.toString() == json.decode(jsonString).toString()) {
        print('Parsed Json: $dartJson');
        print('Json converted successfully');
      } else {
        print("Converted json doesn't match\n");
        print('Actual:\n' + dartJson.toString() + '\n');
        print('Expected:\n' + json.decode(jsonString).toString());
      }
    }

I also have created helper functions to convert cJSON to Dart Object as follows 


    /// main.dart
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

`ffi` package (https://pub.dev/packages/ffi) consist of utilities for working with Foreign Function Interface (FFI) code, incl. converting between Dart strings and C strings encoded with UTF-8 and UTF-16 which is this case, we also needed to add it to our depenceies. 


    ///  pubspec.yaml
    
    dependencies:
       ffi: ^1.1.2

Perfect! time to check if this is going to work! 


    > dart cJSON.dart
    
    Parsed Json: {name: Majid Hajian, age: 30, nicknames: [{name: Mr. Majid, length: 9}, {name: Mr. Dart, length: 8}]}
    Json converted successfully

Now that you know the most important subjects for FFI, Let’s see how we can use it in Flutter. 


## Flutter and FFI 

Most of the concetps from Dart FFI applies to Flutter too. To simply the tutotial, we will focus on Android and iOS in this article but you are not limited because what you have learned from the steps above. 

You have learned that a statically linked library is embedded into the app’s executable image, and is loaded when the app starts. Symbols from a statically linked library can be loaded using DynamicLibrary.executable or DynamicLibrary.process and a dynamically linked library, by contrast, On Android, a dynamically linked library is distributed as a set of `.so` (ELF) files, one for each architecture. On iOS, it’s distributed as a `.framework` folder.
A dynamically linked library can be loaded into Dart via `DynamicLibrary.open` which by now you are familiar how to do that. 


## Configuring the Android Studio C Compiler

You have seen in the begining of the article that we used CMake. You need to follow the steps below:
1- Go to `android/app`
2- Create`CMakeLists.txt` 

    cmake_minimum_required(VERSION 3.4.1)  
     
    add_library( 
                cJSON
                SHARED
                ../../DART/native/cJSON/cJSON.c // path to your native code
    )

3- Open `***android/app/build.gradle***` and add the following snippet:

    android { 
    ....
    
      externalNativeBuild {
        cmake {
          path "CMakeLists.txt"
        }
      }
      
    ...
    }

This tells the Android build system to call CMake with CMakeLists.txt when building the app and it will compile `.c` file to a shared object library with `.so` suffix on Android. 


## Configuring the Xcode C Compiler

To ensure your Xcode will build your app with native `c` code, you need to follow the steps below:

1. Open ios/Runner.xcworkspace
2. Select ***Runner*** under the left-most icon in the top-left bar.
3. Under ***Targets*** select ***Runner***.
4. On the row of tabs, select ***Build Phases***.
5. Expand ***Compile Sources*** tab and click the ***+***
6. On the popup window, click ***Add Other***
7. Navigate to where you have your `.c` file stored, for example,`'``FLUTTER_PROJCT_ROOT/DART/native/cJSON/cJSON.c`
8. Add both `cJSON.c` and `cJSON.h` file
9. Select **Copy Items if needed** and click on **Finish** button. 

The last step is to add our generated Dart binding code to our Flutter app, load the library and call our functions. 

To do that, I am going to add `ffigen` to our Flutter app. 


    /// pubspec.yaml for my Flutter project
    ...
    dependencies:
      ffigen: ^4.1.2
    ...
    
    ffigen:
      output: 'lib/ffi/cjson_generated_bindings.dart'
      name: 'CJson'
      description: 'Holds bindings to cJSON.'
      headers:
        entry-points:
          - 'DART/native/cJSON/cJSON.h'
        include-directives:
          - '**cJSON.h'
      comments: false
      typedef-map:
        'size_t': 'IntPtr'

I will generate it my binding from headers. 


    flutter pub run ffigen

You also need to make sure that our `example.json` file is added under assets


    /// pubspec.yaml
    ...
    flutter:
      uses-material-design: true
      assets:
        - example.json
    ...

Lastly, I will load the library as follows:


    /// lib/ffi_loader.dart
    
    import 'dart:convert';
    import 'dart:developer' as dev_tools;
    import 'dart:ffi';
    import 'dart:io';
    import 'package:ffi/ffi.dart';
    import 'package:flutter/services.dart' show rootBundle;
    import 'package:my_app_sample/ffi/cjson_generated_bindings.dart' as cj;
    
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
          dev_tools.log('Expected:\n${json.decode(jsonString)}');
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

Notice that this is similar to what we have done, however this time, we are loading the library a bit different 


    final cJSONNative = Platform.isAndroid
        ? DynamicLibrary.open('libcJSON.so')
        : DynamicLibrary.process();
    
    cjson = cj.CJson(cJSONNative);

For Android, we call `DynamicLibrary` to find and open the shared library `libcjson.so` but we don’t need to do this in iOS since all linked symbols map when an app runs.

To demonestrate that our native call is working in Flutter, I will add the usage to the `main.dart` file in Flutter as follow:


    // main.dart
    
    import 'package:flutter/material.dart';
    import 'ffi_loader.dart';
    
    void main() {
      runApp(const MyApp());
    
      final cJson = MyNativeCJson(pathToJson: 'example.json');
      await cJson.load();
    }
    

Now I will run the app `flutter run` and volla, I should be able to see the logs from the native calls in my console. 


    Launching lib/main_development.dart on iPhone 13 in debug mode...
    lib/main_development.dart:1
    Xcode build done.                                           16.5s
    Connecting to VM Service at ws://127.0.0.1:53265/9P2HdUg5_Ak=/ws
    [log] Parsed Json: {name: Majid Hajian, age: 30, nicknames: [{name: Mr. Majid, length: 9}, {name: Mr. Dart, length: 8}]}
    [log] Json converted successfully

This means that I can use this library in my Flutter app from now on in different widgets and services. 



## Conslution

Dart FFI and tooling around it makes it easy to integrate native libraries into Dart and Flutter application. 

In this article, you have learned how to call `C` function in Dart using Dart FFI and therefore, how to integrate a `C` library to a Flutter application.  

You can go further and use languages, In fact,  I am particuallry very interested in writing code in Go and Rust as these langauges are memory-managed languages especially Rust which is memory safe language and pretty performant.

You can find all the example under https://github.com/mhadaily/native_libraries_in_flutter_using_dart_ffi





