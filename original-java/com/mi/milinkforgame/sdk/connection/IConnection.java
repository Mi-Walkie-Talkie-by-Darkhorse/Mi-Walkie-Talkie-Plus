package com.mi.milinkforgame.sdk.connection;

import com.mi.milinkforgame.sdk.session.MsgProcessor;

public interface IConnection {
    boolean connect(String str, int i, String str2, int i2, int i3, int i4);

    boolean disconnect();

    int getConnectionType();

    String getServerIP();

    int getServerPort();

    boolean isRunning();

    boolean isSendDone(int i);

    boolean postMessage(int i, Object obj, int i2, MsgProcessor msgProcessor);

    void removeAllSendData();

    void removeSendData(int i);

    boolean sendData(byte[] bArr, int i, int i2);

    void setCallback(IConnectionCallback iConnectionCallback);

    boolean start();

    boolean stop();

    void wakeUp();
}
