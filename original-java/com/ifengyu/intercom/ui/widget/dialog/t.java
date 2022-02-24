package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import com.ifengyu.intercom.R;

/* compiled from: McuContinueUpdateDialog.java */
/* loaded from: classes2.dex */
public class t extends d {

    /* renamed from: a  reason: collision with root package name */
    private Activity f7004a;

    /* renamed from: b  reason: collision with root package name */
    private a f7005b;

    /* compiled from: McuContinueUpdateDialog.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    public t(Activity activity) {
        super(activity);
        this.f7004a = activity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        if (i == R.id.cancel) {
            dismiss();
        } else if (i == R.id.confirm) {
            this.f7005b.a();
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_mcu_continue_update);
        a(this.f7004a);
        a(R.id.cancel, R.id.confirm);
    }

    public void a(a aVar) {
        this.f7005b = aVar;
    }
}
