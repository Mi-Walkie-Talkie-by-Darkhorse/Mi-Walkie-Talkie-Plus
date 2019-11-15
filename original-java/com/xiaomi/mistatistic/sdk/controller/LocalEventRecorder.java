package com.xiaomi.mistatistic.sdk.controller;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import com.xiaomi.mistatistic.sdk.data.AbstractEvent;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import com.xiaomi.mistatistic.sdk.data.g;
import com.xiaomi.mistatistic.sdk.data.h;
import com.xiaomi.xmsf.push.service.b;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

public abstract class LocalEventRecorder {
    /* access modifiers changed from: private */
    public static volatile b a = null;
    /* access modifiers changed from: private */
    public static volatile boolean b = false;
    /* access modifiers changed from: private */
    public static List<AbstractEvent> c = new ArrayList();
    /* access modifiers changed from: private */
    public static Object d = new Object();
    /* access modifiers changed from: private */
    public static ServiceConnection e = new ServiceConnection() {
        public void onServiceDisconnected(ComponentName componentName) {
            h.a("LER", "IStatService has unexpectedly disconnected");
            LocalEventRecorder.a = null;
            LocalEventRecorder.b = false;
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                h.a("LER", "IStatService connected");
                LocalEventRecorder.a = com.xiaomi.xmsf.push.service.b.a.a(iBinder);
                LocalEventRecorder.b = true;
                if (LocalEventRecorder.a != null) {
                    synchronized (LocalEventRecorder.d) {
                        if (LocalEventRecorder.c != null && !LocalEventRecorder.c.isEmpty()) {
                            for (AbstractEvent valueToJSon : LocalEventRecorder.c) {
                                LocalEventRecorder.a.a(valueToJSon.valueToJSon().toString());
                                h.a("LER", "insert a reserved event into IStatService");
                            }
                        }
                        h.a("LER", "pending eventList size: " + LocalEventRecorder.c.size());
                        LocalEventRecorder.c.clear();
                    }
                }
            } catch (RemoteException e) {
                h.a("", (Throwable) e);
            } catch (JSONException e2) {
                h.a("", (Throwable) e2);
                synchronized (LocalEventRecorder.d) {
                    LocalEventRecorder.c.clear();
                }
            } catch (Throwable th) {
                h.a("", th);
            }
        }
    };

    private static class a implements com.xiaomi.mistatistic.sdk.controller.d.a {
        private AbstractEvent a;

        public a(AbstractEvent abstractEvent) {
            this.a = abstractEvent;
        }

        public void a() {
            StatEventPojo pojo = this.a.toPojo();
            f fVar = new f();
            if ((this.a instanceof g) || (this.a instanceof h)) {
                String str = pojo.key;
                String str2 = pojo.category;
                StatEventPojo a2 = fVar.a(str2, str);
                if (a2 == null || !pojo.type.equals(a2.type)) {
                    fVar.a(pojo);
                    h.b("LocalEventRecordingJob insert event with new key");
                    return;
                }
                fVar.a(str, str2, pojo.value);
                h.b("LocalEventRecordingJob update event by key and category");
                return;
            }
            fVar.a(pojo);
            h.b("LocalEventRecordingJob insert new event");
        }
    }

    public static void insertEvent(final AbstractEvent abstractEvent) {
        Context a2 = c.a();
        if (a2 == null) {
            h.a("LER", "mistats is not initialized properly.");
        } else if (BuildSetting.isCTABuild()) {
            h.a("LER", "disable local event upload for CTA build");
        } else if (CustomSettings.isUseSystemStatService()) {
            h.b("LER", "insert event use systemstatsvc");
            d.a().a((com.xiaomi.mistatistic.sdk.controller.d.a) new com.xiaomi.mistatistic.sdk.controller.d.a() {
                public void a() {
                    LocalEventRecorder.b(abstractEvent);
                }
            });
        } else if (!BuildSetting.isDisabled(a2) || a(abstractEvent.getCategory())) {
            d.a().a((com.xiaomi.mistatistic.sdk.controller.d.a) new a(abstractEvent));
            p.a().c();
        } else {
            h.a("LER", "disabled local event upload, event category:" + abstractEvent.getCategory());
        }
    }

    private static boolean a(String str) {
        return "mistat_basic".equals(str) || "mistat_session".equals(str);
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void b(com.xiaomi.mistatistic.sdk.data.AbstractEvent r3) {
        /*
            android.content.Context r0 = com.xiaomi.mistatistic.sdk.controller.c.a()     // Catch:{ Throwable -> 0x0037 }
            a(r0)     // Catch:{ Throwable -> 0x0037 }
            com.xiaomi.xmsf.push.service.b r1 = a     // Catch:{ Throwable -> 0x0037 }
            if (r1 == 0) goto L_0x0023
            com.xiaomi.xmsf.push.service.b r1 = a     // Catch:{ Throwable -> 0x0037 }
            org.json.JSONObject r2 = r3.valueToJSon()     // Catch:{ Throwable -> 0x0037 }
            java.lang.String r2 = r2.toString()     // Catch:{ Throwable -> 0x0037 }
            r1.a(r2)     // Catch:{ Throwable -> 0x0037 }
            java.lang.String r1 = "LER"
            java.lang.String r2 = "sysservice insert a event"
            com.xiaomi.mistatistic.sdk.controller.h.b(r1, r2)     // Catch:{ Throwable -> 0x0037 }
        L_0x001f:
            b(r0)     // Catch:{ Throwable -> 0x0037 }
        L_0x0022:
            return
        L_0x0023:
            java.lang.String r1 = "LER"
            java.lang.String r2 = "StatSystemService is null, insert event into eventList"
            com.xiaomi.mistatistic.sdk.controller.h.a(r1, r2)     // Catch:{ Throwable -> 0x0037 }
            java.lang.Object r1 = d     // Catch:{ Throwable -> 0x0037 }
            monitor-enter(r1)     // Catch:{ Throwable -> 0x0037 }
            java.util.List<com.xiaomi.mistatistic.sdk.data.AbstractEvent> r2 = c     // Catch:{ all -> 0x0034 }
            r2.add(r3)     // Catch:{ all -> 0x0034 }
            monitor-exit(r1)     // Catch:{ all -> 0x0034 }
            goto L_0x001f
        L_0x0034:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0034 }
            throw r0     // Catch:{ Throwable -> 0x0037 }
        L_0x0037:
            r0 = move-exception
            java.lang.String r1 = "LER"
            java.lang.String r2 = "insertEventUseSystemService exception: "
            com.xiaomi.mistatistic.sdk.controller.h.a(r1, r2, r0)
            goto L_0x0022
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.b(com.xiaomi.mistatistic.sdk.data.AbstractEvent):void");
    }

    private static void a(Context context) throws InterruptedException {
        if (!b) {
            Intent intent = new Intent();
            intent.setClassName("com.xiaomi.xmsf", "com.xiaomi.xmsf.push.service.StatService");
            context.bindService(intent, e, 1);
            b = true;
            h.a("LER", "bind StatSystemService success");
            return;
        }
        h.a("LER", "StatSystemService is already binded");
    }

    private static void b(final Context context) {
        d.a().a((com.xiaomi.mistatistic.sdk.controller.d.a) new com.xiaomi.mistatistic.sdk.controller.d.a() {
            public void a() {
                try {
                    if (LocalEventRecorder.b) {
                        context.unbindService(LocalEventRecorder.e);
                        LocalEventRecorder.b = false;
                        LocalEventRecorder.a = null;
                        h.a("LER", "unbind StatSystemService success");
                        return;
                    }
                    h.a("LER", "StatSystemService is already disconnected");
                } catch (Exception e) {
                    h.a("", (Throwable) e);
                }
            }
        }, (long) FileTracerConfig.DEF_FLUSH_INTERVAL);
    }
}
