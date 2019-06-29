//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"
#import <flutter_tts/FlutterTtsPlugin.h>
#import <permission/PermissionPlugin.h>
#import <speech_recognition/SpeechRecognitionPlugin.h>

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterTtsPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterTtsPlugin"]];
  [PermissionPlugin registerWithRegistrar:[registry registrarForPlugin:@"PermissionPlugin"]];
  [SpeechRecognitionPlugin registerWithRegistrar:[registry registrarForPlugin:@"SpeechRecognitionPlugin"]];
}

@end
