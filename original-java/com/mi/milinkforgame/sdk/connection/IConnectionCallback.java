package com.mi.milinkforgame.sdk.connection;

public interface IConnectionCallback {
    boolean onConnect(boolean z, int i);

    boolean onDisconnect();

    boolean onError(int i);

    boolean onRecv(byte[] bArr);

    boolean onSendBegin(int i);

    boolean onSendEnd(int i);

    boolean onStart();

    boolean onTimeOut(int i, int i2);
}
