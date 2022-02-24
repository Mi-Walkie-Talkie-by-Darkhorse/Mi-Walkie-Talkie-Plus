package com.ifengyu.intercom.lite.e;

import com.ifengyu.intercom.lite.g.s;
import com.ifengyu.intercom.lite.models.DeviceModel;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ c f5391a = new c();

    private /* synthetic */ c() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        s.b().a(((DeviceModel) obj).getVersionHw());
    }
}
