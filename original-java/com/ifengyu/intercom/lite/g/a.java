package com.ifengyu.intercom.lite.g;

import android.util.Pair;
import com.ifengyu.intercom.lite.http.entity.FirmwareInfo;
import com.ifengyu.intercom.lite.models.DeviceModel;
import io.reactivex.functions.BiFunction;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements BiFunction {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ a f5566a = new a();

    private /* synthetic */ a() {
    }

    @Override // io.reactivex.functions.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new Pair((DeviceModel) obj, (FirmwareInfo) obj2);
    }
}
