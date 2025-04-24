import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'stackexchange_plugin_platform_interface.dart';

/// An implementation of [StackexchangePluginPlatform] that uses method channels.
class MethodChannelStackexchangePlugin extends StackexchangePluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('stackexchange_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
