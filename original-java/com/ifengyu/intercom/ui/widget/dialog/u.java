package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import com.ifengyu.intercom.R;

/* compiled from: McuContinueUpdateDialog */
public class u extends b {
    private Activity a;
    private a b;

    /* compiled from: McuContinueUpdateDialog */
    public interface a {
        void a();
    }

    public u(Activity activity) {
        super(activity);
        this.a = activity;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_mcu_continue_update);
        a(this.a);
        a(R.id.cancel, R.id.confirm);
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.cancel /*2131755165*/:
                dismiss();
                return;
            case R.id.confirm /*2131755483*/:
                this.b.a();
                dismiss();
                return;
            default:
                return;
        }
    }

    public void a(a aVar) {
        this.b = aVar;
    }
}
