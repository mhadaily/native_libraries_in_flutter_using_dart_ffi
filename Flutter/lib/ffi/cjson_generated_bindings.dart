// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Holds bindings to cJSON.
class CJson {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  CJson(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  CJson.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<ffi.Int8> cJSON_Version() {
    return _cJSON_Version();
  }

  late final _cJSON_VersionPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int8> Function()>>(
          'cJSON_Version');
  late final _cJSON_Version =
      _cJSON_VersionPtr.asFunction<ffi.Pointer<ffi.Int8> Function()>();

  void cJSON_InitHooks(
    ffi.Pointer<cJSON_Hooks> hooks,
  ) {
    return _cJSON_InitHooks(
      hooks,
    );
  }

  late final _cJSON_InitHooksPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<cJSON_Hooks>)>>(
          'cJSON_InitHooks');
  late final _cJSON_InitHooks =
      _cJSON_InitHooksPtr.asFunction<void Function(ffi.Pointer<cJSON_Hooks>)>();

  ffi.Pointer<cJSON> cJSON_Parse(
    ffi.Pointer<ffi.Int8> value,
  ) {
    return _cJSON_Parse(
      value,
    );
  }

  late final _cJSON_ParsePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Int8>)>>('cJSON_Parse');
  late final _cJSON_Parse = _cJSON_ParsePtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_ParseWithLength(
    ffi.Pointer<ffi.Int8> value,
    int buffer_length,
  ) {
    return _cJSON_ParseWithLength(
      value,
      buffer_length,
    );
  }

  late final _cJSON_ParseWithLengthPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<ffi.Int8>, ffi.IntPtr)>>('cJSON_ParseWithLength');
  late final _cJSON_ParseWithLength = _cJSON_ParseWithLengthPtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Int8>, int)>();

  ffi.Pointer<cJSON> cJSON_ParseWithOpts(
    ffi.Pointer<ffi.Int8> value,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> return_parse_end,
    int require_null_terminated,
  ) {
    return _cJSON_ParseWithOpts(
      value,
      return_parse_end,
      require_null_terminated,
    );
  }

  late final _cJSON_ParseWithOptsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Pointer<ffi.Int8>>,
              cJSON_bool)>>('cJSON_ParseWithOpts');
  late final _cJSON_ParseWithOpts = _cJSON_ParseWithOptsPtr.asFunction<
      ffi.Pointer<cJSON> Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Pointer<ffi.Int8>>, int)>();

  ffi.Pointer<cJSON> cJSON_ParseWithLengthOpts(
    ffi.Pointer<ffi.Int8> value,
    int buffer_length,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> return_parse_end,
    int require_null_terminated,
  ) {
    return _cJSON_ParseWithLengthOpts(
      value,
      buffer_length,
      return_parse_end,
      require_null_terminated,
    );
  }

  late final _cJSON_ParseWithLengthOptsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<ffi.Int8>,
              ffi.IntPtr,
              ffi.Pointer<ffi.Pointer<ffi.Int8>>,
              cJSON_bool)>>('cJSON_ParseWithLengthOpts');
  late final _cJSON_ParseWithLengthOpts =
      _cJSON_ParseWithLengthOptsPtr.asFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Int8>, int,
              ffi.Pointer<ffi.Pointer<ffi.Int8>>, int)>();

  ffi.Pointer<ffi.Int8> cJSON_Print(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_Print(
      item,
    );
  }

  late final _cJSON_PrintPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(ffi.Pointer<cJSON>)>>('cJSON_Print');
  late final _cJSON_Print = _cJSON_PrintPtr
      .asFunction<ffi.Pointer<ffi.Int8> Function(ffi.Pointer<cJSON>)>();

  ffi.Pointer<ffi.Int8> cJSON_PrintUnformatted(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_PrintUnformatted(
      item,
    );
  }

  late final _cJSON_PrintUnformattedPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(
              ffi.Pointer<cJSON>)>>('cJSON_PrintUnformatted');
  late final _cJSON_PrintUnformatted = _cJSON_PrintUnformattedPtr
      .asFunction<ffi.Pointer<ffi.Int8> Function(ffi.Pointer<cJSON>)>();

  ffi.Pointer<ffi.Int8> cJSON_PrintBuffered(
    ffi.Pointer<cJSON> item,
    int prebuffer,
    int fmt,
  ) {
    return _cJSON_PrintBuffered(
      item,
      prebuffer,
      fmt,
    );
  }

  late final _cJSON_PrintBufferedPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(ffi.Pointer<cJSON>, ffi.Int32,
              cJSON_bool)>>('cJSON_PrintBuffered');
  late final _cJSON_PrintBuffered = _cJSON_PrintBufferedPtr.asFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Pointer<cJSON>, int, int)>();

  int cJSON_PrintPreallocated(
    ffi.Pointer<cJSON> item,
    ffi.Pointer<ffi.Int8> buffer,
    int length,
    int format,
  ) {
    return _cJSON_PrintPreallocated(
      item,
      buffer,
      length,
      format,
    );
  }

  late final _cJSON_PrintPreallocatedPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>,
              ffi.Int32, cJSON_bool)>>('cJSON_PrintPreallocated');
  late final _cJSON_PrintPreallocated = _cJSON_PrintPreallocatedPtr.asFunction<
      int Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>, int, int)>();

  void cJSON_Delete(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_Delete(
      item,
    );
  }

  late final _cJSON_DeletePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<cJSON>)>>(
          'cJSON_Delete');
  late final _cJSON_Delete =
      _cJSON_DeletePtr.asFunction<void Function(ffi.Pointer<cJSON>)>();

  int cJSON_GetArraySize(
    ffi.Pointer<cJSON> array,
  ) {
    return _cJSON_GetArraySize(
      array,
    );
  }

  late final _cJSON_GetArraySizePtr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<cJSON>)>>(
          'cJSON_GetArraySize');
  late final _cJSON_GetArraySize =
      _cJSON_GetArraySizePtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  ffi.Pointer<cJSON> cJSON_GetArrayItem(
    ffi.Pointer<cJSON> array,
    int index,
  ) {
    return _cJSON_GetArrayItem(
      array,
      index,
    );
  }

  late final _cJSON_GetArrayItemPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<cJSON>, ffi.Int32)>>('cJSON_GetArrayItem');
  late final _cJSON_GetArrayItem = _cJSON_GetArrayItemPtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, int)>();

  ffi.Pointer<cJSON> cJSON_GetObjectItem(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
  ) {
    return _cJSON_GetObjectItem(
      object,
      string,
    );
  }

  late final _cJSON_GetObjectItemPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_GetObjectItem');
  late final _cJSON_GetObjectItem = _cJSON_GetObjectItemPtr.asFunction<
      ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_GetObjectItemCaseSensitive(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
  ) {
    return _cJSON_GetObjectItemCaseSensitive(
      object,
      string,
    );
  }

  late final _cJSON_GetObjectItemCaseSensitivePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_GetObjectItemCaseSensitive');
  late final _cJSON_GetObjectItemCaseSensitive =
      _cJSON_GetObjectItemCaseSensitivePtr.asFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  int cJSON_HasObjectItem(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
  ) {
    return _cJSON_HasObjectItem(
      object,
      string,
    );
  }

  late final _cJSON_HasObjectItemPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_HasObjectItem');
  late final _cJSON_HasObjectItem = _cJSON_HasObjectItemPtr
      .asFunction<int Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<ffi.Int8> cJSON_GetErrorPtr() {
    return _cJSON_GetErrorPtr();
  }

  late final _cJSON_GetErrorPtrPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int8> Function()>>(
          'cJSON_GetErrorPtr');
  late final _cJSON_GetErrorPtr =
      _cJSON_GetErrorPtrPtr.asFunction<ffi.Pointer<ffi.Int8> Function()>();

  ffi.Pointer<ffi.Int8> cJSON_GetStringValue(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_GetStringValue(
      item,
    );
  }

  late final _cJSON_GetStringValuePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(
              ffi.Pointer<cJSON>)>>('cJSON_GetStringValue');
  late final _cJSON_GetStringValue = _cJSON_GetStringValuePtr
      .asFunction<ffi.Pointer<ffi.Int8> Function(ffi.Pointer<cJSON>)>();

  double cJSON_GetNumberValue(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_GetNumberValue(
      item,
    );
  }

  late final _cJSON_GetNumberValuePtr =
      _lookup<ffi.NativeFunction<ffi.Double Function(ffi.Pointer<cJSON>)>>(
          'cJSON_GetNumberValue');
  late final _cJSON_GetNumberValue = _cJSON_GetNumberValuePtr
      .asFunction<double Function(ffi.Pointer<cJSON>)>();

  int cJSON_IsInvalid(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_IsInvalid(
      item,
    );
  }

  late final _cJSON_IsInvalidPtr =
      _lookup<ffi.NativeFunction<cJSON_bool Function(ffi.Pointer<cJSON>)>>(
          'cJSON_IsInvalid');
  late final _cJSON_IsInvalid =
      _cJSON_IsInvalidPtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  int cJSON_IsFalse(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_IsFalse(
      item,
    );
  }

  late final _cJSON_IsFalsePtr =
      _lookup<ffi.NativeFunction<cJSON_bool Function(ffi.Pointer<cJSON>)>>(
          'cJSON_IsFalse');
  late final _cJSON_IsFalse =
      _cJSON_IsFalsePtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  int cJSON_IsTrue(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_IsTrue(
      item,
    );
  }

  late final _cJSON_IsTruePtr =
      _lookup<ffi.NativeFunction<cJSON_bool Function(ffi.Pointer<cJSON>)>>(
          'cJSON_IsTrue');
  late final _cJSON_IsTrue =
      _cJSON_IsTruePtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  int cJSON_IsBool(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_IsBool(
      item,
    );
  }

  late final _cJSON_IsBoolPtr =
      _lookup<ffi.NativeFunction<cJSON_bool Function(ffi.Pointer<cJSON>)>>(
          'cJSON_IsBool');
  late final _cJSON_IsBool =
      _cJSON_IsBoolPtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  int cJSON_IsNull(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_IsNull(
      item,
    );
  }

  late final _cJSON_IsNullPtr =
      _lookup<ffi.NativeFunction<cJSON_bool Function(ffi.Pointer<cJSON>)>>(
          'cJSON_IsNull');
  late final _cJSON_IsNull =
      _cJSON_IsNullPtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  int cJSON_IsNumber(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_IsNumber(
      item,
    );
  }

  late final _cJSON_IsNumberPtr =
      _lookup<ffi.NativeFunction<cJSON_bool Function(ffi.Pointer<cJSON>)>>(
          'cJSON_IsNumber');
  late final _cJSON_IsNumber =
      _cJSON_IsNumberPtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  int cJSON_IsString(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_IsString(
      item,
    );
  }

  late final _cJSON_IsStringPtr =
      _lookup<ffi.NativeFunction<cJSON_bool Function(ffi.Pointer<cJSON>)>>(
          'cJSON_IsString');
  late final _cJSON_IsString =
      _cJSON_IsStringPtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  int cJSON_IsArray(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_IsArray(
      item,
    );
  }

  late final _cJSON_IsArrayPtr =
      _lookup<ffi.NativeFunction<cJSON_bool Function(ffi.Pointer<cJSON>)>>(
          'cJSON_IsArray');
  late final _cJSON_IsArray =
      _cJSON_IsArrayPtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  int cJSON_IsObject(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_IsObject(
      item,
    );
  }

  late final _cJSON_IsObjectPtr =
      _lookup<ffi.NativeFunction<cJSON_bool Function(ffi.Pointer<cJSON>)>>(
          'cJSON_IsObject');
  late final _cJSON_IsObject =
      _cJSON_IsObjectPtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  int cJSON_IsRaw(
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_IsRaw(
      item,
    );
  }

  late final _cJSON_IsRawPtr =
      _lookup<ffi.NativeFunction<cJSON_bool Function(ffi.Pointer<cJSON>)>>(
          'cJSON_IsRaw');
  late final _cJSON_IsRaw =
      _cJSON_IsRawPtr.asFunction<int Function(ffi.Pointer<cJSON>)>();

  ffi.Pointer<cJSON> cJSON_CreateNull() {
    return _cJSON_CreateNull();
  }

  late final _cJSON_CreateNullPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<cJSON> Function()>>(
          'cJSON_CreateNull');
  late final _cJSON_CreateNull =
      _cJSON_CreateNullPtr.asFunction<ffi.Pointer<cJSON> Function()>();

  ffi.Pointer<cJSON> cJSON_CreateTrue() {
    return _cJSON_CreateTrue();
  }

  late final _cJSON_CreateTruePtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<cJSON> Function()>>(
          'cJSON_CreateTrue');
  late final _cJSON_CreateTrue =
      _cJSON_CreateTruePtr.asFunction<ffi.Pointer<cJSON> Function()>();

  ffi.Pointer<cJSON> cJSON_CreateFalse() {
    return _cJSON_CreateFalse();
  }

  late final _cJSON_CreateFalsePtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<cJSON> Function()>>(
          'cJSON_CreateFalse');
  late final _cJSON_CreateFalse =
      _cJSON_CreateFalsePtr.asFunction<ffi.Pointer<cJSON> Function()>();

  ffi.Pointer<cJSON> cJSON_CreateBool(
    int boolean,
  ) {
    return _cJSON_CreateBool(
      boolean,
    );
  }

  late final _cJSON_CreateBoolPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<cJSON> Function(cJSON_bool)>>(
          'cJSON_CreateBool');
  late final _cJSON_CreateBool =
      _cJSON_CreateBoolPtr.asFunction<ffi.Pointer<cJSON> Function(int)>();

  ffi.Pointer<cJSON> cJSON_CreateNumber(
    double num,
  ) {
    return _cJSON_CreateNumber(
      num,
    );
  }

  late final _cJSON_CreateNumberPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<cJSON> Function(ffi.Double)>>(
          'cJSON_CreateNumber');
  late final _cJSON_CreateNumber =
      _cJSON_CreateNumberPtr.asFunction<ffi.Pointer<cJSON> Function(double)>();

  ffi.Pointer<cJSON> cJSON_CreateString(
    ffi.Pointer<ffi.Int8> string,
  ) {
    return _cJSON_CreateString(
      string,
    );
  }

  late final _cJSON_CreateStringPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<ffi.Int8>)>>('cJSON_CreateString');
  late final _cJSON_CreateString = _cJSON_CreateStringPtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_CreateRaw(
    ffi.Pointer<ffi.Int8> raw,
  ) {
    return _cJSON_CreateRaw(
      raw,
    );
  }

  late final _cJSON_CreateRawPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<ffi.Int8>)>>('cJSON_CreateRaw');
  late final _cJSON_CreateRaw = _cJSON_CreateRawPtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_CreateArray() {
    return _cJSON_CreateArray();
  }

  late final _cJSON_CreateArrayPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<cJSON> Function()>>(
          'cJSON_CreateArray');
  late final _cJSON_CreateArray =
      _cJSON_CreateArrayPtr.asFunction<ffi.Pointer<cJSON> Function()>();

  ffi.Pointer<cJSON> cJSON_CreateObject() {
    return _cJSON_CreateObject();
  }

  late final _cJSON_CreateObjectPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<cJSON> Function()>>(
          'cJSON_CreateObject');
  late final _cJSON_CreateObject =
      _cJSON_CreateObjectPtr.asFunction<ffi.Pointer<cJSON> Function()>();

  ffi.Pointer<cJSON> cJSON_CreateStringReference(
    ffi.Pointer<ffi.Int8> string,
  ) {
    return _cJSON_CreateStringReference(
      string,
    );
  }

  late final _cJSON_CreateStringReferencePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<ffi.Int8>)>>('cJSON_CreateStringReference');
  late final _cJSON_CreateStringReference = _cJSON_CreateStringReferencePtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_CreateObjectReference(
    ffi.Pointer<cJSON> child,
  ) {
    return _cJSON_CreateObjectReference(
      child,
    );
  }

  late final _cJSON_CreateObjectReferencePtr = _lookup<
          ffi.NativeFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>)>>(
      'cJSON_CreateObjectReference');
  late final _cJSON_CreateObjectReference = _cJSON_CreateObjectReferencePtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>)>();

  ffi.Pointer<cJSON> cJSON_CreateArrayReference(
    ffi.Pointer<cJSON> child,
  ) {
    return _cJSON_CreateArrayReference(
      child,
    );
  }

  late final _cJSON_CreateArrayReferencePtr = _lookup<
          ffi.NativeFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>)>>(
      'cJSON_CreateArrayReference');
  late final _cJSON_CreateArrayReference = _cJSON_CreateArrayReferencePtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>)>();

  ffi.Pointer<cJSON> cJSON_CreateIntArray(
    ffi.Pointer<ffi.Int32> numbers,
    int count,
  ) {
    return _cJSON_CreateIntArray(
      numbers,
      count,
    );
  }

  late final _cJSON_CreateIntArrayPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<ffi.Int32>, ffi.Int32)>>('cJSON_CreateIntArray');
  late final _cJSON_CreateIntArray = _cJSON_CreateIntArrayPtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Int32>, int)>();

  ffi.Pointer<cJSON> cJSON_CreateFloatArray(
    ffi.Pointer<ffi.Float> numbers,
    int count,
  ) {
    return _cJSON_CreateFloatArray(
      numbers,
      count,
    );
  }

  late final _cJSON_CreateFloatArrayPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<ffi.Float>, ffi.Int32)>>('cJSON_CreateFloatArray');
  late final _cJSON_CreateFloatArray = _cJSON_CreateFloatArrayPtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Float>, int)>();

  ffi.Pointer<cJSON> cJSON_CreateDoubleArray(
    ffi.Pointer<ffi.Double> numbers,
    int count,
  ) {
    return _cJSON_CreateDoubleArray(
      numbers,
      count,
    );
  }

  late final _cJSON_CreateDoubleArrayPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<ffi.Double>, ffi.Int32)>>('cJSON_CreateDoubleArray');
  late final _cJSON_CreateDoubleArray = _cJSON_CreateDoubleArrayPtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Double>, int)>();

  ffi.Pointer<cJSON> cJSON_CreateStringArray(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> strings,
    int count,
  ) {
    return _cJSON_CreateStringArray(
      strings,
      count,
    );
  }

  late final _cJSON_CreateStringArrayPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Pointer<ffi.Int8>>,
              ffi.Int32)>>('cJSON_CreateStringArray');
  late final _cJSON_CreateStringArray = _cJSON_CreateStringArrayPtr.asFunction<
      ffi.Pointer<cJSON> Function(ffi.Pointer<ffi.Pointer<ffi.Int8>>, int)>();

  int cJSON_AddItemToArray(
    ffi.Pointer<cJSON> array,
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_AddItemToArray(
      array,
      item,
    );
  }

  late final _cJSON_AddItemToArrayPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(
              ffi.Pointer<cJSON>, ffi.Pointer<cJSON>)>>('cJSON_AddItemToArray');
  late final _cJSON_AddItemToArray = _cJSON_AddItemToArrayPtr
      .asFunction<int Function(ffi.Pointer<cJSON>, ffi.Pointer<cJSON>)>();

  int cJSON_AddItemToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_AddItemToObject(
      object,
      string,
      item,
    );
  }

  late final _cJSON_AddItemToObjectPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<cJSON>)>>('cJSON_AddItemToObject');
  late final _cJSON_AddItemToObject = _cJSON_AddItemToObjectPtr.asFunction<
      int Function(
          ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>, ffi.Pointer<cJSON>)>();

  int cJSON_AddItemToObjectCS(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_AddItemToObjectCS(
      object,
      string,
      item,
    );
  }

  late final _cJSON_AddItemToObjectCSPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<cJSON>)>>('cJSON_AddItemToObjectCS');
  late final _cJSON_AddItemToObjectCS = _cJSON_AddItemToObjectCSPtr.asFunction<
      int Function(
          ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>, ffi.Pointer<cJSON>)>();

  int cJSON_AddItemReferenceToArray(
    ffi.Pointer<cJSON> array,
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_AddItemReferenceToArray(
      array,
      item,
    );
  }

  late final _cJSON_AddItemReferenceToArrayPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>,
              ffi.Pointer<cJSON>)>>('cJSON_AddItemReferenceToArray');
  late final _cJSON_AddItemReferenceToArray = _cJSON_AddItemReferenceToArrayPtr
      .asFunction<int Function(ffi.Pointer<cJSON>, ffi.Pointer<cJSON>)>();

  int cJSON_AddItemReferenceToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_AddItemReferenceToObject(
      object,
      string,
      item,
    );
  }

  late final _cJSON_AddItemReferenceToObjectPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<cJSON>)>>('cJSON_AddItemReferenceToObject');
  late final _cJSON_AddItemReferenceToObject =
      _cJSON_AddItemReferenceToObjectPtr.asFunction<
          int Function(
              ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>, ffi.Pointer<cJSON>)>();

  ffi.Pointer<cJSON> cJSON_DetachItemViaPointer(
    ffi.Pointer<cJSON> parent,
    ffi.Pointer<cJSON> item,
  ) {
    return _cJSON_DetachItemViaPointer(
      parent,
      item,
    );
  }

  late final _cJSON_DetachItemViaPointerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>,
              ffi.Pointer<cJSON>)>>('cJSON_DetachItemViaPointer');
  late final _cJSON_DetachItemViaPointer =
      _cJSON_DetachItemViaPointerPtr.asFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<cJSON>, ffi.Pointer<cJSON>)>();

  ffi.Pointer<cJSON> cJSON_DetachItemFromArray(
    ffi.Pointer<cJSON> array,
    int which,
  ) {
    return _cJSON_DetachItemFromArray(
      array,
      which,
    );
  }

  late final _cJSON_DetachItemFromArrayPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<cJSON>, ffi.Int32)>>('cJSON_DetachItemFromArray');
  late final _cJSON_DetachItemFromArray = _cJSON_DetachItemFromArrayPtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, int)>();

  void cJSON_DeleteItemFromArray(
    ffi.Pointer<cJSON> array,
    int which,
  ) {
    return _cJSON_DeleteItemFromArray(
      array,
      which,
    );
  }

  late final _cJSON_DeleteItemFromArrayPtr = _lookup<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<cJSON>, ffi.Int32)>>(
      'cJSON_DeleteItemFromArray');
  late final _cJSON_DeleteItemFromArray = _cJSON_DeleteItemFromArrayPtr
      .asFunction<void Function(ffi.Pointer<cJSON>, int)>();

  ffi.Pointer<cJSON> cJSON_DetachItemFromObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
  ) {
    return _cJSON_DetachItemFromObject(
      object,
      string,
    );
  }

  late final _cJSON_DetachItemFromObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_DetachItemFromObject');
  late final _cJSON_DetachItemFromObject =
      _cJSON_DetachItemFromObjectPtr.asFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_DetachItemFromObjectCaseSensitive(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
  ) {
    return _cJSON_DetachItemFromObjectCaseSensitive(
      object,
      string,
    );
  }

  late final _cJSON_DetachItemFromObjectCaseSensitivePtr = _lookup<
          ffi.NativeFunction<
              ffi.Pointer<cJSON> Function(
                  ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>>(
      'cJSON_DetachItemFromObjectCaseSensitive');
  late final _cJSON_DetachItemFromObjectCaseSensitive =
      _cJSON_DetachItemFromObjectCaseSensitivePtr.asFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  void cJSON_DeleteItemFromObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
  ) {
    return _cJSON_DeleteItemFromObject(
      object,
      string,
    );
  }

  late final _cJSON_DeleteItemFromObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_DeleteItemFromObject');
  late final _cJSON_DeleteItemFromObject = _cJSON_DeleteItemFromObjectPtr
      .asFunction<void Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  void cJSON_DeleteItemFromObjectCaseSensitive(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
  ) {
    return _cJSON_DeleteItemFromObjectCaseSensitive(
      object,
      string,
    );
  }

  late final _cJSON_DeleteItemFromObjectCaseSensitivePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>>(
      'cJSON_DeleteItemFromObjectCaseSensitive');
  late final _cJSON_DeleteItemFromObjectCaseSensitive =
      _cJSON_DeleteItemFromObjectCaseSensitivePtr.asFunction<
          void Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  int cJSON_InsertItemInArray(
    ffi.Pointer<cJSON> array,
    int which,
    ffi.Pointer<cJSON> newitem,
  ) {
    return _cJSON_InsertItemInArray(
      array,
      which,
      newitem,
    );
  }

  late final _cJSON_InsertItemInArrayPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>, ffi.Int32,
              ffi.Pointer<cJSON>)>>('cJSON_InsertItemInArray');
  late final _cJSON_InsertItemInArray = _cJSON_InsertItemInArrayPtr
      .asFunction<int Function(ffi.Pointer<cJSON>, int, ffi.Pointer<cJSON>)>();

  int cJSON_ReplaceItemViaPointer(
    ffi.Pointer<cJSON> parent,
    ffi.Pointer<cJSON> item,
    ffi.Pointer<cJSON> replacement,
  ) {
    return _cJSON_ReplaceItemViaPointer(
      parent,
      item,
      replacement,
    );
  }

  late final _cJSON_ReplaceItemViaPointerPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>, ffi.Pointer<cJSON>,
              ffi.Pointer<cJSON>)>>('cJSON_ReplaceItemViaPointer');
  late final _cJSON_ReplaceItemViaPointer =
      _cJSON_ReplaceItemViaPointerPtr.asFunction<
          int Function(
              ffi.Pointer<cJSON>, ffi.Pointer<cJSON>, ffi.Pointer<cJSON>)>();

  int cJSON_ReplaceItemInArray(
    ffi.Pointer<cJSON> array,
    int which,
    ffi.Pointer<cJSON> newitem,
  ) {
    return _cJSON_ReplaceItemInArray(
      array,
      which,
      newitem,
    );
  }

  late final _cJSON_ReplaceItemInArrayPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>, ffi.Int32,
              ffi.Pointer<cJSON>)>>('cJSON_ReplaceItemInArray');
  late final _cJSON_ReplaceItemInArray = _cJSON_ReplaceItemInArrayPtr
      .asFunction<int Function(ffi.Pointer<cJSON>, int, ffi.Pointer<cJSON>)>();

  int cJSON_ReplaceItemInObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
    ffi.Pointer<cJSON> newitem,
  ) {
    return _cJSON_ReplaceItemInObject(
      object,
      string,
      newitem,
    );
  }

  late final _cJSON_ReplaceItemInObjectPtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<cJSON>)>>('cJSON_ReplaceItemInObject');
  late final _cJSON_ReplaceItemInObject =
      _cJSON_ReplaceItemInObjectPtr.asFunction<
          int Function(
              ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>, ffi.Pointer<cJSON>)>();

  int cJSON_ReplaceItemInObjectCaseSensitive(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> string,
    ffi.Pointer<cJSON> newitem,
  ) {
    return _cJSON_ReplaceItemInObjectCaseSensitive(
      object,
      string,
      newitem,
    );
  }

  late final _cJSON_ReplaceItemInObjectCaseSensitivePtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<cJSON>)>>('cJSON_ReplaceItemInObjectCaseSensitive');
  late final _cJSON_ReplaceItemInObjectCaseSensitive =
      _cJSON_ReplaceItemInObjectCaseSensitivePtr.asFunction<
          int Function(
              ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>, ffi.Pointer<cJSON>)>();

  ffi.Pointer<cJSON> cJSON_Duplicate(
    ffi.Pointer<cJSON> item,
    int recurse,
  ) {
    return _cJSON_Duplicate(
      item,
      recurse,
    );
  }

  late final _cJSON_DuplicatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(
              ffi.Pointer<cJSON>, cJSON_bool)>>('cJSON_Duplicate');
  late final _cJSON_Duplicate = _cJSON_DuplicatePtr
      .asFunction<ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, int)>();

  int cJSON_Compare(
    ffi.Pointer<cJSON> a,
    ffi.Pointer<cJSON> b,
    int case_sensitive,
  ) {
    return _cJSON_Compare(
      a,
      b,
      case_sensitive,
    );
  }

  late final _cJSON_ComparePtr = _lookup<
      ffi.NativeFunction<
          cJSON_bool Function(ffi.Pointer<cJSON>, ffi.Pointer<cJSON>,
              cJSON_bool)>>('cJSON_Compare');
  late final _cJSON_Compare = _cJSON_ComparePtr
      .asFunction<int Function(ffi.Pointer<cJSON>, ffi.Pointer<cJSON>, int)>();

  void cJSON_Minify(
    ffi.Pointer<ffi.Int8> json,
  ) {
    return _cJSON_Minify(
      json,
    );
  }

  late final _cJSON_MinifyPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Int8>)>>(
          'cJSON_Minify');
  late final _cJSON_Minify =
      _cJSON_MinifyPtr.asFunction<void Function(ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_AddNullToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _cJSON_AddNullToObject(
      object,
      name,
    );
  }

  late final _cJSON_AddNullToObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_AddNullToObject');
  late final _cJSON_AddNullToObject = _cJSON_AddNullToObjectPtr.asFunction<
      ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_AddTrueToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _cJSON_AddTrueToObject(
      object,
      name,
    );
  }

  late final _cJSON_AddTrueToObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_AddTrueToObject');
  late final _cJSON_AddTrueToObject = _cJSON_AddTrueToObjectPtr.asFunction<
      ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_AddFalseToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _cJSON_AddFalseToObject(
      object,
      name,
    );
  }

  late final _cJSON_AddFalseToObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_AddFalseToObject');
  late final _cJSON_AddFalseToObject = _cJSON_AddFalseToObjectPtr.asFunction<
      ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_AddBoolToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> name,
    int boolean,
  ) {
    return _cJSON_AddBoolToObject(
      object,
      name,
      boolean,
    );
  }

  late final _cJSON_AddBoolToObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>,
              cJSON_bool)>>('cJSON_AddBoolToObject');
  late final _cJSON_AddBoolToObject = _cJSON_AddBoolToObjectPtr.asFunction<
      ffi.Pointer<cJSON> Function(
          ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>, int)>();

  ffi.Pointer<cJSON> cJSON_AddNumberToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> name,
    double number,
  ) {
    return _cJSON_AddNumberToObject(
      object,
      name,
      number,
    );
  }

  late final _cJSON_AddNumberToObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>,
              ffi.Double)>>('cJSON_AddNumberToObject');
  late final _cJSON_AddNumberToObject = _cJSON_AddNumberToObjectPtr.asFunction<
      ffi.Pointer<cJSON> Function(
          ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>, double)>();

  ffi.Pointer<cJSON> cJSON_AddStringToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> name,
    ffi.Pointer<ffi.Int8> string,
  ) {
    return _cJSON_AddStringToObject(
      object,
      name,
      string,
    );
  }

  late final _cJSON_AddStringToObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_AddStringToObject');
  late final _cJSON_AddStringToObject = _cJSON_AddStringToObjectPtr.asFunction<
      ffi.Pointer<cJSON> Function(
          ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_AddRawToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> name,
    ffi.Pointer<ffi.Int8> raw,
  ) {
    return _cJSON_AddRawToObject(
      object,
      name,
      raw,
    );
  }

  late final _cJSON_AddRawToObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_AddRawToObject');
  late final _cJSON_AddRawToObject = _cJSON_AddRawToObjectPtr.asFunction<
      ffi.Pointer<cJSON> Function(
          ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_AddObjectToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _cJSON_AddObjectToObject(
      object,
      name,
    );
  }

  late final _cJSON_AddObjectToObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_AddObjectToObject');
  late final _cJSON_AddObjectToObject = _cJSON_AddObjectToObjectPtr.asFunction<
      ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<cJSON> cJSON_AddArrayToObject(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> name,
  ) {
    return _cJSON_AddArrayToObject(
      object,
      name,
    );
  }

  late final _cJSON_AddArrayToObjectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_AddArrayToObject');
  late final _cJSON_AddArrayToObject = _cJSON_AddArrayToObjectPtr.asFunction<
      ffi.Pointer<cJSON> Function(ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  double cJSON_SetNumberHelper(
    ffi.Pointer<cJSON> object,
    double number,
  ) {
    return _cJSON_SetNumberHelper(
      object,
      number,
    );
  }

  late final _cJSON_SetNumberHelperPtr = _lookup<
      ffi.NativeFunction<
          ffi.Double Function(
              ffi.Pointer<cJSON>, ffi.Double)>>('cJSON_SetNumberHelper');
  late final _cJSON_SetNumberHelper = _cJSON_SetNumberHelperPtr
      .asFunction<double Function(ffi.Pointer<cJSON>, double)>();

  ffi.Pointer<ffi.Int8> cJSON_SetValuestring(
    ffi.Pointer<cJSON> object,
    ffi.Pointer<ffi.Int8> valuestring,
  ) {
    return _cJSON_SetValuestring(
      object,
      valuestring,
    );
  }

  late final _cJSON_SetValuestringPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(ffi.Pointer<cJSON>,
              ffi.Pointer<ffi.Int8>)>>('cJSON_SetValuestring');
  late final _cJSON_SetValuestring = _cJSON_SetValuestringPtr.asFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<cJSON>, ffi.Pointer<ffi.Int8>)>();

  ffi.Pointer<ffi.Void> cJSON_malloc(
    int size,
  ) {
    return _cJSON_malloc(
      size,
    );
  }

  late final _cJSON_mallocPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.IntPtr)>>(
          'cJSON_malloc');
  late final _cJSON_malloc =
      _cJSON_mallocPtr.asFunction<ffi.Pointer<ffi.Void> Function(int)>();

  void cJSON_free(
    ffi.Pointer<ffi.Void> object,
  ) {
    return _cJSON_free(
      object,
    );
  }

  late final _cJSON_freePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'cJSON_free');
  late final _cJSON_free =
      _cJSON_freePtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();
}

class cJSON extends ffi.Struct {
  external ffi.Pointer<cJSON> next;

  external ffi.Pointer<cJSON> prev;

  external ffi.Pointer<cJSON> child;

  @ffi.Int32()
  external int type;

  external ffi.Pointer<ffi.Int8> valuestring;

  @ffi.Int32()
  external int valueint;

  @ffi.Double()
  external double valuedouble;

  external ffi.Pointer<ffi.Int8> string;
}

class cJSON_Hooks extends ffi.Struct {
  external ffi.Pointer<
      ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.IntPtr)>> malloc_fn;

  external ffi
          .Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>
      free_fn;
}

typedef cJSON_bool = ffi.Int32;

const int CJSON_VERSION_MAJOR = 1;

const int CJSON_VERSION_MINOR = 7;

const int CJSON_VERSION_PATCH = 15;

const int cJSON_Invalid = 0;

const int cJSON_False = 1;

const int cJSON_True = 2;

const int cJSON_NULL = 4;

const int cJSON_Number = 8;

const int cJSON_String = 16;

const int cJSON_Array = 32;

const int cJSON_Object = 64;

const int cJSON_Raw = 128;

const int cJSON_IsReference = 256;

const int cJSON_StringIsConst = 512;

const int CJSON_NESTING_LIMIT = 1000;
