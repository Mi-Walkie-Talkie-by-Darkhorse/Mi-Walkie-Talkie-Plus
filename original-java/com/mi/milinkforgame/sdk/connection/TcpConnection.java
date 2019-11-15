package com.mi.milinkforgame.sdk.connection;

public class TcpConnection extends ConnectionImpl {
    private boolean mIsLoaded;
    private String mServerIP;
    private int mServerPort;

    public TcpConnection(int i, IConnectionCallback iConnectionCallback) {
        super(i, 1);
        this.mServerIP = null;
        this.mServerPort = 0;
        this.mIsLoaded = false;
        this.mIsLoaded = ConnectionImpl.isLibLoaded();
        setCallback(iConnectionCallback);
    }

    public boolean connect(String str, int i, String str2, int i2, int i3, int i4) {
        this.mServerIP = str;
        this.mServerPort = i;
        if (!this.mIsLoaded) {
            return false;
        }
        return super.connect(this.mServerIP, this.mServerPort, str2, i2, i3, i4);
    }

    public String getServerIP() {
        return this.mServerIP;
    }

    public int getServerPort() {
        return this.mServerPort;
    }

    public boolean start() {
        if (!this.mIsLoaded) {
            return false;
        }
        return super.start();
    }

    public boolean stop() {
        if (!this.mIsLoaded) {
            return false;
        }
        return super.stop();
    }

    public void wakeUp() {
        if (this.mIsLoaded) {
            super.wakeUp();
        }
    }

    public boolean disconnect() {
        if (!this.mIsLoaded) {
            return false;
        }
        return super.disconnect();
    }

    public boolean sendData(byte[] bArr, int i, int i2) {
        if (!this.mIsLoaded) {
            return false;
        }
        return super.sendData(bArr, i, i2);
    }

    public void removeSendData(int i) {
        if (this.mIsLoaded) {
            super.removeSendData(i);
        }
    }

    public void removeAllSendData() {
        if (this.mIsLoaded) {
            super.removeAllSendData();
        }
    }

    public boolean isSendDone(int i) {
        if (!this.mIsLoaded) {
            return false;
        }
        return super.isSendDone(i);
    }

    public boolean isRunning() {
        if (!this.mIsLoaded) {
            return false;
        }
        return super.isRunning();
    }
}
