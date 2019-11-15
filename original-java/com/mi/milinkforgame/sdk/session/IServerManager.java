package com.mi.milinkforgame.sdk.session;

public interface IServerManager {
    ServerProfile[] getNext(ServerProfile serverProfile, int i);

    boolean isNeedReset();

    ServerProfile[] reset(boolean z);

    boolean save(ServerProfile serverProfile);
}
