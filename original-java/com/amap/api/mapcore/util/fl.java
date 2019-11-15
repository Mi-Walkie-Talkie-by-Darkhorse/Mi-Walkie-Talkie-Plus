package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.amap.api.maps.CoordinateConverter;
import com.amap.api.maps.LocationSource.OnLocationChangedListener;
import com.amap.api.maps.model.LatLng;
import com.amap.api.trace.LBSTraceBase;
import com.amap.api.trace.LBSTraceClient;
import com.amap.api.trace.TraceListener;
import com.amap.api.trace.TraceLocation;
import com.amap.api.trace.TraceStatusListener;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: TraceManager */
public class fl implements OnLocationChangedListener, LBSTraceBase {
    /* access modifiers changed from: private */
    public Context a;
    /* access modifiers changed from: private */
    public CoordinateConverter b;
    private ExecutorService c;
    /* access modifiers changed from: private */
    public ExecutorService d;
    private long e = 2000;
    private int f = 5;
    /* access modifiers changed from: private */
    public TraceStatusListener g;
    private ag h;
    private List<TraceLocation> i = new ArrayList();
    private int j = 0;
    private int k = 0;
    private long l = 0;
    /* access modifiers changed from: private */
    public c m;

    /* compiled from: TraceManager */
    class a implements Runnable {
        private List<TraceLocation> b = new ArrayList();
        private int c;
        private int d;
        private List<TraceLocation> e;
        private String f;
        private TraceListener g;

        public a(int i, List<TraceLocation> list, int i2, TraceListener traceListener) {
            this.c = i2;
            this.d = i;
            this.e = list;
            this.f = dx.a();
            this.g = traceListener;
        }

        /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r15 = this;
                r10 = 500(0x1f4, float:7.0E-43)
                r6 = 0
                r14 = 2
                r8 = 0
                com.amap.api.mapcore.util.fl r0 = com.amap.api.mapcore.util.fl.this     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.mapcore.util.fl$c r0 = r0.m     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.trace.TraceListener r1 = r15.g     // Catch:{ Throwable -> 0x0061 }
                r0.a(r1)     // Catch:{ Throwable -> 0x0061 }
                int r1 = r15.a()     // Catch:{ Throwable -> 0x0061 }
                java.util.List<com.amap.api.trace.TraceLocation> r0 = r15.e     // Catch:{ Throwable -> 0x0061 }
                if (r0 == 0) goto L_0x0021
                java.util.List<com.amap.api.trace.TraceLocation> r0 = r15.e     // Catch:{ Throwable -> 0x0061 }
                int r0 = r0.size()     // Catch:{ Throwable -> 0x0061 }
                if (r0 >= r14) goto L_0x0033
            L_0x0021:
                com.amap.api.mapcore.util.fm r0 = com.amap.api.mapcore.util.fm.a()     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.mapcore.util.fl r1 = com.amap.api.mapcore.util.fl.this     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.mapcore.util.fl$c r1 = r1.m     // Catch:{ Throwable -> 0x0061 }
                int r2 = r15.d     // Catch:{ Throwable -> 0x0061 }
                java.lang.String r3 = "轨迹点太少或距离太近,轨迹纠偏失败"
                r0.a(r1, r2, r3)     // Catch:{ Throwable -> 0x0061 }
            L_0x0032:
                return
            L_0x0033:
                java.util.List<com.amap.api.trace.TraceLocation> r0 = r15.e     // Catch:{ Throwable -> 0x0061 }
                java.util.Iterator r2 = r0.iterator()     // Catch:{ Throwable -> 0x0061 }
            L_0x0039:
                boolean r0 = r2.hasNext()     // Catch:{ Throwable -> 0x0061 }
                if (r0 == 0) goto L_0x0066
                java.lang.Object r0 = r2.next()     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.trace.TraceLocation r0 = (com.amap.api.trace.TraceLocation) r0     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.trace.TraceLocation r0 = r0.copy()     // Catch:{ Throwable -> 0x0061 }
                if (r0 == 0) goto L_0x0039
                double r4 = r0.getLatitude()     // Catch:{ Throwable -> 0x0061 }
                int r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r3 <= 0) goto L_0x0039
                double r4 = r0.getLongitude()     // Catch:{ Throwable -> 0x0061 }
                int r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r3 <= 0) goto L_0x0039
                java.util.List<com.amap.api.trace.TraceLocation> r3 = r15.b     // Catch:{ Throwable -> 0x0061 }
                r3.add(r0)     // Catch:{ Throwable -> 0x0061 }
                goto L_0x0039
            L_0x0061:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                goto L_0x0032
            L_0x0066:
                java.util.List<com.amap.api.trace.TraceLocation> r0 = r15.b     // Catch:{ Throwable -> 0x0061 }
                int r0 = r0.size()     // Catch:{ Throwable -> 0x0061 }
                r2 = 500(0x1f4, float:7.0E-43)
                int r0 = r0 + -2
                int r11 = r0 / r2
                com.amap.api.mapcore.util.fm r0 = com.amap.api.mapcore.util.fm.a()     // Catch:{ Throwable -> 0x0061 }
                java.lang.String r2 = r15.f     // Catch:{ Throwable -> 0x0061 }
                int r3 = r15.d     // Catch:{ Throwable -> 0x0061 }
                r0.a(r2, r3, r11, r1)     // Catch:{ Throwable -> 0x0061 }
                r0 = r10
                r7 = r8
            L_0x007f:
                if (r7 > r11) goto L_0x0032
                if (r7 != r11) goto L_0x0137
                java.util.List<com.amap.api.trace.TraceLocation> r0 = r15.b     // Catch:{ Throwable -> 0x0061 }
                int r0 = r0.size()     // Catch:{ Throwable -> 0x0061 }
                r9 = r0
            L_0x008a:
                java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ Throwable -> 0x0061 }
                r3.<init>()     // Catch:{ Throwable -> 0x0061 }
                r1 = r8
            L_0x0090:
                if (r1 >= r9) goto L_0x00f6
                java.util.List<com.amap.api.trace.TraceLocation> r0 = r15.b     // Catch:{ Throwable -> 0x0061 }
                r2 = 0
                java.lang.Object r0 = r0.remove(r2)     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.trace.TraceLocation r0 = (com.amap.api.trace.TraceLocation) r0     // Catch:{ Throwable -> 0x0061 }
                if (r0 != 0) goto L_0x00a1
            L_0x009d:
                int r0 = r1 + 1
                r1 = r0
                goto L_0x0090
            L_0x00a1:
                int r2 = r15.c     // Catch:{ Throwable -> 0x0061 }
                r4 = 1
                if (r2 == r4) goto L_0x00e2
                int r2 = r15.c     // Catch:{ Throwable -> 0x0061 }
                r4 = 3
                if (r2 != r4) goto L_0x00e6
                com.amap.api.mapcore.util.fl r2 = com.amap.api.mapcore.util.fl.this     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.maps.CoordinateConverter r2 = r2.b     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.maps.CoordinateConverter$CoordType r4 = com.amap.api.maps.CoordinateConverter.CoordType.BAIDU     // Catch:{ Throwable -> 0x0061 }
                r2.from(r4)     // Catch:{ Throwable -> 0x0061 }
            L_0x00b6:
                com.amap.api.maps.model.LatLng r2 = new com.amap.api.maps.model.LatLng     // Catch:{ Throwable -> 0x0061 }
                double r4 = r0.getLatitude()     // Catch:{ Throwable -> 0x0061 }
                double r12 = r0.getLongitude()     // Catch:{ Throwable -> 0x0061 }
                r2.<init>(r4, r12)     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.mapcore.util.fl r4 = com.amap.api.mapcore.util.fl.this     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.maps.CoordinateConverter r4 = r4.b     // Catch:{ Throwable -> 0x0061 }
                r4.coord(r2)     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.mapcore.util.fl r2 = com.amap.api.mapcore.util.fl.this     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.maps.CoordinateConverter r2 = r2.b     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.maps.model.LatLng r2 = r2.convert()     // Catch:{ Throwable -> 0x0061 }
                if (r2 == 0) goto L_0x00e2
                double r4 = r2.latitude     // Catch:{ Throwable -> 0x0061 }
                r0.setLatitude(r4)     // Catch:{ Throwable -> 0x0061 }
                double r4 = r2.longitude     // Catch:{ Throwable -> 0x0061 }
                r0.setLongitude(r4)     // Catch:{ Throwable -> 0x0061 }
            L_0x00e2:
                r3.add(r0)     // Catch:{ Throwable -> 0x0061 }
                goto L_0x009d
            L_0x00e6:
                int r2 = r15.c     // Catch:{ Throwable -> 0x0061 }
                if (r2 != r14) goto L_0x00b6
                com.amap.api.mapcore.util.fl r2 = com.amap.api.mapcore.util.fl.this     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.maps.CoordinateConverter r2 = r2.b     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.maps.CoordinateConverter$CoordType r4 = com.amap.api.maps.CoordinateConverter.CoordType.GPS     // Catch:{ Throwable -> 0x0061 }
                r2.from(r4)     // Catch:{ Throwable -> 0x0061 }
                goto L_0x00b6
            L_0x00f6:
                int r0 = r3.size()     // Catch:{ Throwable -> 0x0061 }
                if (r0 < r14) goto L_0x0134
                int r0 = r3.size()     // Catch:{ Throwable -> 0x0061 }
                if (r0 <= r10) goto L_0x0105
                r0 = r9
                goto L_0x007f
            L_0x0105:
                com.amap.api.mapcore.util.fk r0 = new com.amap.api.mapcore.util.fk     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.mapcore.util.fl r1 = com.amap.api.mapcore.util.fl.this     // Catch:{ Throwable -> 0x0061 }
                android.content.Context r1 = r1.a     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.mapcore.util.fl r2 = com.amap.api.mapcore.util.fl.this     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.mapcore.util.fl$c r2 = r2.m     // Catch:{ Throwable -> 0x0061 }
                int r4 = r15.c     // Catch:{ Throwable -> 0x0061 }
                java.lang.String r5 = r15.f     // Catch:{ Throwable -> 0x0061 }
                int r6 = r15.d     // Catch:{ Throwable -> 0x0061 }
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ Throwable -> 0x0061 }
                com.amap.api.mapcore.util.fl r1 = com.amap.api.mapcore.util.fl.this     // Catch:{ Throwable -> 0x0061 }
                java.util.concurrent.ExecutorService r1 = r1.d     // Catch:{ Throwable -> 0x0061 }
                r1.execute(r0)     // Catch:{ Throwable -> 0x0061 }
                int r7 = r7 + 1
                r0 = 50
                java.lang.Thread.sleep(r0)     // Catch:{ InterruptedException -> 0x012f }
            L_0x012c:
                r0 = r9
                goto L_0x007f
            L_0x012f:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x0061 }
                goto L_0x012c
            L_0x0134:
                r0 = r9
                goto L_0x007f
            L_0x0137:
                r9 = r0
                goto L_0x008a
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fl.a.run():void");
        }

        private int a() {
            if (this.e == null || this.e.size() == 0) {
                return 0;
            }
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (TraceLocation traceLocation : this.e) {
                if (traceLocation != null) {
                    if (((double) traceLocation.getSpeed()) < 0.01d) {
                        arrayList.add(traceLocation);
                    } else {
                        int a2 = a(arrayList) + i;
                        arrayList.clear();
                        i = a2;
                    }
                }
            }
            return i;
        }

        private int a(List<TraceLocation> list) {
            int i;
            int size = list.size();
            if (size <= 1) {
                return 0;
            }
            TraceLocation traceLocation = (TraceLocation) list.get(0);
            TraceLocation traceLocation2 = (TraceLocation) list.get(size - 1);
            if (traceLocation == null || traceLocation2 == null) {
                return 0;
            }
            if (traceLocation == null || traceLocation2 == null) {
                i = 0;
            } else {
                i = (int) ((traceLocation2.getTime() - traceLocation.getTime()) / 1000);
            }
            return i;
        }
    }

    /* compiled from: TraceManager */
    class b implements TraceListener {
        private final List<TraceLocation> b;

        public b(List<TraceLocation> list) {
            this.b = list;
        }

        public void onRequestFailed(int i, String str) {
            fl.this.g.onTraceStatus(this.b, null, str);
        }

        public void onTraceProcessing(int i, int i2, List<LatLng> list) {
        }

        public void onFinished(int i, List<LatLng> list, int i2, int i3) {
            fl.this.g.onTraceStatus(this.b, list, LBSTraceClient.TRACE_SUCCESS);
        }
    }

    /* compiled from: TraceManager */
    static class c extends Handler {
        private TraceListener a;

        public c(Looper looper) {
            super(looper);
        }

        public void a(TraceListener traceListener) {
            this.a = traceListener;
        }

        public void handleMessage(Message message) {
            try {
                if (this.a != null) {
                    Bundle data = message.getData();
                    if (data != null) {
                        int i = data.getInt("lineID");
                        switch (message.what) {
                            case 100:
                                this.a.onTraceProcessing(i, message.arg1, (List) message.obj);
                                return;
                            case 101:
                                this.a.onFinished(i, (List) message.obj, message.arg1, message.arg2);
                                return;
                            case 102:
                                this.a.onRequestFailed(i, (String) message.obj);
                                return;
                            default:
                                return;
                        }
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public fl(Context context) {
        this.a = context.getApplicationContext();
        this.b = new CoordinateConverter(this.a);
        this.c = Executors.newFixedThreadPool(1);
        this.m = new c(Looper.getMainLooper());
        this.d = Executors.newFixedThreadPool((Runtime.getRuntime().availableProcessors() * 2) + 3);
    }

    public void queryProcessedTrace(int i2, List<TraceLocation> list, int i3, TraceListener traceListener) {
        try {
            this.c.execute(new a(i2, list, i3, traceListener));
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setLocationInterval(long j2) {
        this.e = j2;
    }

    public void setTraceStatusInterval(int i2) {
        this.f = Math.max(i2, 2);
    }

    public void startTrace(TraceStatusListener traceStatusListener) {
        if (this.a == null) {
            Log.w("LBSTraceClient", "Context need to be initialized");
            return;
        }
        this.l = System.currentTimeMillis();
        this.g = traceStatusListener;
        if (this.h == null) {
            this.h = new ag(this.a);
            this.h.a(this.e);
            this.h.activate(this);
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLocationChanged(android.location.Location r12) {
        /*
            r11 = this;
            com.amap.api.trace.TraceStatusListener r0 = r11.g
            if (r0 == 0) goto L_0x005b
            long r0 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x00a3 }
            long r2 = r11.l     // Catch:{ Throwable -> 0x00a3 }
            long r2 = r0 - r2
            r4 = 30000(0x7530, double:1.4822E-319)
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 < 0) goto L_0x0021
            com.amap.api.trace.TraceStatusListener r2 = r11.g     // Catch:{ Throwable -> 0x00a3 }
            if (r2 == 0) goto L_0x0021
            com.amap.api.trace.TraceStatusListener r2 = r11.g     // Catch:{ Throwable -> 0x00a3 }
            r3 = 0
            r4 = 0
            java.lang.String r5 = "定位超时"
            r2.onTraceStatus(r3, r4, r5)     // Catch:{ Throwable -> 0x00a3 }
            r11.l = r0     // Catch:{ Throwable -> 0x00a3 }
        L_0x0021:
            android.os.Bundle r0 = r12.getExtras()     // Catch:{ Throwable -> 0x00a3 }
            java.lang.String r1 = "errorCode"
            int r1 = r0.getInt(r1)     // Catch:{ Throwable -> 0x00a3 }
            if (r1 == 0) goto L_0x005c
            java.lang.String r2 = "LBSTraceClient"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00a3 }
            r3.<init>()     // Catch:{ Throwable -> 0x00a3 }
            java.lang.String r4 = "Locate failed [errorCode:\""
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x00a3 }
            java.lang.StringBuilder r1 = r3.append(r1)     // Catch:{ Throwable -> 0x00a3 }
            java.lang.String r3 = "\"  errorInfo:"
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ Throwable -> 0x00a3 }
            java.lang.String r3 = "errorInfo"
            java.lang.String r0 = r0.getString(r3)     // Catch:{ Throwable -> 0x00a3 }
            java.lang.StringBuilder r0 = r1.append(r0)     // Catch:{ Throwable -> 0x00a3 }
            java.lang.String r1 = "\"]"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Throwable -> 0x00a3 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x00a3 }
            android.util.Log.w(r2, r0)     // Catch:{ Throwable -> 0x00a3 }
        L_0x005b:
            return
        L_0x005c:
            java.util.List<com.amap.api.trace.TraceLocation> r10 = r11.i     // Catch:{ Throwable -> 0x00a3 }
            monitor-enter(r10)     // Catch:{ Throwable -> 0x00a3 }
            java.util.List<com.amap.api.trace.TraceLocation> r0 = r11.i     // Catch:{ all -> 0x00a0 }
            com.amap.api.trace.TraceLocation r1 = new com.amap.api.trace.TraceLocation     // Catch:{ all -> 0x00a0 }
            double r2 = r12.getLatitude()     // Catch:{ all -> 0x00a0 }
            double r4 = r12.getLongitude()     // Catch:{ all -> 0x00a0 }
            float r6 = r12.getSpeed()     // Catch:{ all -> 0x00a0 }
            float r7 = r12.getBearing()     // Catch:{ all -> 0x00a0 }
            long r8 = r12.getTime()     // Catch:{ all -> 0x00a0 }
            r1.<init>(r2, r4, r6, r7, r8)     // Catch:{ all -> 0x00a0 }
            r0.add(r1)     // Catch:{ all -> 0x00a0 }
            int r0 = r11.j     // Catch:{ all -> 0x00a0 }
            int r0 = r0 + 1
            r11.j = r0     // Catch:{ all -> 0x00a0 }
            int r0 = r11.j     // Catch:{ all -> 0x00a0 }
            int r1 = r11.f     // Catch:{ all -> 0x00a0 }
            if (r0 != r1) goto L_0x009e
            int r0 = r11.k     // Catch:{ all -> 0x00a0 }
            int r1 = r11.j     // Catch:{ all -> 0x00a0 }
            int r0 = r0 + r1
            r11.k = r0     // Catch:{ all -> 0x00a0 }
            int r0 = r11.k     // Catch:{ all -> 0x00a0 }
            r11.a(r0)     // Catch:{ all -> 0x00a0 }
            long r0 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x00a0 }
            r11.l = r0     // Catch:{ all -> 0x00a0 }
            r0 = 0
            r11.j = r0     // Catch:{ all -> 0x00a0 }
        L_0x009e:
            monitor-exit(r10)     // Catch:{ all -> 0x00a0 }
            goto L_0x005b
        L_0x00a0:
            r0 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x00a0 }
            throw r0     // Catch:{ Throwable -> 0x00a3 }
        L_0x00a3:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x005b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fl.onLocationChanged(android.location.Location):void");
    }

    private void a(int i2) {
        ArrayList arrayList = new ArrayList(this.i.subList(0, i2));
        queryProcessedTrace(i2, arrayList, 1, new b(arrayList));
    }

    public void stopTrace() {
        a();
        synchronized (this.i) {
            if (this.i.size() > this.k) {
                int size = ((this.i.size() - this.k) / this.f) + 1;
                for (int i2 = 0; i2 < size; i2++) {
                    if (i2 == size - 1) {
                        a(this.i.size());
                    } else {
                        this.k += this.f;
                        a(this.k);
                    }
                }
            }
        }
    }

    private void a() {
        if (this.h != null) {
            this.h.deactivate();
            this.h = null;
        }
    }

    public void destroy() {
        try {
            a();
            if (this.c != null && !this.c.isShutdown()) {
                this.c.shutdownNow();
                this.c = null;
            }
            if (this.d != null && !this.d.isShutdown()) {
                this.d.shutdownNow();
                this.d = null;
            }
            synchronized (this.i) {
                if (this.i != null) {
                    this.i.clear();
                    this.i = null;
                }
            }
            this.g = null;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        this.a = null;
        this.b = null;
    }
}
