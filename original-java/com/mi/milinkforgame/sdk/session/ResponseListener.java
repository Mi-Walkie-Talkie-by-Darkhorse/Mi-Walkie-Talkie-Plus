package com.mi.milinkforgame.sdk.session;

import com.mi.milinkforgame.sdk.aidl.PacketData;

public interface ResponseListener {
    void onDataSendFailed(int i, String str);

    void onDataSendSuccess(int i, PacketData packetData);
}
