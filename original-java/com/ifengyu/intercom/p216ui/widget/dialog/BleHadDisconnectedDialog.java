package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.MainActivity;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.c */
/* loaded from: classes2.dex */
public class BleHadDisconnectedDialog extends BaseDialog {

    /* renamed from: a */
    private Activity f15872a;

    public BleHadDisconnectedDialog(Activity activity) {
        super(activity);
        this.f15872a = activity;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: c */
    protected boolean mo8931c() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        if (i == R.id.confirm) {
            this.f15872a.startActivity(new Intent(this.f15872a, MainActivity.class));
        }
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_ble_had_disconnect);
        m9037g(this.f15872a);
        m9041a(R.id.confirm);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
