import 'package:device_info/device_info.dart';

class device {
  get() {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    deviceInfo.androidInfo.then((AndroidDeviceInfo info) {
      //version
      print("version.baseOS:"+info.version.baseOS);
      print("version.codename:"+info.version.codename);
      print("version.incremental:"+info.version.incremental);
      print("version.previewSdkInt:"+info.version.previewSdkInt.toString());
      print("version.release:"+info.version.release);
      print("version.sdkInt:"+info.version.sdkInt.toString());
      print("version.securityPatch:"+info.version.securityPatch);

      print("board:"+info.board);
      print("bootloader:"+info.bootloader);
      print("brand:"+info.brand);
      print("device:"+info.device);
      print("display:"+info.display);
      print("fingerprint:"+info.fingerprint);
      print("hardware:"+info.hardware);
      print("host:"+info.host);
      print("id:"+info.id);
      print("manufacturer:"+info.manufacturer);
      print("model:"+info.model);
      print("product:"+info.product);
      print("tags:"+info.tags);
      print("type:"+info.type);
      print("isPhysicalDevice:"+info.isPhysicalDevice.toString());
      print("androidId:"+info.androidId);

    }).catchError((e) {
      print(e);
    });

    deviceInfo.iosInfo.then((IosDeviceInfo info) {
      print("name:"+info.name);
      print("systemName:"+info.systemName);
      print("systemVersion:"+info.systemVersion);
      print("model:"+info.model);
      print("localizedModel:"+info.localizedModel);
      print("isPhysicalDevice:"+info.isPhysicalDevice.toString());
      print("utsname.sysname:"+info.utsname.sysname);
      print("utsname.nodename:"+info.utsname.nodename);
      print("utsname.release:"+info.utsname.release);
      print("utsname.version:"+info.utsname.version);
      print("utsname.machine:"+info.utsname.machine);

    }).catchError((e) {
      print(e);
    });
  }
}
