package com.ifengyu.intercom.device.lite.p160d;

import android.util.Pair;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.models.DeviceModel;
import io.reactivex.functions.BiFunction;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.device.lite.d.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3199o implements BiFunction {

    /* renamed from: a */
    public static final /* synthetic */ C3199o f12193a = new C3199o();

    private /* synthetic */ C3199o() {
    }

    @Override // io.reactivex.functions.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new Pair((DeviceModel) obj, (VersionInfo) obj2);
    }
}
