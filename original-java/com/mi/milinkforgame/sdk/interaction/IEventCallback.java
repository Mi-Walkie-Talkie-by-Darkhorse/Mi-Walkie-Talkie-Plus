package com.mi.milinkforgame.sdk.interaction;

public interface IEventCallback {
    void onEventGetServiceToken();

    void onEventInvalidPacket();

    void onEventKickedByServer(int i, long j, String str);

    void onEventServiceTokenExpired();

    void onEventShouldCheckUpdate();
}
