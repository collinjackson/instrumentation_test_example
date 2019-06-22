import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/foundation.dart';
import '../test/widget_test.dart' as widget_test;

/// A variant of [LiveTestWidgetsFlutterBinding] that reports tests results
/// on a channel to adapt them to native instrumentation test format.
class InstrumentationTestFlutterBinding extends LiveTestWidgetsFlutterBinding {
  @override
  Future<void> runTest(Future<void> testBody(), VoidCallback invariantTester, { String description = '', Duration timeout }) async {
    // test started
    reportTestException = (FlutterErrorDetails details, String testDescription) {
      // test failed
    };
    await super.runTest(testBody, invariantTester, description: description, timeout: timeout);
    // test is complete
  }
}

void main() {
  InstrumentationTestFlutterBinding();
  widget_test.main();
}
