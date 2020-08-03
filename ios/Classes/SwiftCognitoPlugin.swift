import Flutter
import UIKit

public class SwiftCognitoPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "cognito", binaryMessenger: registrar.messenger())
        let instance = SwiftCognitoPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
            case "getUserContextData":
                let args = call.arguments as! Dictionary<String, Any>
                let username = args["username"] as! String
                let userPoolId = args["userPoolId"] as! String
                let clientId = args["clientId"] as! String
                
                let contextData = CognitoAvenue.getUserContextData(username: username, userPoolId: userPoolId, clientId: clientId)
                result(contextData)
        default:
            result("iOS " + UIDevice.current.systemVersion)
        }
    }
}
