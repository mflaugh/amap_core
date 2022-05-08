part of amap_core;

class IndoorData {
  final String? id;

  final int? floor;

  final String? floorName;

  final String? description;

  IndoorData({
    this.id,
    this.floor,
    this.floorName,
    this.description,
  });

  factory IndoorData.fromJson(Map<String, dynamic> json) => _$IndoorDataFromJson(json);

  Map<String, dynamic> toJson() => _$IndoorDataToJson(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndoorData _$IndoorDataFromJson(Map<String, dynamic> json) {
  return IndoorData(
    id: json['id'] as String?,
    floor: json['floor'] as int?,
    floorName: json['floorName'] as String?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$IndoorDataToJson(IndoorData instance) => <String, dynamic>{
      'id': instance.id,
      'floor': instance.floor,
      'floorName': instance.floorName,
      'description': instance.description,
    };
