package com.ifengyu.intercom.lite.login;

import android.widget.CompoundButton;
import com.ifengyu.intercom.i.z;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class r implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ r f5704a = new r();

    private /* synthetic */ r() {
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        z.a("RegisterFragment", "user protocol checkbox checked: " + z);
    }
}
