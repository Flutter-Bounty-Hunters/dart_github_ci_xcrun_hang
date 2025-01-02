import 'dart:io';

import 'package:test/test.dart';

void main() {
  group("Deep link launches app > iOS >", () {
    test("xcrun sanity check", () async {
      print("Running xcrun Process sanity check.");

      // print("Env variables:");
      // print(Process.runSync('env', []).stdout);

      await _runCommand(
        "Listing devices...",
        "xcrun simctl list devices",
      );

      // await _runCommand(
      //   "Listing runtimes...",
      //   "xcrun simctl list runtimes",
      // );
      //
      // await _runCommand(
      //   "Listing booted devices...",
      //   "xcrun simctl list devices booted",
      // );
      //
      // await _runCommand(
      //   "Ensuring simulator is booted...",
      //   "xcrun simctl bootstatus booted",
      // );
      //
      // await _runCommand(
      //   "Checking simulator appearance...",
      //   "xcrun simctl ui booted appearance",
      // );

      print("DONE RUNNING XCRUN CALLS");
    });
  });
}

Future<void> _runCommand(String message, String command) async {
  print(message);
  final result = await Process.run("sh", [
    "-c",
    command,
  ]);
  print("Result: ${result.exitCode} - stdout: ${result.stdout}, stderr: ${result.stderr}");
  print("\n\n");
}
