import React from 'react';
import {
  Button,
  NativeModules,
  SafeAreaView,
  StatusBar,
  View,
} from 'react-native';

const App = () => {
  const {NativeAppModule} = NativeModules;

  return (
    <SafeAreaView>
      <StatusBar />
      <View>
        <Button
          title="Simple Function"
          onPress={() => NativeAppModule.simpleFunction()}
        />

        <Button
          title="Function with parameters"
          onPress={() => NativeAppModule.functionWithParam('This is parameter')}
        />

        <Button
          title="Function with callback"
          onPress={async () => {
            const callbackResult = await NativeAppModule.functionWithCallback();
            console.log('===>' + callbackResult);
          }}
        />

        <Button
          title="Function with callback and params"
          onPress={async () => {
            const callbackResult =
              await NativeAppModule.functionWithCallbackParams(
                'Param 1',
                'Param 1',
              );
            console.log('===>' + callbackResult);
          }}
        />

        <Button
          title="Validate Function"
          onPress={async () => {
            const callbackResult = await NativeAppModule.validateBasicFields(
              'John',
              'john@mail.com',
            );
            console.log('===>' + callbackResult);
          }}
        />
      </View>
    </SafeAreaView>
  );
};

export default App;
