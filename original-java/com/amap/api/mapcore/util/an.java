package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

/* compiled from: OfflineDownloadManager */
public class an {
    public static String a = "";
    public static boolean b = false;
    public static String d = "";
    private static volatile an k;
    List<am> c = new Vector();
    b e = null;
    public ar f;
    at g;
    aq h = null;
    /* access modifiers changed from: private */
    public Context i;
    /* access modifiers changed from: private */
    public boolean j = true;
    /* access modifiers changed from: private */
    public a l;
    private aw m;
    /* access modifiers changed from: private */
    public bc n;
    private ExecutorService o = null;
    private ExecutorService p = null;
    private ExecutorService q = null;
    private boolean r = true;

    /* compiled from: OfflineDownloadManager */
    public interface a {
        void a();

        void a(am amVar);

        void b(am amVar);

        void c(am amVar);
    }

    /* compiled from: OfflineDownloadManager */
    class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            try {
                message.getData();
                Object obj = message.obj;
                if (obj instanceof am) {
                    am amVar = (am) obj;
                    bk.a("OfflineMapHandler handleMessage CitObj  name: " + amVar.getCity() + " complete: " + amVar.getcompleteCode() + " status: " + amVar.getState());
                    if (an.this.l != null) {
                        an.this.l.a(amVar);
                        return;
                    }
                    return;
                }
                bk.a("Do not callback by CityObject! ");
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    private an(Context context) {
        this.i = context;
    }

    public static an a(Context context) {
        if (k == null) {
            synchronized (an.class) {
                if (k == null && !b) {
                    k = new an(context.getApplicationContext());
                }
            }
        }
        return k;
    }

    public void a() {
        this.n = bc.a(this.i.getApplicationContext());
        h();
        this.e = new b(this.i.getMainLooper());
        this.f = new ar(this.i, this.e);
        this.m = aw.a(1);
        g(ee.b(this.i));
        try {
            i();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        synchronized (this.c) {
            Iterator it = this.f.a().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((OfflineMapProvince) it.next()).getCityList().iterator();
                while (it2.hasNext()) {
                    OfflineMapCity offlineMapCity = (OfflineMapCity) it2.next();
                    if (offlineMapCity != null) {
                        this.c.add(new am(this.i, offlineMapCity));
                    }
                }
            }
        }
        this.h = new aq(this.i);
        this.h.start();
    }

    private void h() {
        String str = "000001";
        try {
            ax a2 = this.n.a(str);
            if (a2 != null) {
                this.n.c(str);
                a2.c("100000");
                this.n.a(a2);
            }
        } catch (Throwable th) {
            gf.b(th, "OfflineDownloadManager", "changeBadCase");
        }
    }

    private void i() {
        String c2;
        if (!ee.b(this.i).equals("")) {
            File file = new File(ee.b(this.i) + "offlinemapv4.png");
            if (!file.exists()) {
                c2 = bk.a(this.i, "offlinemapv4.png");
            } else {
                c2 = bk.c(file);
            }
            if (c2 != null) {
                try {
                    h(c2);
                } catch (JSONException e2) {
                    if (file.exists()) {
                        file.delete();
                    }
                    gf.b((Throwable) e2, "MapDownloadManager", "paseJson io");
                    ThrowableExtension.printStackTrace(e2);
                }
            }
        }
    }

    private void h(String str) throws JSONException {
        List a2 = bk.a(str, this.i.getApplicationContext());
        if (a2 != null && a2.size() != 0 && this.f != null) {
            this.f.a(a2);
        }
    }

    private void j() {
        Iterator it = this.n.a().iterator();
        while (it.hasNext()) {
            ax axVar = (ax) it.next();
            if (!(axVar == null || axVar.d() == null || axVar.f().length() < 1)) {
                if (!(axVar.l == 4 || axVar.l == 7 || axVar.l < 0)) {
                    axVar.l = 3;
                }
                am i2 = i(axVar.d());
                if (i2 != null) {
                    String e2 = axVar.e();
                    if (e2 == null || !a(d, e2)) {
                        i2.a(axVar.l);
                        i2.setCompleteCode(axVar.g());
                    } else {
                        i2.a(7);
                    }
                    if (axVar.e().length() > 0) {
                        i2.setVersion(axVar.e());
                    }
                    List<String> b2 = this.n.b(axVar.f());
                    StringBuffer stringBuffer = new StringBuffer();
                    for (String append : b2) {
                        stringBuffer.append(append);
                        stringBuffer.append(";");
                    }
                    i2.a(stringBuffer.toString());
                    if (this.f != null) {
                        this.f.a(i2);
                    }
                }
            }
        }
    }

    public void a(ArrayList<ax> arrayList) {
        j();
        if (this.l != null) {
            try {
                this.l.a();
            } catch (Throwable th) {
                gf.b(th, "OfflineDownloadManager", "verifyCallBack");
            }
        }
    }

    public void a(final String str) {
        if (str == null) {
            try {
                if (this.l != null) {
                    this.l.b(null);
                }
            } catch (Throwable th) {
                gf.b(th, "OfflineDownloadManager", "checkUpdate");
            }
        } else {
            if (this.o == null) {
                this.o = Executors.newSingleThreadExecutor();
            }
            this.o.execute(new Runnable() {
                /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public void run() {
                    /*
                        r5 = this;
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this
                        java.lang.String r1 = r4
                        com.amap.api.mapcore.util.am r1 = r0.i(r1)
                        if (r1 == 0) goto L_0x0075
                        com.amap.api.mapcore.util.bq r0 = r1.c()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        com.amap.api.mapcore.util.bq r2 = r1.c     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        boolean r0 = r0.equals(r2)     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        if (r0 != 0) goto L_0x0022
                        com.amap.api.mapcore.util.bq r0 = r1.c()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        com.amap.api.mapcore.util.bq r2 = r1.e     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        boolean r0 = r0.equals(r2)     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        if (r0 == 0) goto L_0x0044
                    L_0x0022:
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this
                        com.amap.api.mapcore.util.an$a r0 = r0.l
                        if (r0 == 0) goto L_0x0037
                        com.amap.api.mapcore.util.an r2 = com.amap.api.mapcore.util.an.this
                        monitor-enter(r2)
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this     // Catch:{ Throwable -> 0x0038 }
                        com.amap.api.mapcore.util.an$a r0 = r0.l     // Catch:{ Throwable -> 0x0038 }
                        r0.b(r1)     // Catch:{ Throwable -> 0x0038 }
                    L_0x0036:
                        monitor-exit(r2)     // Catch:{ all -> 0x0041 }
                    L_0x0037:
                        return
                    L_0x0038:
                        r0 = move-exception
                        java.lang.String r1 = "OfflineDownloadManager"
                        java.lang.String r3 = "checkUpdatefinally"
                        com.amap.api.mapcore.util.gf.b(r0, r1, r3)     // Catch:{ all -> 0x0041 }
                        goto L_0x0036
                    L_0x0041:
                        r0 = move-exception
                        monitor-exit(r2)     // Catch:{ all -> 0x0041 }
                        throw r0
                    L_0x0044:
                        java.lang.String r0 = r1.getPinyin()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        int r2 = r0.length()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        if (r2 <= 0) goto L_0x0075
                        com.amap.api.mapcore.util.an r2 = com.amap.api.mapcore.util.an.this     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        com.amap.api.mapcore.util.bc r2 = r2.n     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        java.lang.String r0 = r2.d(r0)     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        if (r0 != 0) goto L_0x005e
                        java.lang.String r0 = r1.getVersion()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                    L_0x005e:
                        java.lang.String r2 = com.amap.api.mapcore.util.an.d     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        int r2 = r2.length()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        if (r2 <= 0) goto L_0x0075
                        if (r0 == 0) goto L_0x0075
                        com.amap.api.mapcore.util.an r2 = com.amap.api.mapcore.util.an.this     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        java.lang.String r3 = com.amap.api.mapcore.util.an.d     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        boolean r0 = r2.a(r3, r0)     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        if (r0 == 0) goto L_0x0075
                        r1.j()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                    L_0x0075:
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        r0.k()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        com.amap.api.mapcore.util.ap r0 = new com.amap.api.mapcore.util.ap     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        com.amap.api.mapcore.util.an r2 = com.amap.api.mapcore.util.an.this     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        android.content.Context r2 = r2.i     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        java.lang.String r3 = com.amap.api.mapcore.util.an.d     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        r0.<init>(r2, r3)     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        java.lang.Object r0 = r0.c()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        com.amap.api.mapcore.util.ao r0 = (com.amap.api.mapcore.util.ao) r0     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        com.amap.api.mapcore.util.an r2 = com.amap.api.mapcore.util.an.this     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        com.amap.api.mapcore.util.an$a r2 = r2.l     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        if (r2 == 0) goto L_0x00c4
                        if (r0 != 0) goto L_0x00b9
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this
                        com.amap.api.mapcore.util.an$a r0 = r0.l
                        if (r0 == 0) goto L_0x0037
                        com.amap.api.mapcore.util.an r2 = com.amap.api.mapcore.util.an.this
                        monitor-enter(r2)
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this     // Catch:{ Throwable -> 0x00b0 }
                        com.amap.api.mapcore.util.an$a r0 = r0.l     // Catch:{ Throwable -> 0x00b0 }
                        r0.b(r1)     // Catch:{ Throwable -> 0x00b0 }
                    L_0x00ab:
                        monitor-exit(r2)     // Catch:{ all -> 0x00ad }
                        goto L_0x0037
                    L_0x00ad:
                        r0 = move-exception
                        monitor-exit(r2)     // Catch:{ all -> 0x00ad }
                        throw r0
                    L_0x00b0:
                        r0 = move-exception
                        java.lang.String r1 = "OfflineDownloadManager"
                        java.lang.String r3 = "checkUpdatefinally"
                        com.amap.api.mapcore.util.gf.b(r0, r1, r3)     // Catch:{ all -> 0x00ad }
                        goto L_0x00ab
                    L_0x00b9:
                        boolean r0 = r0.a()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        if (r0 == 0) goto L_0x00c4
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                        r0.b()     // Catch:{ Exception -> 0x00e7, all -> 0x010b }
                    L_0x00c4:
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this
                        com.amap.api.mapcore.util.an$a r0 = r0.l
                        if (r0 == 0) goto L_0x0037
                        com.amap.api.mapcore.util.an r2 = com.amap.api.mapcore.util.an.this
                        monitor-enter(r2)
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this     // Catch:{ Throwable -> 0x00de }
                        com.amap.api.mapcore.util.an$a r0 = r0.l     // Catch:{ Throwable -> 0x00de }
                        r0.b(r1)     // Catch:{ Throwable -> 0x00de }
                    L_0x00d8:
                        monitor-exit(r2)     // Catch:{ all -> 0x00db }
                        goto L_0x0037
                    L_0x00db:
                        r0 = move-exception
                        monitor-exit(r2)     // Catch:{ all -> 0x00db }
                        throw r0
                    L_0x00de:
                        r0 = move-exception
                        java.lang.String r1 = "OfflineDownloadManager"
                        java.lang.String r3 = "checkUpdatefinally"
                        com.amap.api.mapcore.util.gf.b(r0, r1, r3)     // Catch:{ all -> 0x00db }
                        goto L_0x00d8
                    L_0x00e7:
                        r0 = move-exception
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this
                        com.amap.api.mapcore.util.an$a r0 = r0.l
                        if (r0 == 0) goto L_0x0037
                        com.amap.api.mapcore.util.an r2 = com.amap.api.mapcore.util.an.this
                        monitor-enter(r2)
                        com.amap.api.mapcore.util.an r0 = com.amap.api.mapcore.util.an.this     // Catch:{ Throwable -> 0x0102 }
                        com.amap.api.mapcore.util.an$a r0 = r0.l     // Catch:{ Throwable -> 0x0102 }
                        r0.b(r1)     // Catch:{ Throwable -> 0x0102 }
                    L_0x00fc:
                        monitor-exit(r2)     // Catch:{ all -> 0x00ff }
                        goto L_0x0037
                    L_0x00ff:
                        r0 = move-exception
                        monitor-exit(r2)     // Catch:{ all -> 0x00ff }
                        throw r0
                    L_0x0102:
                        r0 = move-exception
                        java.lang.String r1 = "OfflineDownloadManager"
                        java.lang.String r3 = "checkUpdatefinally"
                        com.amap.api.mapcore.util.gf.b(r0, r1, r3)     // Catch:{ all -> 0x00ff }
                        goto L_0x00fc
                    L_0x010b:
                        r0 = move-exception
                        com.amap.api.mapcore.util.an r2 = com.amap.api.mapcore.util.an.this
                        com.amap.api.mapcore.util.an$a r2 = r2.l
                        if (r2 == 0) goto L_0x0121
                        com.amap.api.mapcore.util.an r2 = com.amap.api.mapcore.util.an.this
                        monitor-enter(r2)
                        com.amap.api.mapcore.util.an r3 = com.amap.api.mapcore.util.an.this     // Catch:{ Throwable -> 0x0122 }
                        com.amap.api.mapcore.util.an$a r3 = r3.l     // Catch:{ Throwable -> 0x0122 }
                        r3.b(r1)     // Catch:{ Throwable -> 0x0122 }
                    L_0x0120:
                        monitor-exit(r2)     // Catch:{ all -> 0x012b }
                    L_0x0121:
                        throw r0
                    L_0x0122:
                        r1 = move-exception
                        java.lang.String r3 = "OfflineDownloadManager"
                        java.lang.String r4 = "checkUpdatefinally"
                        com.amap.api.mapcore.util.gf.b(r1, r3, r4)     // Catch:{ all -> 0x012b }
                        goto L_0x0120
                    L_0x012b:
                        r0 = move-exception
                        monitor-exit(r2)     // Catch:{ all -> 0x012b }
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.an.AnonymousClass1.run():void");
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void k() throws AMapException {
        if (!ee.c(this.i)) {
            throw new AMapException(AMapException.ERROR_CONNECTION);
        }
    }

    /* access modifiers changed from: protected */
    public void b() throws AMapException {
        if (this.f != null) {
            au auVar = new au(this.i, "");
            auVar.a(this.i);
            List list = (List) auVar.c();
            if (this.c != null) {
                this.f.a(list);
            }
            synchronized (this.c) {
                Iterator it = this.f.a().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((OfflineMapProvince) it.next()).getCityList().iterator();
                    while (it2.hasNext()) {
                        OfflineMapCity offlineMapCity = (OfflineMapCity) it2.next();
                        for (am amVar : this.c) {
                            if (offlineMapCity.getPinyin().equals(amVar.getPinyin())) {
                                String version = amVar.getVersion();
                                if (amVar.getState() != 4 || d.length() <= 0 || !a(d, version)) {
                                    amVar.setCity(offlineMapCity.getCity());
                                    amVar.setUrl(offlineMapCity.getUrl());
                                    amVar.setAdcode(offlineMapCity.getAdcode());
                                    amVar.setVersion(offlineMapCity.getVersion());
                                    amVar.setSize(offlineMapCity.getSize());
                                    amVar.setCode(offlineMapCity.getCode());
                                    amVar.setJianpin(offlineMapCity.getJianpin());
                                    amVar.setPinyin(offlineMapCity.getPinyin());
                                } else {
                                    amVar.j();
                                    amVar.setUrl(offlineMapCity.getUrl());
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean a(String str, String str2) {
        int i2 = 0;
        while (i2 < str2.length()) {
            try {
                if (str.charAt(i2) > str2.charAt(i2)) {
                    return true;
                }
                if (str.charAt(i2) < str2.charAt(i2)) {
                    return false;
                }
                i2++;
            } catch (Throwable th) {
                return false;
            }
        }
        return false;
    }

    public boolean b(String str) {
        if (i(str) == null) {
            return false;
        }
        return true;
    }

    public void c(String str) {
        am i2 = i(str);
        if (i2 != null) {
            d(i2);
            a(i2, true);
        } else if (this.l != null) {
            try {
                this.l.c(i2);
            } catch (Throwable th) {
                gf.b(th, "OfflineDownloadManager", "remove");
            }
        }
    }

    public void a(am amVar) {
        a(amVar, false);
    }

    private void a(final am amVar, final boolean z) {
        if (this.g == null) {
            this.g = new at(this.i);
        }
        if (this.p == null) {
            this.p = Executors.newSingleThreadExecutor();
        }
        try {
            this.p.execute(new Runnable() {
                public void run() {
                    try {
                        if (amVar.c().equals(amVar.a)) {
                            if (an.this.l != null) {
                                an.this.l.c(amVar);
                            }
                        } else if (amVar.getState() == 7 || amVar.getState() == -1) {
                            an.this.g.a(amVar);
                            if (z && an.this.l != null) {
                                an.this.l.c(amVar);
                            }
                        } else {
                            an.this.g.a(amVar);
                            if (an.this.l != null) {
                                an.this.l.c(amVar);
                            }
                        }
                    } catch (Throwable th) {
                        gf.b(th, "requestDelete", "removeExcecRunnable");
                    }
                }
            });
        } catch (Throwable th) {
            gf.b(th, "requestDelete", "removeExcecRunnable");
        }
    }

    public void b(am amVar) {
        try {
            if (this.m != null) {
                this.m.a(amVar, this.i, null);
            }
        } catch (fn e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public void c(am amVar) {
        if (this.f != null) {
            this.f.a(amVar);
        }
        if (this.e != null) {
            Message obtainMessage = this.e.obtainMessage();
            obtainMessage.obj = amVar;
            this.e.sendMessage(obtainMessage);
        }
    }

    public void c() {
        synchronized (this.c) {
            for (am amVar : this.c) {
                if (amVar.c().equals(amVar.c) || amVar.c().equals(amVar.b)) {
                    d(amVar);
                    amVar.g();
                }
            }
        }
    }

    public void d() {
        synchronized (this.c) {
            Iterator it = this.c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                am amVar = (am) it.next();
                if (amVar.c().equals(amVar.c)) {
                    amVar.g();
                    break;
                }
            }
        }
    }

    public void e() {
        if (this.o != null && !this.o.isShutdown()) {
            this.o.shutdownNow();
        }
        if (this.q != null && !this.q.isShutdown()) {
            this.q.shutdownNow();
        }
        if (this.h != null) {
            if (this.h.isAlive()) {
                this.h.interrupt();
            }
            this.h = null;
        }
        if (this.e != null) {
            this.e.removeCallbacksAndMessages(null);
            this.e = null;
        }
        if (this.m != null) {
            this.m.b();
        }
        if (this.f != null) {
            this.f.g();
        }
        f();
        this.j = true;
        g();
    }

    public static void f() {
        k = null;
        b = true;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.amap.api.mapcore.util.am i(java.lang.String r6) {
        /*
            r5 = this;
            r1 = 0
            if (r6 == 0) goto L_0x000a
            int r0 = r6.length()
            r2 = 1
            if (r0 >= r2) goto L_0x000c
        L_0x000a:
            r0 = r1
        L_0x000b:
            return r0
        L_0x000c:
            java.util.List<com.amap.api.mapcore.util.am> r2 = r5.c
            monitor-enter(r2)
            java.util.List<com.amap.api.mapcore.util.am> r0 = r5.c     // Catch:{ all -> 0x0037 }
            java.util.Iterator r3 = r0.iterator()     // Catch:{ all -> 0x0037 }
        L_0x0015:
            boolean r0 = r3.hasNext()     // Catch:{ all -> 0x0037 }
            if (r0 == 0) goto L_0x003a
            java.lang.Object r0 = r3.next()     // Catch:{ all -> 0x0037 }
            com.amap.api.mapcore.util.am r0 = (com.amap.api.mapcore.util.am) r0     // Catch:{ all -> 0x0037 }
            java.lang.String r4 = r0.getCity()     // Catch:{ all -> 0x0037 }
            boolean r4 = r6.equals(r4)     // Catch:{ all -> 0x0037 }
            if (r4 != 0) goto L_0x0035
            java.lang.String r4 = r0.getPinyin()     // Catch:{ all -> 0x0037 }
            boolean r4 = r6.equals(r4)     // Catch:{ all -> 0x0037 }
            if (r4 == 0) goto L_0x0015
        L_0x0035:
            monitor-exit(r2)     // Catch:{ all -> 0x0037 }
            goto L_0x000b
        L_0x0037:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0037 }
            throw r0
        L_0x003a:
            monitor-exit(r2)     // Catch:{ all -> 0x0037 }
            r0 = r1
            goto L_0x000b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.an.i(java.lang.String):com.amap.api.mapcore.util.am");
    }

    private am j(String str) {
        if (str == null || str.length() < 1) {
            return null;
        }
        synchronized (this.c) {
            for (am amVar : this.c) {
                if (str.equals(amVar.getCode())) {
                    return amVar;
                }
            }
            return null;
        }
    }

    public void d(String str) throws AMapException {
        am i2 = i(str);
        if (str == null || str.length() < 1 || i2 == null) {
            throw new AMapException("无效的参数 - IllegalArgumentException");
        }
        f(i2);
    }

    public void e(String str) throws AMapException {
        am j2 = j(str);
        if (j2 != null) {
            f(j2);
            return;
        }
        throw new AMapException("无效的参数 - IllegalArgumentException");
    }

    private void f(final am amVar) throws AMapException {
        k();
        if (amVar == null) {
            throw new AMapException("无效的参数 - IllegalArgumentException");
        }
        if (this.q == null) {
            this.q = Executors.newSingleThreadExecutor();
        }
        try {
            this.q.execute(new Runnable() {
                public void run() {
                    try {
                        if (an.this.j) {
                            an.this.k();
                            ao aoVar = (ao) new ap(an.this.i, an.d).c();
                            if (aoVar != null) {
                                an.this.j = false;
                                if (aoVar.a()) {
                                    an.this.b();
                                }
                            }
                        }
                        amVar.setVersion(an.d);
                        amVar.f();
                    } catch (AMapException e) {
                        ThrowableExtension.printStackTrace(e);
                    } catch (Throwable th) {
                        gf.b(th, "OfflineDownloadManager", "startDownloadRunnable");
                    }
                }
            });
        } catch (Throwable th) {
            gf.b(th, "startDownload", "downloadExcecRunnable");
        }
    }

    public void d(am amVar) {
        if (this.m != null) {
            this.m.a((av) amVar);
        }
    }

    public void e(am amVar) {
        if (this.m != null) {
            this.m.b(amVar);
        }
    }

    public void a(a aVar) {
        this.l = aVar;
    }

    public void g() {
        synchronized (this) {
            this.l = null;
        }
    }

    public String f(String str) {
        String str2 = "";
        if (str == null) {
            return str2;
        }
        am i2 = i(str);
        if (i2 != null) {
            return i2.getAdcode();
        }
        return str2;
    }

    public static void g(String str) {
        a = str;
    }
}
