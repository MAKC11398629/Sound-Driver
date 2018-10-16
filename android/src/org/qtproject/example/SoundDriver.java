package org.qtproject.example;

import io.chirp.connect.ChirpConnect;
import io.chirp.connect.interfaces.ConnectEventListener;
import io.chirp.connect.interfaces.ConnectSetConfigListener;
import io.chirp.connect.models.ChirpError;
import io.chirp.connect.models.ConnectState;

import android.content.Context;


public class SoundDriver extends org.qtproject.qt5.android.bindings.QtActivity{

    String KEY = "cbfb7f5bEACdB723c7cdF8bb6";
            String SECRET = "E8E8832A55fc9feA5C1ee610f06EC57CE8f7bc5BdDc93D8cD3";
            String CONFIG = "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";


    private String m_error;
    private SoundDriver m_instance;

    ChirpConnect chirpConnect;
    ConnectEventListener connectEventListener;

    public void SoundDriver(){
        m_instance = this;
    }

    public void init()
    {
        chirpConnect = new ChirpConnect(this, KEY, SECRET);

        //[1]!
        chirpConnect.setConfigFromNetwork(new ConnectSetConfigListener() {

          @Override
          public void onSuccess() {
//                Log.i("setConfig", "Config succesfully set.");
          }

          @Override
          public void onError(ChirpError setConfigError) {
//            Log.e("setConfigError", setConfigError.getMessage());
          }
        });
        //[1]!

        //[2]!
        connectEventListener = (new ConnectEventListener() {

          @Override
          public void onSending(byte[] payload, byte channel) {
            jDebug( "This is called when a payload is being sent on channel: ");
          }

          @Override
          public void onSent(byte[] payload, byte channel) {
            jDebug("This is called when a payload has been sent on channel: ");
          }

          @Override
          public void onReceiving(byte channel) {
            jDebug("This is called when the SDK is expecting a payload to be received on channel: ");
          }

          @Override
          public void onReceived(byte[] payload, byte channel) {
           jDebug("This is called when a payload has been received on channel: " );
          }

          @Override
          public void onStateChanged(byte oldState, byte newState) {
            jDebug("This is called when the SDK state has changed  -> ");
          }

          @Override
          public void onSystemVolumeChanged(int old, int current) {
            jDebug("This is called when the Android system volume has changed  -> " );
          }

        });
    //[2]!
    }

    // func example which send random data
    public void sendRandData()
    {
        long maxLength = chirpConnect.getMaxPayloadLength();
        byte[] payload = chirpConnect.randomPayload(maxLength);
        chirpConnect.send(payload);
    }


    public void jDebug(String err_str){
        m_error = err_str;
    }

}
