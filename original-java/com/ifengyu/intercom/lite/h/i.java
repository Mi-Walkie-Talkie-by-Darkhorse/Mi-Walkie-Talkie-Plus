package com.ifengyu.intercom.lite.h;

import com.ifengyu.intercom.i.z;
import io.reactivex.functions.Consumer;
import java.util.List;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class i implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i f5624a = new i();

    private /* synthetic */ i() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        List list = (List) obj;
        z.a(g0.f, "delete config file success");
    }
}
