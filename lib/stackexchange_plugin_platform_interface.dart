import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'stackexchange_plugin_method_channel.dart';

abstract class StackexchangePluginPlatform extends PlatformInterface {
  /// Constructs a StackexchangePluginPlatform.
  StackexchangePluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static StackexchangePluginPlatform _instance = MethodChannelStackexchangePlugin();

  /// The default instance of [StackexchangePluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelStackexchangePlugin].
  static StackexchangePluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StackexchangePluginPlatform] when
  /// they register themselves.
  static set instance(StackexchangePluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
