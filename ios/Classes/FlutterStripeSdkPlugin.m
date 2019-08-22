#import "FlutterStripeSdkPlugin.h"
#import <flutter_stripe_sdk/flutter_stripe_sdk-Swift.h>

@implementation FlutterStripeSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterStripeSdkPlugin registerWithRegistrar:registrar];
}
@end
