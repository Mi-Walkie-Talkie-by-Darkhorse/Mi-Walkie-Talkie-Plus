package com.mi.milinkforgame.sdk.session;

import com.mi.milinkforgame.sdk.data.Const.MiLinkSdkState;

public interface ISessionManagerListener {
    boolean onError(int i, String str, Object obj);

    boolean onOpenSessionResult(long j, int i);

    boolean onSessionStateChanged(MiLinkSdkState miLinkSdkState, MiLinkSdkState miLinkSdkState2);
}
