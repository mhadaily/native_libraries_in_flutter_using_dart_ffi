// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Written for the FFI article
class MathUtilsFFI {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  MathUtilsFFI(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  MathUtilsFFI.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// Adds 2 integers.
  int sum(
    int a,
    int b,
  ) {
    return _sum(
      a,
      b,
    );
  }

  late final _sumPtr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Int32)>>(
          'sum');
  late final _sum = _sumPtr.asFunction<int Function(int, int)>();

  /// Subtracts 2 integers.
  int subtract(
    ffi.Pointer<ffi.Int32> a,
    int b,
  ) {
    return _subtract(
      a,
      b,
    );
  }

  late final _subtractPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int32>, ffi.Int32)>>('subtract');
  late final _subtract =
      _subtractPtr.asFunction<int Function(ffi.Pointer<ffi.Int32>, int)>();

  /// Multiplies 2 integers, returns pointer to an integer,.
  ffi.Pointer<ffi.Int32> multiply(
    int a,
    int b,
  ) {
    return _multiply(
      a,
      b,
    );
  }

  late final _multiplyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int32> Function(ffi.Int32, ffi.Int32)>>('multiply');
  late final _multiply =
      _multiplyPtr.asFunction<ffi.Pointer<ffi.Int32> Function(int, int)>();

  /// Divides 2 integers, returns pointer to a float.
  ffi.Pointer<ffi.Float> divide(
    int a,
    int b,
  ) {
    return _divide(
      a,
      b,
    );
  }

  late final _dividePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Float> Function(ffi.Int32, ffi.Int32)>>('divide');
  late final _divide =
      _dividePtr.asFunction<ffi.Pointer<ffi.Float> Function(int, int)>();

  /// Divides 2 floats, returns a pointer to double.
  ffi.Pointer<ffi.Double> dividePercision(
    ffi.Pointer<ffi.Float> a,
    ffi.Pointer<ffi.Float> b,
  ) {
    return _dividePercision(
      a,
      b,
    );
  }

  late final _dividePercisionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Double> Function(ffi.Pointer<ffi.Float>,
              ffi.Pointer<ffi.Float>)>>('dividePercision');
  late final _dividePercision = _dividePercisionPtr.asFunction<
      ffi.Pointer<ffi.Double> Function(
          ffi.Pointer<ffi.Float>, ffi.Pointer<ffi.Float>)>();
}
