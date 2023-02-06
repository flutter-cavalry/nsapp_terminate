import 'nsapp_terminate_platform_interface.dart';

class NsappTerminate {
  Future<void> terminate() {
    return NsappTerminatePlatform.instance.terminate();
  }
}
