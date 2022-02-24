package com.ifengyu.intercom.ui.activity;

import android.content.Context;
import com.ifengyu.intercom.lite.database.LiteDatabase;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class u implements Function {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ u f6245a = new u();

    private /* synthetic */ u() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        ObservableSource fromIterable;
        fromIterable = Observable.fromIterable(LiteDatabase.a((Context) obj).n().a());
        return fromIterable;
    }
}
