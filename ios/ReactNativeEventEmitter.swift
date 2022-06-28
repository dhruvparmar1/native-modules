//
//  ReactNativeEventEmitter.swift
//  NativeModules
//
//  Created by Dhruv Parmar on 12/06/22.
//

import Foundation
import React

@objc(ReactNativeEventEmitter)
open class ReactNativeEventEmitter: RCTEventEmitter {
    
  override init() {
      super.init()
      NativeEventEmitter.sharedInstance.registerEventEmitter(eventEmitter: self)
  }
  
  @objc open override func supportedEvents() -> [String] {
      return NativeEventEmitter.sharedInstance.allEvents
  }

}
