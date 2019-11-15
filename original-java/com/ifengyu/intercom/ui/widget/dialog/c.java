package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import com.ifengyu.intercom.R;

/* compiled from: BleHadDisconnectedDialog */
public class c extends b {
    private Activity a;

    public c(Activity activity) {
        super(activity);
        this.a = activity;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_ble_had_disconnect);
        a(this.a);
        a(R.id.confirm);
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.confirm /*2131755483*/:
                this.a.finish();
                break;
        }
        dismiss();
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return false;
    }

    public void onBackPressed() {
        this.a.finish();
        dismiss();
    }
}
