package com.ifengyu.intercom.lite.h;

import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.models.ConfigFileModel;
import io.reactivex.functions.Consumer;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class s implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ s f5635a = new s();

    private /* synthetic */ s() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        ConfigFileModel configFileModel = (ConfigFileModel) obj;
        z.a(g0.f, "update config file success");
    }
}
