package com.ifengyu.intercom.lite.login;

import android.widget.CompoundButton;
import com.ifengyu.intercom.i.z;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class p implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ p f5702a = new p();

    private /* synthetic */ p() {
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        z.a("RegisterFragment", "improve checkbox checked: " + z);
    }
}
