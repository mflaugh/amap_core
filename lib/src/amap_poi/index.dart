part of amap_core;

class AMapPoi {
  /// POI全局唯一ID
  final String? poiId;

  /// 返回POI的名称。
  final String? title;

  /// 兴趣点类型
  final String? typeDes;

  /// 类型编码
  final String? typeCode;

  /// 地址
  final String? address;

  /// 电话
  final String? tel;

  /// 距中心点的距离，单位米。在周边搜索时有效
  final int? distance;

  /// 停车场类型，地上、地下、路边
  final String? parkingType;

  /// 商铺id
  final String? shopID;

  /// 邮编
  final String? postcode;

  /// 网址
  final String? website;

  /// 电子邮件
  final String? email;

  /// 省
  final String? province;

  /// 省编码
  final String? provinceCode;

  /// 城市名称
  final String? city;

  /// 城市编码
  final String? cityCode;

  /// 区域编码
  final String? adCode;

  /// 区域名称
  final String? direction;

  /// 是否有室内地图
  final bool? isIndoorMap;

  /// 所在商圈
  final String? businessArea;

  final LatLng? latLng;

  /// 区
  final String? district;

  AMapPoi({
    this.poiId,
    this.typeDes,
    this.typeCode,
    this.address,
    this.tel,
    this.distance,
    this.parkingType,
    this.shopID,
    this.postcode,
    this.website,
    this.email,
    this.province,
    this.provinceCode,
    this.city,
    this.cityCode,
    this.adCode,
    this.direction,
    this.isIndoorMap,
    this.businessArea,
    this.latLng,
    this.title,
    this.district,
  });

  factory AMapPoi.fromJson(Map<dynamic, dynamic> json) => _$AMapPoiFromJson(json);

  Map<String, dynamic> toJson() => _$AMapPoiToJson(this);
}

AMapPoi _$AMapPoiFromJson(Map<dynamic, dynamic> json) {
  return AMapPoi(
    poiId: json['poiId'] as String?,
    typeDes: json['typeDes'] as String?,
    typeCode: json['typeCode'] as String?,
    address: json['address'] as String?,
    tel: json['tel'] as String?,
    distance: json['distance'] as int?,
    parkingType: json['parkingType'] as String?,
    shopID: json['shopID'] as String?,
    postcode: json['postcode'] as String?,
    website: json['website'] as String?,
    email: json['email'] as String?,
    province: json['province'] as String?,
    provinceCode: json['provinceCode'] as String?,
    city: json['city'] as String?,
    cityCode: json['cityCode'] as String?,
    adCode: json['adCode'] as String?,
    direction: json['direction'] as String?,
    isIndoorMap: json['isIndoorMap'] as bool?,
    businessArea: json['businessArea'] as String?,
    latLng: json['latLng'] == null ? null : LatLng.fromJson(Map<String, dynamic>.from(json['latLng'])),
    title: json['title'] as String?,
    district: json['district'] as String?,
  );
}

Map<String, dynamic> _$AMapPoiToJson(AMapPoi instance) => <String, dynamic>{
      'poiId': instance.poiId,
      'typeDes': instance.typeDes,
      'typeCode': instance.typeCode,
      'address': instance.address,
      'tel': instance.tel,
      'distance': instance.distance,
      'parkingType': instance.parkingType,
      'shopID': instance.shopID,
      'postcode': instance.postcode,
      'website': instance.website,
      'email': instance.email,
      'province': instance.province,
      'provinceCode': instance.provinceCode,
      'city': instance.city,
      'cityCode': instance.cityCode,
      'adCode': instance.adCode,
      'direction': instance.direction,
      'isIndoorMap': instance.isIndoorMap,
      'businessArea': instance.businessArea,
      'latLng': instance.latLng,
      'title': instance.title,
      'district': instance.district,
    };
