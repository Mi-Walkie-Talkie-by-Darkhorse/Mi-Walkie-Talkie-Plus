package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.baseui.BaseActivity;

/* compiled from: LogoutAskDialog */
public class s extends b {
    private BaseActivity a;

    public s(BaseActivity baseActivity) {
        super(baseActivity);
        this.a = baseActivity;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.setting_logout_dialog_layout);
        a((Activity) this.a);
        a(R.id.logout_cancel_click, R.id.logout_confirm_click);
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.logout_cancel_click /*2131755828*/:
                dismiss();
                return;
            case R.id.logout_confirm_click /*2131755829*/:
                dismiss();
                this.a.n();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return true;
    }
}
