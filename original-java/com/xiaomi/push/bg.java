package com.xiaomi.push;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class bg {

    /* renamed from: a  reason: collision with root package name */
    public int f8775a;

    /* renamed from: a  reason: collision with other field name */
    public String f128a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f129a = new HashMap();

    public String a() {
        return this.f128a;
    }

    public String toString() {
        return String.format("resCode = %1$d, headers = %2$s, response = %3$s", Integer.valueOf(this.f8775a), this.f129a.toString(), this.f128a);
    }
}
