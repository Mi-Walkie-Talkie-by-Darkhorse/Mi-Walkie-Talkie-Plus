package com.ifengyu.intercom.lite.login;

import android.widget.CompoundButton;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class q implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ q f5703a = new q();

    private /* synthetic */ q() {
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        RegisterFragment.c(compoundButton, z);
    }
}
