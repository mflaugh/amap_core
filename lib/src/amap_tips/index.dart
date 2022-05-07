part of amap_core;

class AmapTips {
  /// 区域编码
  final String? adcode;

  /// 地址
  final String? address;

  /// 所属区域
  final String? district;

  /// 名称
  final String? name;

  /// 类型编码
  final String? typecode;

  /// POI全局唯一ID
  final String? uid;

  final LatLng? latLng;

  AmapTips({
    this.adcode,
    this.address,
    this.district,
    this.name,
    this.typecode,
    this.uid,
    this.latLng,
  });

  factory AmapTips.fromJson(Map<dynamic, dynamic> json) => _$AmapTipsFromJson(json);

  Map<String, dynamic> toJson() => _$AmapTipsToJson(this);
}

AmapTips _$AmapTipsFromJson(Map<dynamic, dynamic> json) {
  return AmapTips(
    adcode: json['adcode'] as String,
    address: json['address'] as String,
    district: json['district'] as String,
    name: json['name'] as String,
    typecode: json['typecode'] as String,
    uid: json['uid'] as String,
    latLng: json['latLng'] == null ? null : LatLng.fromJson(json['latLng'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AmapTipsToJson(AmapTips instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'address': instance.address,
      'district': instance.district,
      'adcode': instance.adcode,
      'typecode': instance.typecode,
      'latLng': instance.latLng,
    };
