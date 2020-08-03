import Foundation
import AWSCognitoIdentityProviderASF

class CognitoAvenue: NSObject {
    public static func getUserContextData(username: String, userPoolId: String, clientId: String) -> String? {
        let contextData = AWSCognitoIdentityProviderASF.userContextData(userPoolId, username: username, deviceId: nil, userPoolClientId: clientId)
        return contextData
    }
}
