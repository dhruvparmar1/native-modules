package com.nativemodules;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class NativeAppModule extends ReactContextBaseJavaModule {
    NativeAppModule(ReactApplicationContext context) {
        super(context);
    }

    @Override
    public String getName() {
        return "NativeAppModule";
    }

    //When you want to execute android code then call this function
    @ReactMethod
    public void simpleFunction() {
        //Add your android code here
    }

    //When you want to execute android code with parameters then call this function
    @ReactMethod
    public void functionWithParam(String param) {
        //Execure your android code by passing parameters from react native code
    }

    //When you want to execute android code and wait for some result then call this function
    @ReactMethod
    public void functionWithCallback(Promise promise) {
        //Execute android code and return result below to react native
        promise.resolve("Any value that needs to be return");
    }

    //When you want to execute android code with parameters and wait for some result then call this function
    @ReactMethod
    public void functionWithCallbackParams(String param1, String param2, Promise promise) {
        // do your work and accordingly return values
        try {
            if (param2.toString().equals(param1)) {
                promise.resolve("true");
            } else {
                promise.resolve("false");
            }
        }catch(Exception e){
            //If you want to throw an error
            promise.reject(e);

            //If you want to return custom message
            promise.resolve("Custom error message");
        }
    }

    @ReactMethod
    public void validateBasicFields(String name, String email, Promise promise) {
        // do your work and accordingly return values
        try {
            if (!name.isEmpty() && !email.isEmpty()) {
                promise.resolve("My Name is" + name + ". My email id is " + email);
            } else {
                promise.resolve("Enter name & email");
            }
        }catch(Exception e){
            //If you want to throw an error
            promise.reject(e);

            //If you want to return custom message
            promise.resolve("Custom error message");
        }
    }
}
