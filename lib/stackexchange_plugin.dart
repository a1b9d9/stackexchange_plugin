// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/to/pubspec-plugin-platforms.

import 'package:flutter/services.dart';

class StackexchangePlugin {
  static const MethodChannel _channel = MethodChannel('stackexchange_plugin');

  static Future<String> fetchQuestions() async {
    try {
      final String result = await _channel.invokeMethod('fetchQuestions');
      return result;
    } on PlatformException catch (e) {
      throw 'Failed to fetch questions: ${e.message}';
    }
  }
}
