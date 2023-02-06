import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nsapp_terminate_platform_interface.dart';

/// An implementation of [NsappTerminatePlatform] that uses method channels.
class MethodChannelNsappTerminate extends NsappTerminatePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nsapp_terminate');

  @override
  Future<void> terminate() async {
    await methodChannel.invokeMethod<void>('terminate');
  }
}
