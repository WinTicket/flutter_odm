#import "OdmPlugin.h"
#if __has_include(<odm/odm-Swift.h>)
#import <odm/odm-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "odm-Swift.h"
#endif

@implementation OdmPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOdmPlugin registerWithRegistrar:registrar];
}
@end
