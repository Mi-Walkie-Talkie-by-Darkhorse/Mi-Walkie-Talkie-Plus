package com.xiaomi.push;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.cr */
/* loaded from: classes2.dex */
public class C6059cr {

    /* renamed from: a */
    private String f21202a;

    /* renamed from: a */
    private final ArrayList<C6058cq> f21203a = new ArrayList<>();

    public C6059cr() {
    }

    public C6059cr(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the host is empty");
        }
        this.f21202a = str;
    }

    /* renamed from: a */
    public synchronized C6058cq m3470a() {
        for (int size = this.f21203a.size() - 1; size >= 0; size--) {
            C6058cq c6058cq = this.f21203a.get(size);
            if (c6058cq.m3487a()) {
                C6062cu.m3459a().m3450a(c6058cq.m3490a());
                return c6058cq;
            }
        }
        return null;
    }

    /* renamed from: a */
    public synchronized C6059cr m3465a(JSONObject jSONObject) {
        this.f21202a = jSONObject.getString("host");
        JSONArray jSONArray = jSONObject.getJSONArray("fbs");
        for (int i = 0; i < jSONArray.length(); i++) {
            this.f21203a.add(new C6058cq(this.f21202a).m3477a(jSONArray.getJSONObject(i)));
        }
        return this;
    }

    /* renamed from: a */
    public String m3469a() {
        return this.f21202a;
    }

    /* renamed from: a */
    public ArrayList<C6058cq> m3468a() {
        return this.f21203a;
    }

    /* renamed from: a */
    public synchronized JSONObject m3467a() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put("host", this.f21202a);
        JSONArray jSONArray = new JSONArray();
        Iterator<C6058cq> it2 = this.f21203a.iterator();
        while (it2.hasNext()) {
            jSONArray.put(it2.next().m3488a());
        }
        jSONObject.put("fbs", jSONArray);
        return jSONObject;
    }

    /* renamed from: a */
    public synchronized void m3466a(C6058cq c6058cq) {
        int i = 0;
        while (true) {
            if (i >= this.f21203a.size()) {
                break;
            } else if (this.f21203a.get(i).m3484a(c6058cq)) {
                this.f21203a.set(i, c6058cq);
                break;
            } else {
                i++;
            }
        }
        if (i >= this.f21203a.size()) {
            this.f21203a.add(c6058cq);
        }
    }

    /* renamed from: a */
    public synchronized void m3464a(boolean z) {
        ArrayList<C6058cq> arrayList;
        for (int size = this.f21203a.size() - 1; size >= 0; size--) {
            C6058cq c6058cq = this.f21203a.get(size);
            if (z) {
                if (c6058cq.m3472c()) {
                    arrayList = this.f21203a;
                    arrayList.remove(size);
                }
            } else if (!c6058cq.mo3429b()) {
                arrayList = this.f21203a;
                arrayList.remove(size);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f21202a);
        sb.append("\n");
        Iterator<C6058cq> it2 = this.f21203a.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
        }
        return sb.toString();
    }
}
