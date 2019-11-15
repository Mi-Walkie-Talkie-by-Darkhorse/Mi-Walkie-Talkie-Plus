package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.maps.model.MyLocationStyle;
import com.xiaomi.mistatistic.sdk.controller.j.b;
import com.xiaomi.mistatistic.sdk.data.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ABTestManager */
public class a {
    private static int a = 0;
    private static volatile a c;
    /* access modifiers changed from: private */
    public Context b;

    private a() {
        try {
            this.b = c.a();
        } catch (Exception e) {
            h.a("ABTestManager initialize  Exception:", (Throwable) e);
        }
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (c == null) {
                c = new a();
            }
            aVar = c;
        }
        return aVar;
    }

    public void b() {
        try {
            long a2 = k.a(this.b, "deploy_last_time", 0);
            h.b("ABTEST", String.format("abTest check config lastTime %d", new Object[]{Long.valueOf(a2)}));
            if (a2 == 0 || q.a(a2, 1800000)) {
                h.b("ABTEST", "更新数据");
                new Thread(new Runnable() {
                    public void run() {
                        a.b(a.this.b, (b) new b() {
                            public void a(String str) {
                                a.this.a(str);
                            }
                        });
                    }
                }).start();
                return;
            }
            h.b("ABTEST", "没到更新时间, 从本地拿已缓存数据");
        } catch (Exception e) {
            h.a("updateABTestConfig Exception:", (Throwable) e);
        }
    }

    /* access modifiers changed from: private */
    public void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.getInt(MyLocationStyle.ERROR_CODE) != 0 || TextUtils.isEmpty(str)) {
                h.a("ABTEST", "Error to getServiceDate the error:" + jSONObject.getInt(MyLocationStyle.ERROR_CODE));
                a(0);
                return;
            }
            h.b("ABTEST", "获取数据解析JSON");
            JSONArray jSONArray = jSONObject.getJSONArray("result");
            a(System.currentTimeMillis());
            if (jSONArray != null && jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    int i2 = jSONObject2.getInt("experiment_id");
                    int i3 = jSONObject2.getInt("status");
                    Boolean valueOf = Boolean.valueOf(jSONObject2.getBoolean("isAbTest"));
                    a(i2, i3);
                    a(i2, valueOf);
                    JSONObject optJSONObject = jSONObject2.optJSONObject("content");
                    if (optJSONObject != null && optJSONObject.length() > 0) {
                        Iterator keys = optJSONObject.keys();
                        while (keys.hasNext()) {
                            String obj = keys.next().toString();
                            b(i2, obj, optJSONObject.getString(obj));
                        }
                    }
                }
            }
        } catch (Exception e) {
            h.a("ABTEST", "Error to getControlVarValue the exception ", (Throwable) e);
        }
    }

    private String a(int i) {
        return i + "-" + "status";
    }

    public String a(int i, String str, String str2) {
        try {
            int a2 = k.a(this.b, a(i), 0);
            if (a2 == -1 || a2 == 1 || a2 == 3) {
                h.b("ABTEST", "3种无需获取分组状态:" + a2);
                return str2;
            }
            String a3 = k.a(this.b, String.valueOf(i), "");
            if (TextUtils.isEmpty(a3)) {
                h.b("ABTEST", "experimentId 找不到对象");
                return str2;
            }
            String[] split = a3.split("-");
            if (split.length <= 1 || !str.equals(split[0])) {
                h.b("ABTEST", String.format("分组异常 controlKey 不匹配:%s---%s", new Object[]{a3, str}));
                return str2;
            }
            if (a2 == 2) {
                String str3 = i + "-" + a3;
                h.b("ABTEST", String.format("customKey:%s", new Object[]{str3}));
                b(str3, i);
            }
            return split[1];
        } catch (Exception e) {
            h.a("ABTEST", "Exception in getControlVarValue", (Throwable) e);
            return str2;
        }
    }

    private boolean b(int i) {
        try {
            int a2 = k.a(this.b, a(i), 0);
            if (a2 == 0 || a2 == -1 || a2 == 1 || a2 == 3 || a2 == 4) {
                h.b("ABTEST", "4种无打点状态:" + a2);
                return false;
            } else if (k.a(this.b, i + "-" + "isAbTest")) {
                h.b("ABTEST", "流量内，打点");
                return true;
            } else {
                h.b("ABTEST", "流量外");
                return false;
            }
        } catch (Exception e) {
            h.a("ABTEST", "Exception in getControlVarValue", (Throwable) e);
            return false;
        }
    }

    private void a(long j) {
        k.b(this.b, "deploy_last_time", j);
    }

    private void a(int i, int i2) {
        k.b(this.b, a(i), i2);
    }

    private void a(int i, Boolean bool) {
        k.a(this.b, i + "-" + "isAbTest", bool.booleanValue());
    }

    private void b(int i, String str, String str2) {
        k.b(this.b, String.valueOf(i), str + "-" + str2);
    }

    private void b(String str, int i) {
        if (b(i)) {
            LocalEventRecorder.insertEvent(new e("mistat_metrics", str, null));
        }
    }

    private static boolean a(int i, HashMap<String, String> hashMap) {
        if (hashMap != null && hashMap.size() > 0) {
            return true;
        }
        h.d("ABTEST", String.format("AbTest local configuration has not been completed exid:%d", new Object[]{Integer.valueOf(i)}));
        return false;
    }

    public void a(String str, int i) {
        if (b(i)) {
            HashMap c2 = c(i);
            if (a(i, c2)) {
                LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.b("mistat_metrics", "event", str, 1, (Map<String, String>) c2));
            }
        }
    }

    public void a(String str, long j, int i) {
        if (b(i)) {
            HashMap c2 = c(i);
            if (a(i, c2)) {
                LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.b("mistat_metrics", "count", str, j, (Map<String, String>) c2));
            }
        }
    }

    public void a(String str, String str2, int i) {
        if (b(i)) {
            HashMap c2 = c(i);
            if (a(i, c2)) {
                LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.b("mistat_metrics", "property", str, str2, (Map<String, String>) c2));
            }
        }
    }

    public void b(String str, long j, int i) {
        if (b(i)) {
            HashMap c2 = c(i);
            if (a(i, c2)) {
                LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.b("mistat_metrics", "numeric", str, j, (Map<String, String>) c2));
            }
        }
    }

    public void b(String str, String str2, int i) {
        if (b(i)) {
            LocalEventRecorder.insertEvent(new e("mistat_metrics", i + "-" + str + "-" + str2, null));
            c(str, str2, i);
        }
    }

    private HashMap<String, String> c(int i) {
        int i2 = 0;
        HashMap<String, String> hashMap = new HashMap<>();
        try {
            String a2 = k.a(this.b, String.valueOf(i), "");
            String[] split = a2.split("-");
            if (TextUtils.isEmpty(a2) || split.length <= 1) {
                JSONArray jSONArray = new JSONArray(k.a(this.b, "mistat_group", "[]"));
                if (jSONArray != null && jSONArray.length() > 0) {
                    while (true) {
                        int i3 = i2;
                        if (i3 >= jSONArray.length()) {
                            break;
                        }
                        JSONObject jSONObject = (JSONObject) jSONArray.get(i3);
                        if (i == jSONObject.optInt("experiment_id")) {
                            hashMap.put("control_key", jSONObject.optString("control_key"));
                            hashMap.put("control_value", jSONObject.optString("control_value"));
                            hashMap.put("abtest_category", "mistat_group");
                        }
                        i2 = i3 + 1;
                    }
                }
                return hashMap;
            }
            hashMap.put("control_key", split[0]);
            hashMap.put("control_value", split[1]);
            hashMap.put("abtest_category", "mistat_abtest");
            return hashMap;
        } catch (Exception e) {
            h.a("ABTEST", "getGroupData exception", (Throwable) e);
        }
    }

    private void c(String str, String str2, int i) {
        try {
            String a2 = k.a(this.b, "mistat_group", "");
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (!TextUtils.isEmpty(a2)) {
                JSONArray jSONArray2 = new JSONArray(a2);
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    arrayList.add(Integer.valueOf(((JSONObject) jSONArray2.get(i2)).optInt("experiment_id")));
                }
                if (!arrayList.contains(Integer.valueOf(i))) {
                    jSONObject.put("experiment_id", i);
                    jSONObject.put("control_key", str);
                    jSONObject.put("control_value", str2);
                }
                jSONArray = jSONArray2;
            } else {
                jSONObject.put("experiment_id", i);
                jSONObject.put("control_key", str);
                jSONObject.put("control_value", str2);
            }
            jSONArray.put(jSONObject);
            k.b(this.b, "mistat_group", jSONArray.toString());
        } catch (Exception e) {
            h.a("ABTEST", "updatePreGroups exception", (Throwable) e);
        }
    }

    /* access modifiers changed from: private */
    public static void b(Context context, b bVar) {
        TreeMap treeMap = new TreeMap();
        treeMap.put("app_id", c.b());
        treeMap.put("device_id", e.a(context));
        treeMap.put("package_name", context.getPackageName());
        h.a("ABTEST", "ServiceData the parameters: " + treeMap);
        try {
            j.a(context, "http://abtest.mistat.xiaomi.com/experiments", (Map<String, String>) treeMap, bVar);
        } catch (Exception e) {
            a++;
            h.b("ABTEST", String.format("retry %d, failed to getServiceDate, exception ", new Object[]{Integer.valueOf(a)}), (Throwable) e);
            if (a < 3) {
                b(context, bVar);
            } else {
                a = 0;
            }
        }
    }
}
