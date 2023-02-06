import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nsapp_terminate_method_channel.dart';

abstract class NsappTerminatePlatform extends PlatformInterface {
  /// Constructs a NsappTerminatePlatform.
  NsappTerminatePlatform() : super(token: _token);

  static final Object _token = Object();

  static NsappTerminatePlatform _instance = MethodChannelNsappTerminate();

  /// The default instance of [NsappTerminatePlatform] to use.
  ///
  /// Defaults to [MethodChannelNsappTerminate].
  static NsappTerminatePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NsappTerminatePlatform] when
  /// they register themselves.
  static set instance(NsappTerminatePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> terminate() {
    throw UnimplementedError('terminate() has not been implemented.');
  }
}
