package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.mi.milinkforgame.sdk.data.Const;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.d.a;
import com.xiaomi.mistatistic.sdk.controller.j.b;
import com.xiaomi.mistatistic.sdk.data.HttpEvent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.TreeMap;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: HttpEventController */
public class g {
    private static g a = new g();
    private HttpEventFilter b = new HttpEventFilter() {
        public HttpEvent onEvent(HttpEvent httpEvent) {
            String url = httpEvent.getUrl();
            if (TextUtils.isEmpty(url)) {
                return null;
            }
            httpEvent.setUrl(url.split("\\?")[0]);
            return httpEvent;
        }
    };
    /* access modifiers changed from: private */
    public List<HttpEvent> c = new LinkedList();
    private Handler d = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW /*1023*/:
                    d.b().a((a) new a() {
                        public void a() {
                            final List subList;
                            if (g.this.c()) {
                                try {
                                    List b = g.this.b();
                                    int size = b.size();
                                    if (size > 0) {
                                        for (int i = 0; i < size; i += 30) {
                                            if (i + 30 >= size) {
                                                subList = b.subList(i, size);
                                            } else {
                                                subList = b.subList(i, i + 30);
                                            }
                                            g.this.a(subList, (b) new b() {
                                                public void a(String str) {
                                                    boolean z = false;
                                                    h.a("http data complete, result=" + str);
                                                    try {
                                                        if (!TextUtils.isEmpty(str)) {
                                                            JSONObject jSONObject = new JSONObject(str);
                                                            if ("ok".equals(jSONObject.getString("status"))) {
                                                                g.this.a(jSONObject);
                                                                z = true;
                                                            }
                                                        }
                                                        if (z) {
                                                            synchronized (g.this.c) {
                                                                h.a("upload success, synchronizing remove http events " + subList.size());
                                                                g.this.c.removeAll(subList);
                                                            }
                                                        }
                                                    } catch (Exception e) {
                                                        h.a("upload events response exception:", (Throwable) e);
                                                    }
                                                }
                                            });
                                        }
                                    }
                                } catch (IOException e) {
                                    h.a("", (Throwable) e);
                                } catch (JSONException e2) {
                                    h.a("", (Throwable) e2);
                                }
                            } else if (g.this.d()) {
                                try {
                                    g.this.a(new JSONArray().toString(), (b) new b() {
                                        public void a(String str) {
                                            h.a("upload empty http events result:" + str);
                                        }
                                    });
                                } catch (IOException e3) {
                                    h.a("", (Throwable) e3);
                                } catch (JSONException e4) {
                                    h.a("", (Throwable) e4);
                                }
                            }
                        }
                    });
                    return;
                default:
                    return;
            }
        }
    };

    public static g a() {
        return a;
    }

    private g() {
    }

    public void a(HttpEventFilter httpEventFilter) {
        this.b = httpEventFilter;
    }

    public List<HttpEvent> b() {
        LinkedList linkedList;
        synchronized (this.c) {
            linkedList = new LinkedList(this.c);
        }
        return linkedList;
    }

    public boolean c() {
        if (System.currentTimeMillis() <= k.a(c.a(), "rt_ban_time", 0) || Math.random() * 10000.0d > ((double) k.a(c.a(), "rt_upload_rate", 10000))) {
            return false;
        }
        return true;
    }

    public boolean d() {
        return System.currentTimeMillis() - k.a(c.a(), "rt_update_time", 0) > 86400000;
    }

    public void a(HttpEvent httpEvent) {
        Context a2 = c.a();
        if (a2 == null) {
            h.a("add http event without initialization.");
        } else if (BuildSetting.isDisabled(a2)) {
            h.a("disabled the http event upload");
        } else if (!a(httpEvent.getUrl()) || BuildSetting.isSelfStats()) {
            if (this.b != null && !httpEvent.getUrl().equals(f())) {
                httpEvent = this.b.onEvent(httpEvent);
            }
            if (httpEvent != null && !TextUtils.isEmpty(httpEvent.getUrl())) {
                synchronized (this.c) {
                    this.c.add(httpEvent);
                    if (this.c.size() > 100) {
                        this.c.remove(0);
                    }
                }
                if (!this.d.hasMessages(GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW) && !httpEvent.getUrl().equals(f())) {
                    com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
                    this.d.sendEmptyMessageDelayed(GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW, e());
                }
            }
        }
    }

    public long e() {
        return k.a(c.a(), "rt_upload_delay", 300000);
    }

    private String f() {
        return BuildSetting.isTest() ? "http://10.99.168.145:8097/realtime_network" : "https://data.mistat.xiaomi.com/realtime_network";
    }

    private boolean a(String str) {
        if (str.equals(f()) || str.equals("https://data.mistat.xiaomi.com/micrash") || str.equals("https://data.mistat.xiaomi.com/mistats") || str.equals("http://data.mistat.xiaomi.com/mistats/v2") || str.equals("http://abtest.mistat.xiaomi.com/experiments")) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: private */
    public void a(List<HttpEvent> list, b bVar) throws IOException, JSONException {
        HashMap hashMap = new HashMap();
        if (list != null && !list.isEmpty()) {
            for (HttpEvent httpEvent : list) {
                String url = httpEvent.getUrl();
                if (!TextUtils.isEmpty(url)) {
                    if (hashMap.containsKey(url)) {
                        ((List) hashMap.get(url)).add(httpEvent);
                    } else {
                        hashMap.put(url, new ArrayList());
                        ((List) hashMap.get(url)).add(httpEvent);
                    }
                }
            }
            if (!hashMap.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (String str : hashMap.keySet()) {
                    JSONArray jSONArray2 = new JSONArray();
                    for (HttpEvent json : (List) hashMap.get(str)) {
                        jSONArray2.put(json.toJSON());
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("url", str);
                    jSONObject.put(Const.PARAM_DATA, jSONArray2);
                    jSONArray.put(jSONObject);
                }
                a(jSONArray.toString(), bVar);
            }
        }
    }

    public void a(String str, b bVar) throws IOException, JSONException {
        TreeMap treeMap = new TreeMap();
        treeMap.put("app_id", c.b());
        treeMap.put("app_package", c.g());
        treeMap.put("app_key", c.c());
        treeMap.put("device_uuid", new e().a());
        treeMap.put("device_os", "android" + VERSION.SDK_INT);
        treeMap.put("device_model", Build.MODEL);
        treeMap.put(Constants.EXTRA_KEY_APP_VERSION, c.e());
        treeMap.put("app_channel", c.d());
        treeMap.put(Values.TIME, String.valueOf(System.currentTimeMillis()));
        treeMap.put("net_value", str);
        j.a(f(), treeMap, bVar);
    }

    public void a(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(Const.PARAM_DATA)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(Const.PARAM_DATA);
            int optInt = jSONObject2.optInt("sample_rate", 10000);
            int optInt2 = jSONObject2.optInt("delay", 300000);
            long optLong = jSONObject2.optLong("ban_time", 0);
            k.b(c.a(), "rt_upload_rate", optInt);
            k.b(c.a(), "rt_upload_delay", (long) optInt2);
            k.b(c.a(), "rt_ban_time", optLong);
            k.b(c.a(), "rt_update_time", System.currentTimeMillis());
        }
    }
}
