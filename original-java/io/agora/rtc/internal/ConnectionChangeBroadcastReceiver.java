package io.agora.rtc.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;

public class ConnectionChangeBroadcastReceiver extends BroadcastReceiver {
    private WeakReference<RtcEngineImpl> a;

    public ConnectionChangeBroadcastReceiver(RtcEngineImpl rtcEngineImpl) {
        this.a = new WeakReference<>(rtcEngineImpl);
    }

    public void onReceive(Context context, Intent intent) {
        RtcEngineImpl rtcEngineImpl = (RtcEngineImpl) this.a.get();
        if (rtcEngineImpl == null) {
            d.b("rtc engine is not ready");
        } else {
            rtcEngineImpl.h();
        }
    }
}
