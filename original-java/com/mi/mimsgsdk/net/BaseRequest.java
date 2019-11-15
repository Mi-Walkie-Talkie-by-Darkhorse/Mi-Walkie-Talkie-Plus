package com.mi.mimsgsdk.net;

import android.support.annotation.NonNull;
import com.google.protobuf.GeneratedMessage;
import com.mi.milinkforgame.sdk.aidl.PacketData;

public abstract class BaseRequest {
    protected GeneratedMessage mRequest;
    private GeneratedMessage mResponse;
    private int mTimeout = 10000;

    /* access modifiers changed from: protected */
    @NonNull
    public abstract String getCmd();

    /* access modifiers changed from: protected */
    public void setTimeout(int i) {
        if (i > 0) {
            this.mTimeout = i;
        }
    }

    private void checkBeforeSend() {
        if (this.mRequest == null) {
            throw new IllegalStateException("mRequest is null, do you forget to assign it in constructor?");
        }
    }

    public PacketData getPacketData() {
        checkBeforeSend();
        PacketData packetData = new PacketData();
        packetData.setCommand(getCmd());
        packetData.setData(this.mRequest.toByteArray());
        return packetData;
    }

    public int getTimeout() {
        return this.mTimeout;
    }
}
