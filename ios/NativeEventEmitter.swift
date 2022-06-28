//
//  NativeEventEmitter.swift
//  NativeModules
//
//  Created by Dhruv Parmar on 12/06/22.
//

import Foundation
import React

class NativeEventEmitter {
  public static var sharedInstance = NativeEventEmitter()

  private static var eventEmitter: ReactNativeEventEmitter!

  private init() {}
  
  func registerEventEmitter(eventEmitter: ReactNativeEventEmitter) {
    NativeEventEmitter.eventEmitter = eventEmitter
  }

  func dispatch(name: String, body: Any?) {
    NativeEventEmitter.eventEmitter.sendEvent(withName: name, body: body)
  }

  /// All Events which must be supported by React Native.
  lazy var allEvents: [String] = {
      var allEventNames: [String] = []
      allEventNames.append("eventName") //any event name that you want to use to get the emitted data in react native
      return allEventNames
  }()
}
