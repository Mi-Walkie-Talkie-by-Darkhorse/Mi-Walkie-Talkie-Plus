package com.amap.api.col.sl;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;

/* compiled from: APSManager */
public final class e {
    static boolean g = false;
    /* access modifiers changed from: private */
    public i A = null;
    private boolean B = true;
    private String C = "";
    private String D = "jsonp1";
    String a = null;
    b b = null;
    AMapLocation c = null;
    a d = null;
    Context e = null;
    er f = null;
    HashMap<Messenger, Long> h = new HashMap<>();
    fv i = null;
    long j = 0;
    long k = 0;
    String l = null;
    AMapLocationClientOption m = null;
    AMapLocationClientOption n = new AMapLocationClientOption();
    ServerSocket o = null;
    boolean p = false;
    Socket q = null;
    boolean r = false;
    c s = null;
    private boolean t = false;
    private boolean u = false;
    private long v = 0;
    private long w = 0;
    private ev x = null;
    private long y = 0;
    private int z = 0;

    /* compiled from: APSManager */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        /* JADX WARNING: Removed duplicated region for block: B:23:0x0055 A[SYNTHETIC, Splitter:B:23:0x0055] */
        /* JADX WARNING: Removed duplicated region for block: B:25:0x0060 A[Catch:{ Throwable -> 0x004c }] */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x006b A[Catch:{ Throwable -> 0x004c }] */
        /* JADX WARNING: Removed duplicated region for block: B:30:0x007f A[Catch:{ Throwable -> 0x004c }] */
        /* JADX WARNING: Removed duplicated region for block: B:34:0x0093 A[Catch:{ Throwable -> 0x004c }] */
        /* JADX WARNING: Removed duplicated region for block: B:35:0x009e A[Catch:{ Throwable -> 0x004c }] */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x00a9 A[Catch:{ Throwable -> 0x004c }] */
        /* JADX WARNING: Removed duplicated region for block: B:37:0x00b4 A[Catch:{ Throwable -> 0x004c }] */
        /* JADX WARNING: Removed duplicated region for block: B:38:0x00bf A[Catch:{ Throwable -> 0x004c }] */
        /* JADX WARNING: Removed duplicated region for block: B:39:0x00cb A[Catch:{ Throwable -> 0x004c }] */
        /* JADX WARNING: Removed duplicated region for block: B:40:0x00d2 A[Catch:{ Throwable -> 0x004c }] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void handleMessage(android.os.Message r6) {
            /*
                r5 = this;
                r2 = 0
                android.os.Bundle r1 = r6.getData()     // Catch:{ Throwable -> 0x003a }
                android.os.Messenger r2 = r6.replyTo     // Catch:{ Throwable -> 0x00d9 }
                if (r1 == 0) goto L_0x0043
                boolean r0 = r1.isEmpty()     // Catch:{ Throwable -> 0x00d9 }
                if (r0 != 0) goto L_0x0043
                java.lang.String r0 = "c"
                java.lang.String r0 = r1.getString(r0)     // Catch:{ Throwable -> 0x00d9 }
                com.amap.api.col.sl.e r3 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x00d9 }
                boolean r0 = r3.a(r0)     // Catch:{ Throwable -> 0x00d9 }
                if (r0 != 0) goto L_0x0043
                int r0 = r6.what     // Catch:{ Throwable -> 0x00d9 }
                r3 = 1
                if (r0 != r3) goto L_0x0039
                r0 = 0
                r3 = 2102(0x836, float:2.946E-42)
                com.amap.api.col.sl.fv.a(r0, r3)     // Catch:{ Throwable -> 0x00d9 }
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x00d9 }
                java.lang.String r0 = "invalid handlder scode!!!#1002"
                com.amap.api.col.sl.ev r0 = com.amap.api.col.sl.e.a(10, r0)     // Catch:{ Throwable -> 0x00d9 }
                com.amap.api.col.sl.e r3 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x00d9 }
                java.lang.String r4 = r0.l()     // Catch:{ Throwable -> 0x00d9 }
                r3.a(r2, r0, r4, 0)     // Catch:{ Throwable -> 0x00d9 }
            L_0x0039:
                return
            L_0x003a:
                r0 = move-exception
                r1 = r2
            L_0x003c:
                java.lang.String r3 = "APSServiceCore"
                java.lang.String r4 = "ActionHandler handlerMessage"
                com.amap.api.col.sl.fq.a(r0, r3, r4)     // Catch:{ Throwable -> 0x004c }
            L_0x0043:
                int r0 = r6.what     // Catch:{ Throwable -> 0x004c }
                switch(r0) {
                    case 0: goto L_0x0055;
                    case 1: goto L_0x0060;
                    case 2: goto L_0x006b;
                    case 3: goto L_0x007f;
                    case 4: goto L_0x0093;
                    case 5: goto L_0x009e;
                    case 6: goto L_0x0048;
                    case 7: goto L_0x00a9;
                    case 8: goto L_0x0048;
                    case 9: goto L_0x00b4;
                    case 10: goto L_0x00bf;
                    case 11: goto L_0x00cb;
                    case 12: goto L_0x00d2;
                    default: goto L_0x0048;
                }     // Catch:{ Throwable -> 0x004c }
            L_0x0048:
                super.handleMessage(r6)     // Catch:{ Throwable -> 0x004c }
                goto L_0x0039
            L_0x004c:
                r0 = move-exception
                java.lang.String r1 = "actionHandler"
                java.lang.String r2 = "handleMessage"
                com.amap.api.col.sl.fq.a(r0, r1, r2)
                goto L_0x0039
            L_0x0055:
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.a(r1)     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e.a(r0, r2, r1)     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x0060:
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.a(r1)     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e.b(r0, r2, r1)     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x006b:
                if (r1 == 0) goto L_0x0039
                boolean r0 = r1.isEmpty()     // Catch:{ Throwable -> 0x004c }
                if (r0 != 0) goto L_0x0039
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r1 = 0
                r0.a(r1)     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.c()     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x007f:
                if (r1 == 0) goto L_0x0039
                boolean r0 = r1.isEmpty()     // Catch:{ Throwable -> 0x004c }
                if (r0 != 0) goto L_0x0039
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r1 = 0
                r0.a(r1)     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.d()     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x0093:
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.a(r1)     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e.a(r0)     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x009e:
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.a(r1)     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e.b(r0)     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x00a9:
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.a(r1)     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e.c(r0)     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x00b4:
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.a(r1)     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e.a(r0, r2)     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x00bf:
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.a(r1)     // Catch:{ Throwable -> 0x004c }
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.a(r2, r1)     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x00cb:
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.e()     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x00d2:
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x004c }
                r0.h.remove(r2)     // Catch:{ Throwable -> 0x004c }
                goto L_0x0048
            L_0x00d9:
                r0 = move-exception
                goto L_0x003c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.e.a.handleMessage(android.os.Message):void");
        }
    }

    /* compiled from: APSManager */
    class b extends HandlerThread {
        public b(String str) {
            super(str);
        }

        /* access modifiers changed from: protected */
        /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onLooperPrepared() {
            /*
                r3 = this;
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x001b }
                com.amap.api.col.sl.i r1 = new com.amap.api.col.sl.i     // Catch:{ Throwable -> 0x001b }
                com.amap.api.col.sl.e r2 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x001b }
                android.content.Context r2 = r2.e     // Catch:{ Throwable -> 0x001b }
                r1.<init>(r2)     // Catch:{ Throwable -> 0x001b }
                r0.A = r1     // Catch:{ Throwable -> 0x001b }
            L_0x000e:
                com.amap.api.col.sl.e r0 = com.amap.api.col.sl.e.this     // Catch:{ Throwable -> 0x0024 }
                com.amap.api.col.sl.er r1 = new com.amap.api.col.sl.er     // Catch:{ Throwable -> 0x0024 }
                r1.<init>()     // Catch:{ Throwable -> 0x0024 }
                r0.f = r1     // Catch:{ Throwable -> 0x0024 }
                super.onLooperPrepared()     // Catch:{ Throwable -> 0x0024 }
            L_0x001a:
                return
            L_0x001b:
                r0 = move-exception
                java.lang.String r1 = "AMapLocationManager"
                java.lang.String r2 = "init 2"
                com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0024 }
                goto L_0x000e
            L_0x0024:
                r0 = move-exception
                java.lang.String r1 = "actionHandler"
                java.lang.String r2 = "onLooperPrepared"
                com.amap.api.col.sl.fq.a(r0, r1, r2)
                goto L_0x001a
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.e.b.onLooperPrepared():void");
        }
    }

    /* compiled from: APSManager */
    class c extends Thread {
        c() {
        }

        public final void run() {
            try {
                if (!e.this.p) {
                    e.this.p = true;
                    e.this.o = new ServerSocket(43689);
                }
                while (e.this.p && e.this.o != null) {
                    e.this.q = e.this.o.accept();
                    e.a(e.this, e.this.q);
                }
            } catch (Throwable th) {
                fq.a(th, "APSServiceCore", "run");
            }
            super.run();
        }
    }

    static /* synthetic */ void a(e eVar) {
        try {
            if (eVar.z < fp.b()) {
                eVar.z++;
                eVar.f.e();
                eVar.d.sendEmptyMessageDelayed(4, 2000);
            }
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "doGpsFusion");
        }
    }

    static /* synthetic */ void a(e eVar, Messenger messenger) {
        try {
            eVar.b(messenger);
            fp.f(eVar.e);
            try {
                er erVar = eVar.f;
                Context context = eVar.e;
                erVar.h();
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            fq.a(th2, "APSServiceCore", "doCallOtherSer");
        }
    }

    static /* synthetic */ void a(e eVar, Messenger messenger, Bundle bundle) {
        if (bundle != null) {
            try {
                if (!bundle.isEmpty() && !eVar.u) {
                    eVar.u = true;
                    eVar.b(messenger);
                    fp.f(eVar.e);
                    try {
                        er erVar = eVar.f;
                        Context context = eVar.e;
                        erVar.g();
                    } catch (Throwable th) {
                    }
                    eVar.a(messenger);
                    if (fp.a(eVar.y) && "1".equals(bundle.getString("isCacheLoc"))) {
                        eVar.y = fy.b();
                        eVar.f.e();
                    }
                    eVar.h();
                }
            } catch (Throwable th2) {
                fq.a(th2, "APSServiceCore", "doInitAuth");
            }
        }
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:64:0x00d2=Splitter:B:64:0x00d2, B:92:0x0112=Splitter:B:92:0x0112, B:75:0x00e9=Splitter:B:75:0x00e9, B:33:0x005a=Splitter:B:33:0x005a} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(com.amap.api.col.sl.e r6, java.net.Socket r7) {
        /*
            r2 = 0
            if (r7 != 0) goto L_0x0004
        L_0x0003:
            return
        L_0x0004:
            int r3 = com.amap.api.col.sl.fq.f     // Catch:{ Throwable -> 0x0032 }
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ Throwable -> 0x0064, all -> 0x00dc }
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch:{ Throwable -> 0x0064, all -> 0x00dc }
            java.io.InputStream r4 = r7.getInputStream()     // Catch:{ Throwable -> 0x0064, all -> 0x00dc }
            java.lang.String r5 = "UTF-8"
            r0.<init>(r4, r5)     // Catch:{ Throwable -> 0x0064, all -> 0x00dc }
            r1.<init>(r0)     // Catch:{ Throwable -> 0x0064, all -> 0x00dc }
            r6.a(r1)     // Catch:{ Throwable -> 0x011e }
            java.lang.String r0 = r6.g()     // Catch:{ Throwable -> 0x011e }
            com.amap.api.col.sl.fq.f = r3     // Catch:{ Throwable -> 0x0032 }
            r6.c(r0)     // Catch:{ Throwable -> 0x003b }
            r1.close()     // Catch:{ Throwable -> 0x0029 }
            r7.close()     // Catch:{ Throwable -> 0x0029 }
            goto L_0x0003
        L_0x0029:
            r0 = move-exception
            java.lang.String r1 = "APSServiceCore"
            java.lang.String r2 = "invokeSocketLocation part3"
            com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x0003
        L_0x0032:
            r0 = move-exception
            java.lang.String r1 = "APSServiceCore"
            java.lang.String r2 = "invokeSocketLocation part4"
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            goto L_0x0003
        L_0x003b:
            r0 = move-exception
            java.lang.String r2 = "APSServiceCore"
            java.lang.String r3 = "invokeSocketLocation part2"
            com.amap.api.col.sl.fq.a(r0, r2, r3)     // Catch:{ all -> 0x0053 }
            r1.close()     // Catch:{ Throwable -> 0x004a }
            r7.close()     // Catch:{ Throwable -> 0x004a }
            goto L_0x0003
        L_0x004a:
            r0 = move-exception
            java.lang.String r1 = "APSServiceCore"
            java.lang.String r2 = "invokeSocketLocation part3"
            com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x0003
        L_0x0053:
            r0 = move-exception
            r1.close()     // Catch:{ Throwable -> 0x005b }
            r7.close()     // Catch:{ Throwable -> 0x005b }
        L_0x005a:
            throw r0     // Catch:{ Throwable -> 0x0032 }
        L_0x005b:
            r1 = move-exception
            java.lang.String r2 = "APSServiceCore"
            java.lang.String r3 = "invokeSocketLocation part3"
            com.amap.api.col.sl.fq.a(r1, r2, r3)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x005a
        L_0x0064:
            r0 = move-exception
            r1 = r2
        L_0x0066:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x011c }
            r4.<init>()     // Catch:{ all -> 0x011c }
            java.lang.String r5 = r6.D     // Catch:{ all -> 0x011c }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x011c }
            java.lang.String r5 = "&&"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x011c }
            java.lang.String r5 = r6.D     // Catch:{ all -> 0x011c }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x011c }
            java.lang.String r5 = "({'package':'"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x011c }
            java.lang.String r5 = r6.a     // Catch:{ all -> 0x011c }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x011c }
            java.lang.String r5 = "','error_code':1,'error':'params error'})"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x011c }
            java.lang.String r2 = r4.toString()     // Catch:{ all -> 0x011c }
            java.lang.String r4 = "APSServiceCore"
            java.lang.String r5 = "invokeSocketLocation"
            com.amap.api.col.sl.fq.a(r0, r4, r5)     // Catch:{ all -> 0x011c }
            com.amap.api.col.sl.fq.f = r3     // Catch:{ Throwable -> 0x0032 }
            r6.c(r2)     // Catch:{ Throwable -> 0x00b1 }
            r1.close()     // Catch:{ Throwable -> 0x00a7 }
            r7.close()     // Catch:{ Throwable -> 0x00a7 }
            goto L_0x0003
        L_0x00a7:
            r0 = move-exception
            java.lang.String r1 = "APSServiceCore"
            java.lang.String r2 = "invokeSocketLocation part3"
            com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x0003
        L_0x00b1:
            r0 = move-exception
            java.lang.String r2 = "APSServiceCore"
            java.lang.String r3 = "invokeSocketLocation part2"
            com.amap.api.col.sl.fq.a(r0, r2, r3)     // Catch:{ all -> 0x00cb }
            r1.close()     // Catch:{ Throwable -> 0x00c1 }
            r7.close()     // Catch:{ Throwable -> 0x00c1 }
            goto L_0x0003
        L_0x00c1:
            r0 = move-exception
            java.lang.String r1 = "APSServiceCore"
            java.lang.String r2 = "invokeSocketLocation part3"
            com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x0003
        L_0x00cb:
            r0 = move-exception
            r1.close()     // Catch:{ Throwable -> 0x00d3 }
            r7.close()     // Catch:{ Throwable -> 0x00d3 }
        L_0x00d2:
            throw r0     // Catch:{ Throwable -> 0x0032 }
        L_0x00d3:
            r1 = move-exception
            java.lang.String r2 = "APSServiceCore"
            java.lang.String r3 = "invokeSocketLocation part3"
            com.amap.api.col.sl.fq.a(r1, r2, r3)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x00d2
        L_0x00dc:
            r0 = move-exception
            r1 = r2
        L_0x00de:
            com.amap.api.col.sl.fq.f = r3     // Catch:{ Throwable -> 0x0032 }
            r6.c(r2)     // Catch:{ Throwable -> 0x00f3 }
            r1.close()     // Catch:{ Throwable -> 0x00ea }
            r7.close()     // Catch:{ Throwable -> 0x00ea }
        L_0x00e9:
            throw r0     // Catch:{ Throwable -> 0x0032 }
        L_0x00ea:
            r1 = move-exception
            java.lang.String r2 = "APSServiceCore"
            java.lang.String r3 = "invokeSocketLocation part3"
            com.amap.api.col.sl.fq.a(r1, r2, r3)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x00e9
        L_0x00f3:
            r2 = move-exception
            java.lang.String r3 = "APSServiceCore"
            java.lang.String r4 = "invokeSocketLocation part2"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ all -> 0x010b }
            r1.close()     // Catch:{ Throwable -> 0x0102 }
            r7.close()     // Catch:{ Throwable -> 0x0102 }
            goto L_0x00e9
        L_0x0102:
            r1 = move-exception
            java.lang.String r2 = "APSServiceCore"
            java.lang.String r3 = "invokeSocketLocation part3"
            com.amap.api.col.sl.fq.a(r1, r2, r3)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x00e9
        L_0x010b:
            r0 = move-exception
            r1.close()     // Catch:{ Throwable -> 0x0113 }
            r7.close()     // Catch:{ Throwable -> 0x0113 }
        L_0x0112:
            throw r0     // Catch:{ Throwable -> 0x0032 }
        L_0x0113:
            r1 = move-exception
            java.lang.String r2 = "APSServiceCore"
            java.lang.String r3 = "invokeSocketLocation part3"
            com.amap.api.col.sl.fq.a(r1, r2, r3)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x0112
        L_0x011c:
            r0 = move-exception
            goto L_0x00de
        L_0x011e:
            r0 = move-exception
            goto L_0x0066
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.e.a(com.amap.api.col.sl.e, java.net.Socket):void");
    }

    static /* synthetic */ void b(e eVar) {
        try {
            if (fp.e()) {
                eVar.f.e();
            } else if (!fy.e(eVar.e)) {
                eVar.f.e();
            }
            eVar.d.sendEmptyMessageDelayed(5, (long) (fp.d() * 1000));
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "doOffFusion");
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void b(com.amap.api.col.sl.e r11, android.os.Messenger r12, android.os.Bundle r13) {
        /*
            r10 = 9
            r2 = 0
            r1 = 0
            if (r13 == 0) goto L_0x000d
            boolean r0 = r13.isEmpty()     // Catch:{ Throwable -> 0x0071 }
            if (r0 == 0) goto L_0x000e
        L_0x000d:
            return
        L_0x000e:
            com.amap.api.location.AMapLocationClientOption r6 = r11.b(r13)     // Catch:{ Throwable -> 0x0071 }
            java.util.HashMap<android.os.Messenger, java.lang.Long> r0 = r11.h     // Catch:{ Throwable -> 0x0071 }
            boolean r0 = r0.containsKey(r12)     // Catch:{ Throwable -> 0x0071 }
            if (r0 == 0) goto L_0x0038
            boolean r0 = r6.isOnceLocation()     // Catch:{ Throwable -> 0x0071 }
            if (r0 != 0) goto L_0x0038
            java.util.HashMap<android.os.Messenger, java.lang.Long> r0 = r11.h     // Catch:{ Throwable -> 0x0071 }
            java.lang.Object r0 = r0.get(r12)     // Catch:{ Throwable -> 0x0071 }
            java.lang.Long r0 = (java.lang.Long) r0     // Catch:{ Throwable -> 0x0071 }
            long r4 = r0.longValue()     // Catch:{ Throwable -> 0x0071 }
            long r8 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0071 }
            long r4 = r8 - r4
            r8 = 800(0x320, double:3.953E-321)
            int r0 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r0 < 0) goto L_0x000d
        L_0x0038:
            boolean r0 = r11.B     // Catch:{ Throwable -> 0x0071 }
            if (r0 != 0) goto L_0x007a
            r0 = 9
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r2 = "init error : "
            r1.<init>(r2)     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r2 = r11.C     // Catch:{ Throwable -> 0x0071 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r2 = "#0901"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r1 = r1.toString()     // Catch:{ Throwable -> 0x0071 }
            com.amap.api.col.sl.ev r0 = a(r0, r1)     // Catch:{ Throwable -> 0x0071 }
            r11.x = r0     // Catch:{ Throwable -> 0x0071 }
            com.amap.api.col.sl.ev r2 = r11.x     // Catch:{ Throwable -> 0x0071 }
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r3 = r0.l()     // Catch:{ Throwable -> 0x0071 }
            r4 = 0
            r0 = r11
            r1 = r12
            r0.a(r1, r2, r3, r4)     // Catch:{ Throwable -> 0x0071 }
            r0 = 0
            r1 = 2091(0x82b, float:2.93E-42)
            com.amap.api.col.sl.fv.a(r0, r1)     // Catch:{ Throwable -> 0x0071 }
            goto L_0x000d
        L_0x0071:
            r0 = move-exception
            java.lang.String r1 = "APSServiceCore"
            java.lang.String r2 = "doLocation"
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            goto L_0x000d
        L_0x007a:
            long r4 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0071 }
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            if (r0 == 0) goto L_0x00e4
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            int r0 = r0.getErrorCode()     // Catch:{ Throwable -> 0x0071 }
            if (r0 != 0) goto L_0x00e4
            long r8 = r11.w     // Catch:{ Throwable -> 0x0071 }
            long r4 = r4 - r8
            r8 = 600(0x258, double:2.964E-321)
            int r0 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r0 >= 0) goto L_0x00e4
            com.amap.api.col.sl.ev r2 = r11.x     // Catch:{ Throwable -> 0x0071 }
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r3 = r0.l()     // Catch:{ Throwable -> 0x0071 }
            r4 = 0
            r0 = r11
            r1 = r12
            r0.a(r1, r2, r3, r4)     // Catch:{ Throwable -> 0x0071 }
        L_0x00a2:
            r11.b(r12)     // Catch:{ Throwable -> 0x0071 }
            boolean r0 = com.amap.api.col.sl.fp.C()     // Catch:{ Throwable -> 0x0071 }
            if (r0 == 0) goto L_0x00ae
            r11.a(r12)     // Catch:{ Throwable -> 0x0071 }
        L_0x00ae:
            long r0 = r11.y     // Catch:{ Throwable -> 0x0071 }
            boolean r0 = com.amap.api.col.sl.fp.a(r0)     // Catch:{ Throwable -> 0x0071 }
            if (r0 == 0) goto L_0x00df
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            if (r0 == 0) goto L_0x00df
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            int r0 = r0.getLocationType()     // Catch:{ Throwable -> 0x0071 }
            r1 = 2
            if (r0 == r1) goto L_0x00d4
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            int r0 = r0.getLocationType()     // Catch:{ Throwable -> 0x0071 }
            r1 = 4
            if (r0 == r1) goto L_0x00d4
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            int r0 = r0.getLocationType()     // Catch:{ Throwable -> 0x0071 }
            if (r0 != r10) goto L_0x00df
        L_0x00d4:
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0071 }
            r11.y = r0     // Catch:{ Throwable -> 0x0071 }
            com.amap.api.col.sl.er r0 = r11.f     // Catch:{ Throwable -> 0x0071 }
            r0.e()     // Catch:{ Throwable -> 0x0071 }
        L_0x00df:
            r11.h()     // Catch:{ Throwable -> 0x0071 }
            goto L_0x000d
        L_0x00e4:
            com.amap.api.col.sl.fu r7 = new com.amap.api.col.sl.fu     // Catch:{ Throwable -> 0x0071 }
            r7.<init>()     // Catch:{ Throwable -> 0x0071 }
            long r4 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0071 }
            r7.a(r4)     // Catch:{ Throwable -> 0x0071 }
            com.amap.api.col.sl.er r0 = r11.f     // Catch:{ Throwable -> 0x0179 }
            com.amap.api.col.sl.ev r0 = r0.d()     // Catch:{ Throwable -> 0x0179 }
            r11.x = r0     // Catch:{ Throwable -> 0x0179 }
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0179 }
            int r0 = r0.getLocationType()     // Catch:{ Throwable -> 0x0179 }
            r4 = 6
            if (r0 == r4) goto L_0x010a
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0179 }
            int r0 = r0.getLocationType()     // Catch:{ Throwable -> 0x0179 }
            r4 = 5
            if (r0 != r4) goto L_0x0110
        L_0x010a:
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0179 }
            long r2 = r0.k()     // Catch:{ Throwable -> 0x0179 }
        L_0x0110:
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0179 }
            r7.a(r0)     // Catch:{ Throwable -> 0x0179 }
            com.amap.api.col.sl.er r0 = r11.f     // Catch:{ Throwable -> 0x0179 }
            com.amap.api.col.sl.ev r4 = r11.x     // Catch:{ Throwable -> 0x0179 }
            r5 = 0
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch:{ Throwable -> 0x0179 }
            com.amap.api.col.sl.ev r0 = r0.a(r4, r5)     // Catch:{ Throwable -> 0x0179 }
            r11.x = r0     // Catch:{ Throwable -> 0x0179 }
            r4 = r2
        L_0x0123:
            long r2 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0071 }
            r7.b(r2)     // Catch:{ Throwable -> 0x0071 }
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            if (r0 == 0) goto L_0x013c
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            int r0 = r0.getErrorCode()     // Catch:{ Throwable -> 0x0071 }
            if (r0 != 0) goto L_0x013c
            long r2 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0071 }
            r11.w = r2     // Catch:{ Throwable -> 0x0071 }
        L_0x013c:
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            if (r0 != 0) goto L_0x014a
            r0 = 8
            java.lang.String r2 = "loc is null#0801"
            com.amap.api.col.sl.ev r0 = a(r0, r2)     // Catch:{ Throwable -> 0x0071 }
            r11.x = r0     // Catch:{ Throwable -> 0x0071 }
        L_0x014a:
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            if (r0 == 0) goto L_0x01b5
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r3 = r0.l()     // Catch:{ Throwable -> 0x0071 }
        L_0x0154:
            com.amap.api.col.sl.ev r0 = r11.x     // Catch:{ Throwable -> 0x0071 }
            boolean r1 = r6.isLocationCacheEnable()     // Catch:{ Throwable -> 0x01ab }
            if (r1 == 0) goto L_0x016c
            com.amap.api.col.sl.i r1 = r11.A     // Catch:{ Throwable -> 0x01ab }
            if (r1 == 0) goto L_0x016c
            com.amap.api.col.sl.i r1 = r11.A     // Catch:{ Throwable -> 0x01ab }
            com.amap.api.col.sl.ev r2 = r11.x     // Catch:{ Throwable -> 0x01ab }
            long r8 = r6.getLastLocationLifeCycle()     // Catch:{ Throwable -> 0x01ab }
            com.amap.api.location.AMapLocation r0 = r1.a(r2, r3, r8)     // Catch:{ Throwable -> 0x01ab }
        L_0x016c:
            r2 = r0
        L_0x016d:
            r0 = r11
            r1 = r12
            r0.a(r1, r2, r3, r4)     // Catch:{ Throwable -> 0x0071 }
            android.content.Context r0 = r11.e     // Catch:{ Throwable -> 0x0071 }
            com.amap.api.col.sl.fv.a(r0, r7)     // Catch:{ Throwable -> 0x0071 }
            goto L_0x00a2
        L_0x0179:
            r0 = move-exception
            r4 = 0
            r5 = 2081(0x821, float:2.916E-42)
            com.amap.api.col.sl.fv.a(r4, r5)     // Catch:{ Throwable -> 0x0071 }
            r4 = 8
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r8 = "loc error : "
            r5.<init>(r8)     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r8 = r0.getMessage()     // Catch:{ Throwable -> 0x0071 }
            java.lang.StringBuilder r5 = r5.append(r8)     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r8 = "#0801"
            java.lang.StringBuilder r5 = r5.append(r8)     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r5 = r5.toString()     // Catch:{ Throwable -> 0x0071 }
            com.amap.api.col.sl.ev r4 = a(r4, r5)     // Catch:{ Throwable -> 0x0071 }
            r11.x = r4     // Catch:{ Throwable -> 0x0071 }
            java.lang.String r4 = "APSServiceCore"
            java.lang.String r5 = "run part2"
            com.amap.api.col.sl.fq.a(r0, r4, r5)     // Catch:{ Throwable -> 0x0071 }
            r4 = r2
            goto L_0x0123
        L_0x01ab:
            r1 = move-exception
            java.lang.String r2 = "APSServiceCore"
            java.lang.String r6 = "fixLastLocation"
            com.amap.api.col.sl.fq.a(r1, r2, r6)     // Catch:{ Throwable -> 0x0071 }
            r2 = r0
            goto L_0x016d
        L_0x01b5:
            r3 = r1
            goto L_0x0154
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.e.b(com.amap.api.col.sl.e, android.os.Messenger, android.os.Bundle):void");
    }

    static /* synthetic */ void c(e eVar) {
        try {
            if (fp.a(eVar.e, eVar.v)) {
                eVar.v = fy.a();
                eVar.f.e();
            }
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "doNGps");
        }
    }

    public e(Context context) {
        this.e = context;
    }

    public final void a() {
        try {
            this.i = new fv();
            this.b = new b("amapLocCoreThread");
            this.b.setPriority(5);
            this.b.start();
            this.d = new a(this.b.getLooper());
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "onCreate");
        }
    }

    public final Handler b() {
        return this.d;
    }

    public final void a(Intent intent) {
        if ("true".equals(intent.getStringExtra("as")) && this.d != null) {
            this.d.sendEmptyMessageDelayed(9, 100);
        }
    }

    /* access modifiers changed from: private */
    public static ev a(int i2, String str) {
        try {
            ev evVar = new ev("");
            evVar.setErrorCode(i2);
            evVar.setLocationDetail(str);
            return evVar;
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "newInstanceAMapLoc");
            return null;
        }
    }

    private void a(Messenger messenger) {
        try {
            if (fp.d(this.e)) {
                a(messenger, 100, (Bundle) null);
            }
            this.d.removeMessages(4);
            if (fp.a()) {
                this.d.sendEmptyMessage(4);
            }
            this.d.removeMessages(5);
            if (fp.c() && fp.d() > 2) {
                this.d.sendEmptyMessage(5);
            }
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "checkConfig");
        }
    }

    private void b(Messenger messenger) {
        try {
            er erVar = this.f;
            er.b(this.e);
            if (fp.q()) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("ngpsAble", fp.s());
                a(messenger, 7, bundle);
                fp.r();
            }
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "initAuth");
        }
    }

    /* access modifiers changed from: private */
    public void a(Bundle bundle) {
        try {
            if (!this.t) {
                fq.a(this.e);
                if (bundle != null) {
                    this.n = fq.a(bundle.getBundle("optBundle"));
                }
                this.t = true;
                this.f.a(this.e);
                this.f.a();
                a(this.n);
                this.f.b();
            }
        } catch (Throwable th) {
            this.B = false;
            this.C = th.getMessage();
            fq.a(th, "APSServiceCore", "init");
        }
    }

    private void a(AMapLocationClientOption aMapLocationClientOption) {
        try {
            if (this.f != null) {
                this.f.a(aMapLocationClientOption);
            }
            if (aMapLocationClientOption != null) {
                g = aMapLocationClientOption.isKillProcess();
                if (!(this.m == null || (aMapLocationClientOption.isOffset() == this.m.isOffset() && aMapLocationClientOption.isNeedAddress() == this.m.isNeedAddress() && aMapLocationClientOption.isLocationCacheEnable() == this.m.isLocationCacheEnable() && this.m.getGeoLanguage() == aMapLocationClientOption.getGeoLanguage()))) {
                    this.w = 0;
                    this.c = null;
                }
                this.m = aMapLocationClientOption;
            }
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "setExtra");
        }
    }

    public final void c() {
        try {
            if (!this.r) {
                this.s = new c();
                this.s.start();
                this.r = true;
            }
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "startSocket");
        }
    }

    public final void d() {
        try {
            if (this.q != null) {
                this.q.close();
            }
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "doStopScocket 1");
        }
        try {
            if (this.o != null) {
                this.o.close();
            }
        } catch (Throwable th2) {
            fq.a(th2, "APSServiceCore", "doStopScocket 2");
        }
        try {
            if (this.s != null) {
                this.s.interrupt();
            }
        } catch (Throwable th3) {
        }
        this.s = null;
        this.o = null;
        this.p = false;
        this.r = false;
    }

    private void a(BufferedReader bufferedReader) throws IOException {
        String readLine = bufferedReader.readLine();
        int i2 = 30000;
        if (readLine != null && readLine.length() > 0) {
            String[] split = readLine.split(Token.SEPARATOR);
            if (split != null && split.length > 1) {
                String[] split2 = split[1].split("\\?");
                if (split2 != null && split2.length > 1) {
                    String[] split3 = split2[1].split("&");
                    if (split3 != null && split3.length > 0) {
                        for (String split4 : split3) {
                            String[] split5 = split4.split("=");
                            if (split5 != null && split5.length > 1) {
                                if ("to".equals(split5[0])) {
                                    i2 = Integer.parseInt(split5[1]);
                                }
                                if ("callback".equals(split5[0])) {
                                    this.D = split5[1];
                                }
                            }
                        }
                    }
                }
            }
        }
        fq.f = i2;
    }

    private String g() {
        long currentTimeMillis = System.currentTimeMillis();
        if (fy.e(this.e)) {
            return this.D + "&&" + this.D + "({'package':'" + this.a + "','error_code':36,'error':'app is background'})";
        }
        if (this.x == null || currentTimeMillis - this.x.getTime() > 5000) {
            try {
                this.x = this.f.d();
            } catch (Throwable th) {
                fq.a(th, "APSServiceCore", "getSocketLocResult");
            }
        }
        if (this.x == null) {
            return this.D + "&&" + this.D + "({'package':'" + this.a + "','error_code':8,'error':'unknown error'})";
        }
        if (this.x.getErrorCode() != 0) {
            return this.D + "&&" + this.D + "({'package':'" + this.a + "','error_code':" + this.x.getErrorCode() + ",'error':'" + this.x.getErrorInfo() + "'})";
        }
        return this.D + "&&" + this.D + "({'package':'" + this.a + "','error_code':0,'error':'','location':{'y':" + this.x.getLatitude() + ",'precision':" + this.x.getAccuracy() + ",'x':" + this.x.getLongitude() + "},'version_code':'3.8.0','version':'3.8.0'})";
    }

    private void c(String str) throws UnsupportedEncodingException, IOException {
        PrintStream printStream = new PrintStream(this.q.getOutputStream(), true, "UTF-8");
        printStream.println("HTTP/1.0 200 OK");
        printStream.println("Content-Length:" + str.getBytes("UTF-8").length);
        printStream.println();
        printStream.println(str);
        printStream.close();
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void e() {
        /*
            r8 = this;
            r4 = 0
            java.util.HashMap<android.os.Messenger, java.lang.Long> r0 = r8.h     // Catch:{ Throwable -> 0x00a6 }
            r0.clear()     // Catch:{ Throwable -> 0x00a6 }
            r0 = 0
            r8.h = r0     // Catch:{ Throwable -> 0x00a6 }
            com.amap.api.col.sl.er r0 = r8.f     // Catch:{ Throwable -> 0x00a6 }
            if (r0 == 0) goto L_0x0015
            com.amap.api.col.sl.er r0 = r8.f     // Catch:{ Throwable -> 0x00a6 }
            android.content.Context r0 = r8.e     // Catch:{ Throwable -> 0x00a6 }
            com.amap.api.col.sl.er.b(r0)     // Catch:{ Throwable -> 0x00a6 }
        L_0x0015:
            com.amap.api.col.sl.e$a r0 = r8.d     // Catch:{ Throwable -> 0x00a6 }
            if (r0 == 0) goto L_0x001f
            com.amap.api.col.sl.e$a r0 = r8.d     // Catch:{ Throwable -> 0x00a6 }
            r1 = 0
            r0.removeCallbacksAndMessages(r1)     // Catch:{ Throwable -> 0x00a6 }
        L_0x001f:
            com.amap.api.col.sl.e$b r0 = r8.b     // Catch:{ Throwable -> 0x00a6 }
            if (r0 == 0) goto L_0x0035
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch:{ Throwable -> 0x00a6 }
            r1 = 18
            if (r0 < r1) goto L_0x00af
            com.amap.api.col.sl.e$b r0 = r8.b     // Catch:{ Throwable -> 0x009f }
            java.lang.Class<android.os.HandlerThread> r1 = android.os.HandlerThread.class
            java.lang.String r2 = "quitSafely"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x009f }
            com.amap.api.col.sl.ft.a(r0, r1, r2, r3)     // Catch:{ Throwable -> 0x009f }
        L_0x0035:
            r0 = 0
            r8.b = r0     // Catch:{ Throwable -> 0x00a6 }
            r0 = 0
            r8.d = r0     // Catch:{ Throwable -> 0x00a6 }
            com.amap.api.col.sl.i r0 = r8.A     // Catch:{ Throwable -> 0x00a6 }
            if (r0 == 0) goto L_0x0047
            com.amap.api.col.sl.i r0 = r8.A     // Catch:{ Throwable -> 0x00a6 }
            r0.c()     // Catch:{ Throwable -> 0x00a6 }
            r0 = 0
            r8.A = r0     // Catch:{ Throwable -> 0x00a6 }
        L_0x0047:
            r8.d()     // Catch:{ Throwable -> 0x00a6 }
            r0 = 0
            r8.t = r0     // Catch:{ Throwable -> 0x00a6 }
            r0 = 0
            r8.u = r0     // Catch:{ Throwable -> 0x00a6 }
            com.amap.api.col.sl.er r0 = r8.f     // Catch:{ Throwable -> 0x00a6 }
            r0.f()     // Catch:{ Throwable -> 0x00a6 }
            android.content.Context r0 = r8.e     // Catch:{ Throwable -> 0x00a6 }
            com.amap.api.col.sl.fv.a(r0)     // Catch:{ Throwable -> 0x00a6 }
            com.amap.api.col.sl.fv r0 = r8.i     // Catch:{ Throwable -> 0x00a6 }
            if (r0 == 0) goto L_0x0090
            long r0 = r8.j     // Catch:{ Throwable -> 0x00a6 }
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 == 0) goto L_0x0090
            long r0 = r8.k     // Catch:{ Throwable -> 0x00a6 }
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 == 0) goto L_0x0090
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x00a6 }
            long r2 = r8.j     // Catch:{ Throwable -> 0x00a6 }
            long r6 = r0 - r2
            com.amap.api.col.sl.fv r0 = r8.i     // Catch:{ Throwable -> 0x00a6 }
            android.content.Context r1 = r8.e     // Catch:{ Throwable -> 0x00a6 }
            int r2 = r0.c(r1)     // Catch:{ Throwable -> 0x00a6 }
            com.amap.api.col.sl.fv r0 = r8.i     // Catch:{ Throwable -> 0x00a6 }
            android.content.Context r1 = r8.e     // Catch:{ Throwable -> 0x00a6 }
            int r3 = r0.d(r1)     // Catch:{ Throwable -> 0x00a6 }
            android.content.Context r1 = r8.e     // Catch:{ Throwable -> 0x00a6 }
            long r4 = r8.k     // Catch:{ Throwable -> 0x00a6 }
            com.amap.api.col.sl.fv.a(r1, r2, r3, r4, r6)     // Catch:{ Throwable -> 0x00a6 }
            com.amap.api.col.sl.fv r0 = r8.i     // Catch:{ Throwable -> 0x00a6 }
            android.content.Context r1 = r8.e     // Catch:{ Throwable -> 0x00a6 }
            r0.e(r1)     // Catch:{ Throwable -> 0x00a6 }
        L_0x0090:
            com.amap.api.col.sl.cm.b()     // Catch:{ Throwable -> 0x00a6 }
            boolean r0 = g     // Catch:{ Throwable -> 0x00a6 }
            if (r0 == 0) goto L_0x009e
            int r0 = android.os.Process.myPid()     // Catch:{ Throwable -> 0x00a6 }
            android.os.Process.killProcess(r0)     // Catch:{ Throwable -> 0x00a6 }
        L_0x009e:
            return
        L_0x009f:
            r0 = move-exception
            com.amap.api.col.sl.e$b r0 = r8.b     // Catch:{ Throwable -> 0x00a6 }
            r0.quit()     // Catch:{ Throwable -> 0x00a6 }
            goto L_0x0035
        L_0x00a6:
            r0 = move-exception
            java.lang.String r1 = "APSServiceCore"
            java.lang.String r2 = "threadDestroy"
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            goto L_0x009e
        L_0x00af:
            com.amap.api.col.sl.e$b r0 = r8.b     // Catch:{ Throwable -> 0x00a6 }
            r0.quit()     // Catch:{ Throwable -> 0x00a6 }
            goto L_0x0035
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.e.e():void");
    }

    private void h() {
        try {
            if (this.f != null) {
                this.f.k();
            }
        } catch (Throwable th) {
            fq.a(th, "APSServiceCore", "startColl");
        }
    }

    private static void a(Messenger messenger, int i2, Bundle bundle) {
        if (messenger != null) {
            try {
                Message obtain = Message.obtain();
                obtain.setData(bundle);
                obtain.what = i2;
                messenger.send(obtain);
            } catch (Throwable th) {
                fq.a(th, "APSServiceCore", "sendMessage");
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(Messenger messenger, AMapLocation aMapLocation, String str, long j2) {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(AMapLocation.class.getClassLoader());
        bundle.putParcelable("loc", aMapLocation);
        bundle.putString("nb", str);
        bundle.putLong("netUseTime", j2);
        this.h.put(messenger, Long.valueOf(fy.b()));
        a(messenger, 1, bundle);
    }

    private AMapLocationClientOption b(Bundle bundle) {
        AMapLocationClientOption a2 = fq.a(bundle.getBundle("optBundle"));
        a(a2);
        try {
            String string = bundle.getString("d");
            if (!TextUtils.isEmpty(string)) {
                bu.a(string);
            }
        } catch (Throwable th) {
            fq.a(th, "APSManager", "parseBundle");
        }
        return a2;
    }

    /* access modifiers changed from: 0000 */
    public final void a(Messenger messenger, Bundle bundle) {
        float f2;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty() && fp.z()) {
                    double d2 = bundle.getDouble("lat");
                    double d3 = bundle.getDouble("lon");
                    b(bundle);
                    if (this.c != null) {
                        f2 = fy.a(new double[]{d2, d3, this.c.getLatitude(), this.c.getLongitude()});
                        if (f2 < ((float) (fp.A() * 3))) {
                            Bundle bundle2 = new Bundle();
                            bundle2.setClassLoader(AMapLocation.class.getClassLoader());
                            bundle2.putInt("lMaxGeoDis", fp.A() * 3);
                            bundle2.putInt("lMinGeoDis", fp.A());
                            bundle2.putParcelable("loc", this.c);
                            a(messenger, 6, bundle2);
                        }
                    } else {
                        f2 = -1.0f;
                    }
                    if (f2 == -1.0f || f2 > ((float) fp.A())) {
                        a(bundle);
                        this.c = this.f.a(d2, d3);
                    }
                }
            } catch (Throwable th) {
                fq.a(th, "APSServiceCore", "doLocationGeo");
            }
        }
    }

    public final boolean a(String str) {
        if (TextUtils.isEmpty(this.l)) {
            this.l = fq.c(this.e);
        }
        if (TextUtils.isEmpty(str) || !str.equals(this.l)) {
            return false;
        }
        return true;
    }

    public final void b(Intent intent) {
        String stringExtra = intent.getStringExtra("a");
        if (!TextUtils.isEmpty(stringExtra)) {
            bq.a(this.e, stringExtra);
        }
        this.a = intent.getStringExtra("b");
        bp.a(this.a);
        String stringExtra2 = intent.getStringExtra("d");
        if (!TextUtils.isEmpty(stringExtra2)) {
            bu.a(stringExtra2);
        }
        fp.a = intent.getBooleanExtra("f", true);
    }

    public static void f() {
        g = false;
    }
}
