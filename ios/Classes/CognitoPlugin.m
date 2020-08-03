#import "CognitoPlugin.h"
#if __has_include(<cognito/cognito-Swift.h>)
#import <cognito/cognito-Swift.h>
#import "AWSCognitoIdentityProviderASF.h"
#import "AWSCognitoIdentityASF.h"
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "cognito-Swift.h"
#endif

@implementation CognitoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCognitoPlugin registerWithRegistrar:registrar];
}
@end
