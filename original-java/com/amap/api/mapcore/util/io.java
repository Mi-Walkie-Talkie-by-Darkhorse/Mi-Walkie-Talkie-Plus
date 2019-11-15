package com.amap.api.mapcore.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;

/* compiled from: MapLocationManagerActionHandler */
public final class io extends Handler {
    in a = null;

    public io() {
    }

    public io(Looper looper, in inVar) {
        super(looper);
        this.a = inVar;
    }

    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1001:
                try {
                    this.a.a((Inner_3dMap_locationOption) message.obj);
                    return;
                } catch (Throwable th) {
                    jd.a(th, "ClientActionHandler", "ACTION_SET_OPTION");
                    return;
                }
            case 1002:
                try {
                    this.a.a((Inner_3dMap_locationListener) message.obj);
                    return;
                } catch (Throwable th2) {
                    jd.a(th2, "ClientActionHandler", "ACTION_SET_LISTENER");
                    return;
                }
            case 1003:
                try {
                    this.a.b((Inner_3dMap_locationListener) message.obj);
                    return;
                } catch (Throwable th3) {
                    jd.a(th3, "ClientActionHandler", "ACTION_REMOVE_LISTENER");
                    return;
                }
            case 1004:
                try {
                    this.a.a();
                    return;
                } catch (Throwable th4) {
                    jd.a(th4, "ClientActionHandler", "ACTION_START_LOCATION");
                    return;
                }
            case 1005:
                try {
                    this.a.b();
                    return;
                } catch (Throwable th5) {
                    jd.a(th5, "ClientActionHandler", "ACTION_GET_LOCATION");
                    return;
                }
            case 1006:
                try {
                    this.a.c();
                    return;
                } catch (Throwable th6) {
                    jd.a(th6, "ClientActionHandler", "ACTION_STOP_LOCATION");
                    return;
                }
            case 1007:
                try {
                    this.a.d();
                    return;
                } catch (Throwable th7) {
                    jd.a(th7, "ClientActionHandler", "ACTION_DESTROY");
                    return;
                }
            default:
                return;
        }
    }
}
