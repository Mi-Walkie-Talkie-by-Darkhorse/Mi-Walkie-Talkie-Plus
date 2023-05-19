package com.xiaomi.push;

import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.push.bg */
/* loaded from: classes2.dex */
public class C6011bg {

    /* renamed from: a */
    public int f21098a;

    /* renamed from: a */
    public String f21099a;

    /* renamed from: a */
    public Map<String, String> f21100a = new HashMap();

    /* renamed from: a */
    public String m3680a() {
        return this.f21099a;
    }

    public String toString() {
        return String.format("resCode = %1$d, headers = %2$s, response = %3$s", Integer.valueOf(this.f21098a), this.f21100a.toString(), this.f21099a);
    }
}
