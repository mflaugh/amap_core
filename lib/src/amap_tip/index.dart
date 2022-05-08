part of amap_core;

class AMapTip {
  /// POI全局唯一ID
  final String? id;

  /// 名称
  final String? name;

  /// 区域编码
  final String? adCode;

  /// 地址
  final String? address;

  /// 类型编码
  final String? typeCode;

  final LatLng? latLng;

  /// 所属区域
  final String? district;

  AMapTip({
    this.id,
    this.name,
    this.adCode,
    this.address,
    this.typeCode,
    this.latLng,
    this.district,
  });

  factory AMapTip.fromJson(Map<dynamic, dynamic> json) => _$AMapTipFromJson(json);

  Map<String, dynamic> toJson() => _$AMapTipToJson(this);
}

AMapTip _$AMapTipFromJson(Map<dynamic, dynamic> json) {
  return AMapTip(
    id: json['id'] as String?,
    name: json['name'] as String?,
    adCode: json['adCode'] as String?,
    address: json['address'] as String?,
    typeCode: json['typeCode'] as String?,
    latLng: json['latLng'] == null ? null : LatLng.fromJson(Map<String, dynamic>.from(json['latLng'])),
    district: json['district'] as String?,
  );
}

Map<String, dynamic> _$AMapTipToJson(AMapTip instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adCode': instance.adCode,
      'address': instance.address,
      'typeCode': instance.typeCode,
      'latLng': instance.latLng?.toJson(),
      'district': instance.district,
    };
