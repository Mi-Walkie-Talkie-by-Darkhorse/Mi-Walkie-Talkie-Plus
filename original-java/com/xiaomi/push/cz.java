package com.xiaomi.push;

import com.xiaomi.mipush.sdk.Constants;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
class cz implements Comparable<cz> {

    /* renamed from: a  reason: collision with root package name */
    protected int f8830a;

    /* renamed from: a  reason: collision with other field name */
    private long f188a;

    /* renamed from: a  reason: collision with other field name */
    String f189a;

    /* renamed from: a  reason: collision with other field name */
    private final LinkedList<cp> f190a;

    public cz() {
        this(null, 0);
    }

    public cz(String str) {
        this(str, 0);
    }

    public cz(String str, int i) {
        this.f190a = new LinkedList<>();
        this.f188a = 0L;
        this.f189a = str;
        this.f8830a = i;
    }

    /* renamed from: a */
    public int compareTo(cz czVar) {
        if (czVar == null) {
            return 1;
        }
        return czVar.f8830a - this.f8830a;
    }

    public synchronized cz a(JSONObject jSONObject) {
        this.f188a = jSONObject.getLong("tt");
        this.f8830a = jSONObject.getInt("wt");
        this.f189a = jSONObject.getString("host");
        JSONArray jSONArray = jSONObject.getJSONArray("ah");
        for (int i = 0; i < jSONArray.length(); i++) {
            this.f190a.add(new cp().a(jSONArray.getJSONObject(i)));
        }
        return this;
    }

    public synchronized JSONObject a() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put("tt", this.f188a);
        jSONObject.put("wt", this.f8830a);
        jSONObject.put("host", this.f189a);
        JSONArray jSONArray = new JSONArray();
        Iterator<cp> it = this.f190a.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().m139a());
        }
        jSONObject.put("ah", jSONArray);
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(cp cpVar) {
        if (cpVar != null) {
            this.f190a.add(cpVar);
            int a2 = cpVar.a();
            if (a2 > 0) {
                this.f8830a += cpVar.a();
            } else {
                int i = 0;
                for (int size = this.f190a.size() - 1; size >= 0 && this.f190a.get(size).a() < 0; size--) {
                    i++;
                }
                this.f8830a += a2 * i;
            }
            if (this.f190a.size() > 30) {
                this.f8830a -= this.f190a.remove().a();
            }
        }
    }

    public String toString() {
        return this.f189a + Constants.COLON_SEPARATOR + this.f8830a;
    }
}
