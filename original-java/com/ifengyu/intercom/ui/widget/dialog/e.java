package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import com.ifengyu.intercom.R;

/* compiled from: BleHadDisconnectedDialog.java */
/* loaded from: classes2.dex */
public class e extends d {

    /* renamed from: a  reason: collision with root package name */
    private Activity f6938a;

    public e(Activity activity) {
        super(activity);
        this.f6938a = activity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        if (i == R.id.confirm) {
            this.f6938a.finish();
        }
        dismiss();
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return false;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.f6938a.finish();
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_ble_had_disconnect);
        a(this.f6938a);
        a(R.id.confirm);
    }
}
