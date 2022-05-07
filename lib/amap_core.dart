library amap_core;

export 'src/web/amap.dart' if (dart.library.js) 'src/web/amap_web.dart';
export 'src/web/loader.dart' if (dart.library.js) 'src/web/loader_web.dart';

part 'src/amap_poi/index.dart';
part 'src/lat_lng/index.dart';
part 'src/amap_tips/index.dart';
part 'src/location/index.dart';
part 'src/amap_geocode/index.dart';
part 'src/location_poi/index.dart';
