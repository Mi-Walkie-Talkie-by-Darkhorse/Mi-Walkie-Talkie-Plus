package com.ifengyu.intercom.lite.login;

import android.widget.CompoundButton;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class m implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ m f5699a = new m();

    private /* synthetic */ m() {
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        LoginFragment.a(compoundButton, z);
    }
}
