package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import com.ifengyu.intercom.R;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.r */
/* loaded from: classes2.dex */
public class McuContinueUpdateDialog extends BaseDialog {

    /* renamed from: a */
    private Activity f16019a;

    /* renamed from: b */
    private InterfaceC4929a f16020b;

    /* compiled from: McuContinueUpdateDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.r$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4929a {
        /* renamed from: a */
        void mo8929a();
    }

    public McuContinueUpdateDialog(Activity activity) {
        super(activity);
        this.f16019a = activity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        if (i == R.id.cancel) {
            dismiss();
        } else if (i != R.id.confirm) {
        } else {
            this.f16020b.mo8929a();
            dismiss();
        }
    }

    /* renamed from: h */
    public void m8930h(InterfaceC4929a interfaceC4929a) {
        this.f16020b = interfaceC4929a;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_mcu_continue_update);
        m9037g(this.f16019a);
        m9041a(R.id.cancel, R.id.confirm);
    }
}
