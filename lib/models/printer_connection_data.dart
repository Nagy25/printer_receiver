import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'printer_connection_data.g.dart';

@JsonSerializable()
@CopyWith()
class PrinterConnectionData {
  final String ip;

  const PrinterConnectionData(this.ip);

  factory PrinterConnectionData.fromJson(Map<String, dynamic> json) =>
      _$PrinterConnectionDataFromJson(json);

  Map<String, dynamic> toJson() => _$PrinterConnectionDataToJson(this);
}
