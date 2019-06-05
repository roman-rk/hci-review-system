//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"
#import <permission/PermissionPlugin.h>
#import <speech_recognition/SpeechRecognitionPlugin.h>
#import <tts/TtsPlugin.h>

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [PermissionPlugin registerWithRegistrar:[registry registrarForPlugin:@"PermissionPlugin"]];
  [SpeechRecognitionPlugin registerWithRegistrar:[registry registrarForPlugin:@"SpeechRecognitionPlugin"]];
  [TtsPlugin registerWithRegistrar:[registry registrarForPlugin:@"TtsPlugin"]];
}

@end
