//
//  NativeAppModule.m
//  NativeModules
//
//  Created by Dhruv Parmar on 12/06/22.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(NativeAppModule, NSObject)

RCT_EXTERN_METHOD(simpleFunction)

RCT_EXTERN_METHOD(functionWithParam: (NSString)param)

RCT_EXTERN_METHOD(functionWithCallback: (RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(functionWithCallbackParams: (NSString)param1 param2:(NSString)param2 resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(validateBasicFields: (NSString)param1 param2:(NSString)param2 resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

@end

//Add this only if you have added function for emitting events
@interface RCT_EXTERN_MODULE(ReactNativeEventEmitter, RCTEventEmitter)
RCT_EXTERN_METHOD(supportedEvents)
@end
