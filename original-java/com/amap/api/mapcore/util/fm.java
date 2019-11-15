package com.amap.api.mapcore.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.maps.model.LatLng;
import com.amap.api.trace.LBSTraceClient;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: TraceResultPool */
public class fm {
    private static fm c = null;
    private String a;
    private Map<String, a> b;

    /* compiled from: TraceResultPool */
    class a {
        private int b = 0;
        private int c = 0;
        private int d = 0;
        private int e = 0;
        private int f = 0;
        private HashMap<Integer, List<LatLng>> g;
        private List<LatLng> h = new ArrayList();

        public a(int i, int i2, int i3, HashMap<Integer, List<LatLng>> hashMap) {
            this.b = i2;
            this.g = hashMap;
            this.c = i;
            this.e = i3;
        }

        public HashMap<Integer, List<LatLng>> a() {
            return this.g;
        }

        public void a(Handler handler) {
            int i = this.d;
            while (true) {
                int i2 = i;
                if (i2 > this.b) {
                    break;
                }
                List list = (List) this.g.get(Integer.valueOf(i2));
                if (list == null) {
                    break;
                }
                this.h.addAll(list);
                a(handler, list);
                i = i2 + 1;
            }
            if (this.d == this.b + 1) {
                b(handler);
            }
        }

        private void a(Handler handler, List<LatLng> list) {
            Message obtainMessage = handler.obtainMessage();
            obtainMessage.obj = list;
            obtainMessage.what = 100;
            obtainMessage.arg1 = this.d;
            Bundle bundle = new Bundle();
            bundle.putInt("lineID", this.c);
            obtainMessage.setData(bundle);
            handler.sendMessage(obtainMessage);
            this.d++;
            this.f++;
        }

        private void b(Handler handler) {
            if (this.f > 0) {
                int a2 = fj.a(this.h);
                Message obtainMessage = handler.obtainMessage();
                obtainMessage.obj = this.h;
                obtainMessage.what = 101;
                obtainMessage.arg1 = a2;
                obtainMessage.arg2 = this.e;
                Bundle bundle = new Bundle();
                bundle.putInt("lineID", this.c);
                obtainMessage.setData(bundle);
                handler.sendMessage(obtainMessage);
                return;
            }
            fm.this.a(handler, this.c, LBSTraceClient.MIN_GRASP_POINT_ERROR);
        }
    }

    public fm() {
        this.a = "TraceResultPool";
        this.b = null;
        this.b = Collections.synchronizedMap(new HashMap());
    }

    public static fm a() {
        if (c == null) {
            synchronized (fm.class) {
                if (c == null) {
                    c = new fm();
                }
            }
        }
        return c;
    }

    public synchronized void a(String str, int i, List<LatLng> list) {
        if (this.b != null) {
            ((a) this.b.get(str)).a().put(Integer.valueOf(i), list);
        }
    }

    public synchronized void a(String str, int i, int i2, int i3) {
        if (this.b != null) {
            this.b.put(str, new a(i, i2, i3, new HashMap()));
        }
    }

    public synchronized a a(String str) {
        a aVar;
        if (this.b != null) {
            aVar = (a) this.b.get(str);
        } else {
            aVar = null;
        }
        return aVar;
    }

    public void a(Handler handler, int i, String str) {
        Message obtainMessage = handler.obtainMessage();
        obtainMessage.obj = str;
        obtainMessage.what = 102;
        Bundle bundle = new Bundle();
        bundle.putInt("lineID", i);
        obtainMessage.setData(bundle);
        handler.sendMessage(obtainMessage);
    }
}
