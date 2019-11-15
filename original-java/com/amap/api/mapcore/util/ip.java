package com.amap.api.mapcore.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore.Inner_3dMap_location;

/* compiled from: MapLocationManagerResultHandler */
public final class ip extends Handler {
    in a = null;

    public ip(Looper looper, in inVar) {
        super(looper);
        this.a = inVar;
    }

    public ip(in inVar) {
        this.a = inVar;
    }

    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                try {
                    if (this.a != null) {
                        this.a.a((Inner_3dMap_location) message.obj);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    jd.a(th, "ClientResultHandler", "RESULT_LOCATION_FINISH");
                    return;
                }
            default:
                return;
        }
    }
}
