// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_connection_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PrinterConnectionDataCWProxy {
  PrinterConnectionData ip(String ip);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PrinterConnectionData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PrinterConnectionData(...).copyWith(id: 12, name: "My name")
  /// ````
  PrinterConnectionData call({
    String? ip,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPrinterConnectionData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPrinterConnectionData.copyWith.fieldName(...)`
class _$PrinterConnectionDataCWProxyImpl
    implements _$PrinterConnectionDataCWProxy {
  const _$PrinterConnectionDataCWProxyImpl(this._value);

  final PrinterConnectionData _value;

  @override
  PrinterConnectionData ip(String ip) => this(ip: ip);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PrinterConnectionData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PrinterConnectionData(...).copyWith(id: 12, name: "My name")
  /// ````
  PrinterConnectionData call({
    Object? ip = const $CopyWithPlaceholder(),
  }) {
    return PrinterConnectionData(
      ip == const $CopyWithPlaceholder() || ip == null
          // ignore: unnecessary_non_null_assertion
          ? _value.ip!
          // ignore: cast_nullable_to_non_nullable
          : ip as String,
    );
  }
}

extension $PrinterConnectionDataCopyWith on PrinterConnectionData {
  /// Returns a callable class that can be used as follows: `instanceOfPrinterConnectionData.copyWith(...)` or like so:`instanceOfPrinterConnectionData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PrinterConnectionDataCWProxy get copyWith =>
      _$PrinterConnectionDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrinterConnectionData _$PrinterConnectionDataFromJson(
        Map<String, dynamic> json) =>
    PrinterConnectionData(
      json['ip'] as String,
    );

Map<String, dynamic> _$PrinterConnectionDataToJson(
        PrinterConnectionData instance) =>
    <String, dynamic>{
      'ip': instance.ip,
    };
