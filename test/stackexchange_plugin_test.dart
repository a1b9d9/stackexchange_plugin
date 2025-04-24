import 'package:flutter_test/flutter_test.dart';
import 'package:stackexchange_plugin/stackexchange_plugin.dart';
import 'package:stackexchange_plugin/stackexchange_plugin_platform_interface.dart';
import 'package:stackexchange_plugin/stackexchange_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStackexchangePluginPlatform
    with MockPlatformInterfaceMixin
    implements StackexchangePluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final StackexchangePluginPlatform initialPlatform = StackexchangePluginPlatform.instance;

  test('$MethodChannelStackexchangePlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStackexchangePlugin>());
  });

  test('getPlatformVersion', () async {
    StackexchangePlugin stackexchangePlugin = StackexchangePlugin();
    MockStackexchangePluginPlatform fakePlatform = MockStackexchangePluginPlatform();
    StackexchangePluginPlatform.instance = fakePlatform;

    expect(await stackexchangePlugin.getPlatformVersion(), '42');
  });
}
