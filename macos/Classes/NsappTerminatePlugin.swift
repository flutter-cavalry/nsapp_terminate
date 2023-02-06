import Cocoa
import FlutterMacOS

public class NsappTerminatePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "nsapp_terminate", binaryMessenger: registrar.messenger)
    let instance = NsappTerminatePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "terminate":
      NSApp.terminate(self)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
