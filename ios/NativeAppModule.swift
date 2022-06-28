//
//  NativeAppModule.swift
//  NativeModules
//
//  Created by Dhruv Parmar on 12/06/22.
//

import Foundation

@objc(NativeAppModule)
class NativeAppModule : NSObject {
  
  //When you want to execute swift code then call this function
  @objc func simpleFunction(){
    //Add your swift code here
    NSLog("%@", "Calling simple function");
  }
  
  //When you want to execute swift code with parameters then call this function
  @objc func functionWithParam(_ param:String){
    //Execure your swift code by passing parameters from react native code
  }
  
  //When you want to execute swift code and wait for some result then call this function
  @objc func functionWithCallback(_ resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock){
    //Execute swift code and return result below to react native
    resolve("Any value that needs to be return of any data type");
  }
  
  //When you want to execute swift code with parameters and wait for some result then call this function
  @objc func functionWithCallbackParams(_ param1:String, param2:String, resolver resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock){
    print("Calling functionWithCallback");
    do {
        if (String(param2) == param1) {
            resolve("true");
        } else {
            resolve("false");
        }
    }catch let error {
      //If you want to throw an error
      reject("errorCode", error.localizedDescription, error);

      //If you want to return custom message
      resolve("Custom error message");
    };
  }
  
  //When you want to execute swift code with parameters and wait for some result then call this function
  @objc func validateBasicFields(_ param1:String, param2:String, resolver resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock){
    print("Calling functionWithCallback");
    do {
      if (!param1.isEmpty && !param2.isEmpty) {
            resolve("My name is \(param1) and email id is \(param2)");
        } else {
            resolve("Enter Fields (name & email)");
        }
    }catch let error {
      //If you want to throw an error
      reject("errorCode", error.localizedDescription, error);

      //If you want to return custom message
      resolve("Custom error message");
    };
  }
  
  //add this to avoid warning in react native
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
