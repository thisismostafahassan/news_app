import '../../domain/entities/source.dart';

class SourceModel extends Source {
  SourceModel({
    required super.id,
    required super.name,
  });

  factory SourceModel.fromJson(Map<String, dynamic> json) {
    return SourceModel(
      id: json['id'],
      name: json['name'],
    );
  }
  //
  @override
  String toString() {
    return 'Source(id: $id, name: $name)';
  }
}
