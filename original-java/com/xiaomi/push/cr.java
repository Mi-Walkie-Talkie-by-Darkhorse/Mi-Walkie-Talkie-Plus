package com.xiaomi.push;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class cr {

    /* renamed from: a  reason: collision with root package name */
    private String f8821a;

    /* renamed from: a  reason: collision with other field name */
    private final ArrayList<cq> f174a = new ArrayList<>();

    public cr() {
    }

    public cr(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f8821a = str;
            return;
        }
        throw new IllegalArgumentException("the host is empty");
    }

    public synchronized cq a() {
        for (int size = this.f174a.size() - 1; size >= 0; size--) {
            cq cqVar = this.f174a.get(size);
            if (cqVar.m143a()) {
                cu.a().m153a(cqVar.a());
                return cqVar;
            }
        }
        return null;
    }

    public synchronized cr a(JSONObject jSONObject) {
        this.f8821a = jSONObject.getString("host");
        JSONArray jSONArray = jSONObject.getJSONArray("fbs");
        for (int i = 0; i < jSONArray.length(); i++) {
            this.f174a.add(new cq(this.f8821a).a(jSONArray.getJSONObject(i)));
        }
        return this;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m144a() {
        return this.f8821a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public ArrayList<cq> m145a() {
        return this.f174a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized JSONObject m146a() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put("host", this.f8821a);
        JSONArray jSONArray = new JSONArray();
        Iterator<cq> it = this.f174a.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().m141a());
        }
        jSONObject.put("fbs", jSONArray);
        return jSONObject;
    }

    public synchronized void a(cq cqVar) {
        int i = 0;
        while (true) {
            if (i >= this.f174a.size()) {
                break;
            } else if (this.f174a.get(i).a(cqVar)) {
                this.f174a.set(i, cqVar);
                break;
            } else {
                i++;
            }
        }
        if (i >= this.f174a.size()) {
            this.f174a.add(cqVar);
        }
    }

    public synchronized void a(boolean z) {
        ArrayList<cq> arrayList;
        for (int size = this.f174a.size() - 1; size >= 0; size--) {
            cq cqVar = this.f174a.get(size);
            if (z) {
                if (cqVar.c()) {
                    arrayList = this.f174a;
                    arrayList.remove(size);
                }
            } else if (!cqVar.b()) {
                arrayList = this.f174a;
                arrayList.remove(size);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f8821a);
        sb.append("\n");
        Iterator<cq> it = this.f174a.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        return sb.toString();
    }
}
