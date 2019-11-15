package com.mi.milinkforgame.sdk.client;

import com.mi.milinkforgame.sdk.data.Const.MiLinkSdkState;

public interface MiLinkObserver {
    void onInternalError(int i);

    @Deprecated
    void onLoginFailed(int i);

    void onMilinkSdkStateUpdate(MiLinkSdkState miLinkSdkState, MiLinkSdkState miLinkSdkState2);
}
