package com.xiaomi.push;

import android.content.Context;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class cx {

    /* renamed from: a  reason: collision with root package name */
    private int f8829a;

    public cx(int i) {
        this.f8829a = i;
    }

    public int a() {
        return this.f8829a;
    }

    public abstract String a(Context context, String str, List<bh> list);

    /* renamed from: a  reason: collision with other method in class */
    public boolean m159a(Context context, String str, List<bh> list) {
        return true;
    }
}
