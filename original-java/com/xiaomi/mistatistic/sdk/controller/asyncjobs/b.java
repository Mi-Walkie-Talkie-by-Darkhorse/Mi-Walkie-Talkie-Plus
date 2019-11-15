package com.xiaomi.mistatistic.sdk.controller.asyncjobs;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.tencent.open.SocialConstants;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.mistatistic.sdk.BaseService;
import com.xiaomi.mistatistic.sdk.controller.f;
import com.xiaomi.mistatistic.sdk.controller.h;
import com.xiaomi.mistatistic.sdk.controller.l;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: RemoteDataPackingJob */
public class b implements com.xiaomi.mistatistic.sdk.controller.d.a {
    private static int a = 0;
    private long b;
    private a c;
    private HashMap<String, JSONObject> d = new HashMap<>();
    private HashMap<String, JSONObject> e = new HashMap<>();
    private ArrayList<String> f = new ArrayList<>();
    private JSONObject g = null;
    private long h = System.currentTimeMillis();

    /* compiled from: RemoteDataPackingJob */
    public interface a {
        void a(String str, long j, long j2, int i);
    }

    /* renamed from: com.xiaomi.mistatistic.sdk.controller.asyncjobs.b$b reason: collision with other inner class name */
    /* compiled from: RemoteDataPackingJob */
    public class C0067b {
        int a;
        /* access modifiers changed from: private */
        public JSONArray c;
        /* access modifiers changed from: private */
        public long d;
        /* access modifiers changed from: private */
        public long e;

        public C0067b(JSONArray jSONArray, long j, long j2, int i) {
            this.c = jSONArray;
            this.d = j;
            this.e = j2;
            this.a = i;
        }
    }

    public b(long j, a aVar) {
        this.b = j;
        this.c = aVar;
    }

    public void a() {
        try {
            C0067b a2 = a((long) FileTracerConfig.FOREVER);
            if (a2.c != null) {
                this.c.a(a2.c.toString(), a2.d, a2.e, a2.a);
            } else {
                this.c.a("", a2.d, a2.e, a2.a);
            }
            if (a2.a >= 500) {
                h.a(String.format("Packing %d events over MAX_PACKING_EVENT %d", new Object[]{Integer.valueOf(a2.a), Integer.valueOf(500)}));
                if (a < 50) {
                    new l().a();
                    a++;
                    return;
                }
                h.d("Packing, exceeded MAX_UPLOAD_TIMES 50");
                return;
            }
            a = 0;
        } catch (Exception e2) {
            h.a("remote data packing job execute exception:", (Throwable) e2);
            this.c.a("", 0, 0, 0);
        }
    }

    public C0067b a(long j) throws JSONException {
        long j2;
        SQLiteException e2;
        JSONArray jSONArray;
        long j3;
        JSONArray jSONArray2;
        JSONArray jSONArray3 = new JSONArray();
        long j4 = 0;
        long j5 = 0;
        f fVar = new f();
        fVar.b();
        b();
        this.h = System.currentTimeMillis();
        List a2 = fVar.a(j);
        if (a2 != null) {
            try {
                if (a2.size() > 0) {
                    h.a(String.format("Packing, get %d events from local DB", new Object[]{Integer.valueOf(a2.size())}));
                    long j6 = 0;
                    long j7 = 0;
                    int i = 0;
                    while (i < a2.size()) {
                        try {
                            StatEventPojo statEventPojo = (StatEventPojo) a2.get(i);
                            h.a("Packing: " + statEventPojo.toString());
                            if (j6 == 0) {
                                j6 = statEventPojo.timeStamp;
                                this.h = j6;
                            }
                            j7 = statEventPojo.timeStamp;
                            if (this.b > 0 && this.h - statEventPojo.timeStamp > this.b && this.g != null) {
                                b();
                                this.h = statEventPojo.timeStamp;
                            }
                            if (this.g == null) {
                                this.g = new JSONObject();
                                this.g.put("endTS", statEventPojo.timeStamp);
                                this.g.put("content", new JSONArray());
                                jSONArray3.put(this.g);
                            }
                            if ("mistat_session".equals(statEventPojo.category)) {
                                a(statEventPojo);
                            } else if ("mistat_pv".equals(statEventPojo.category)) {
                                b(statEventPojo);
                            } else {
                                if ("mistat_pt".equals(statEventPojo.category)) {
                                    c(statEventPojo);
                                } else {
                                    d(statEventPojo);
                                }
                            }
                            this.g.put("startTS", statEventPojo.timeStamp);
                            i++;
                        } catch (SQLiteException e3) {
                            e2 = e3;
                            long j8 = j7;
                            j4 = j6;
                            j2 = j8;
                            h.a("packing exception:", (Throwable) e2);
                            jSONArray2 = jSONArray3;
                            j3 = j4;
                            return new C0067b(jSONArray2, j2, j3, 0);
                        }
                    }
                    h.a("Packing complete, total " + a2.size() + " records were packed and to be uploaded");
                    j5 = j7;
                    j4 = j6;
                    jSONArray = jSONArray3;
                    j3 = j4;
                    jSONArray2 = jSONArray;
                    j2 = j5;
                    return new C0067b(jSONArray2, j2, j3, 0);
                }
            } catch (SQLiteException e4) {
                SQLiteException sQLiteException = e4;
                j2 = 0;
                e2 = sQLiteException;
                h.a("packing exception:", (Throwable) e2);
                jSONArray2 = jSONArray3;
                j3 = j4;
                return new C0067b(jSONArray2, j2, j3, 0);
            }
        }
        h.a("No data available to be packed");
        jSONArray = null;
        j3 = j4;
        jSONArray2 = jSONArray;
        j2 = j5;
        return new C0067b(jSONArray2, j2, j3, 0);
    }

    private void b() {
        this.g = null;
        this.d.clear();
        this.f.clear();
        this.e.clear();
    }

    private void a(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject = (JSONObject) this.d.get("mistat_session");
        if (jSONObject == null) {
            JSONArray jSONArray = new JSONArray();
            jSONObject = new JSONObject();
            jSONObject.put(BaseService.CATEGORY, "mistat_session");
            jSONObject.put("values", jSONArray);
            this.d.put("mistat_session", jSONObject);
            this.g.getJSONArray("content").put(jSONObject);
        }
        JSONObject jSONObject2 = new JSONObject();
        String[] split = statEventPojo.value.split(Constants.ACCEPT_TIME_SEPARATOR_SP);
        long parseLong = Long.parseLong(split[0]);
        long parseLong2 = Long.parseLong(split[1]);
        jSONObject2.put("start", parseLong);
        jSONObject2.put("end", parseLong2);
        jSONObject2.put("env", statEventPojo.extra);
        jSONObject.getJSONArray("values").put(jSONObject2);
    }

    private void b(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject = (JSONObject) this.d.get("mistat_pv");
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONArray();
            jSONObject.put(BaseService.CATEGORY, "mistat_pv");
            jSONObject.put("values", jSONArray);
            jSONObject.put(SocialConstants.PARAM_SOURCE, jSONArray2);
            this.d.put("mistat_pv", jSONObject);
            this.g.getJSONArray("content").put(jSONObject);
        }
        String[] split = statEventPojo.value.trim().split(Constants.ACCEPT_TIME_SEPARATOR_SP);
        String[] strArr = new String[split.length];
        if (split != null && split.length > 0) {
            for (int i = 0; i < split.length; i++) {
                int indexOf = this.f.indexOf(split[i]);
                if (indexOf >= 0) {
                    strArr[i] = String.valueOf(indexOf + 1);
                } else {
                    strArr[i] = String.valueOf(this.f.size() + 1);
                    this.f.add(split[i]);
                }
            }
        }
        jSONObject.getJSONArray("values").put(TextUtils.join(Constants.ACCEPT_TIME_SEPARATOR_SP, strArr));
        jSONObject.put("index", TextUtils.join(Constants.ACCEPT_TIME_SEPARATOR_SP, this.f));
        if (TextUtils.isEmpty(statEventPojo.extra)) {
            jSONObject.getJSONArray(SocialConstants.PARAM_SOURCE).put("");
        } else {
            jSONObject.getJSONArray(SocialConstants.PARAM_SOURCE).put(statEventPojo.extra);
        }
    }

    private void c(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject = (JSONObject) this.d.get("mistat_pt");
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONObject.put(BaseService.CATEGORY, "mistat_pt");
            jSONObject.put("values", jSONArray);
            this.d.put("mistat_pt", jSONObject);
            this.g.getJSONArray("content").put(jSONObject);
        }
        JSONArray jSONArray2 = jSONObject.getJSONArray("values");
        for (int i = 0; i < jSONArray2.length(); i++) {
            JSONObject jSONObject2 = jSONArray2.getJSONObject(i);
            if (TextUtils.equals(jSONObject2.getString("key"), statEventPojo.key)) {
                jSONObject2.put("value", jSONObject2.getString("value") + Constants.ACCEPT_TIME_SEPARATOR_SP + statEventPojo.value);
                return;
            }
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("key", statEventPojo.key);
        jSONObject3.put("value", statEventPojo.value);
        jSONObject.getJSONArray("values").put(jSONObject3);
    }

    private void d(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObject2 = (JSONObject) this.d.get(statEventPojo.category);
        if (jSONObject2 == null) {
            JSONObject jSONObject3 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONObject3.put(BaseService.CATEGORY, statEventPojo.category);
            jSONObject3.put("values", jSONArray);
            this.d.put(statEventPojo.category, jSONObject3);
            this.g.getJSONArray("content").put(jSONObject3);
            jSONObject = jSONObject3;
        } else {
            jSONObject = jSONObject2;
        }
        if ("event".equals(statEventPojo.type) && TextUtils.isEmpty(statEventPojo.extra)) {
            JSONObject jSONObject4 = (JSONObject) this.e.get(statEventPojo.key);
            if (jSONObject4 != null) {
                jSONObject4.put("value", jSONObject4.getLong("value") + Long.parseLong(statEventPojo.value));
                return;
            }
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("key", statEventPojo.key);
            jSONObject5.put("type", statEventPojo.type);
            jSONObject5.put("value", Long.parseLong(statEventPojo.value));
            jSONObject.getJSONArray("values").put(jSONObject5);
            this.e.put(statEventPojo.key, jSONObject5);
        } else if ("mistat_extra".equals(statEventPojo.category)) {
            jSONObject.getJSONArray("values").put(statEventPojo.value);
        } else {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("key", statEventPojo.key);
            jSONObject6.put("type", statEventPojo.type);
            if ("count".equals(statEventPojo.type) || "numeric".equals(statEventPojo.type)) {
                jSONObject6.put("value", Long.parseLong(statEventPojo.value));
            } else {
                jSONObject6.put("value", statEventPojo.value);
            }
            if (!TextUtils.isEmpty(statEventPojo.extra)) {
                jSONObject6.put("params", new JSONObject(statEventPojo.extra));
            }
            jSONObject.getJSONArray("values").put(jSONObject6);
        }
    }
}
