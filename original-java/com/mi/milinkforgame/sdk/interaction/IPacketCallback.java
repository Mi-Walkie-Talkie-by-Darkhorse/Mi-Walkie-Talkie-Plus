package com.mi.milinkforgame.sdk.interaction;

import com.mi.milinkforgame.sdk.aidl.PacketData;

public interface IPacketCallback {
    boolean onReceive(PacketData packetData);
}
