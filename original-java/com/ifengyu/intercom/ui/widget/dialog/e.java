package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;

/* compiled from: DeviceUpdateLogInfoDialog */
public class e extends b {
    private Activity a;
    private String b;
    private String c;

    public e(Activity activity, String str, String str2) {
        super(activity);
        this.a = activity;
        this.b = str;
        this.c = str2;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_device_update_info);
        a(this.a);
        findViewById(R.id.confirm).setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.dialog_update_info_version_content);
        ((TextView) findViewById(R.id.dialog_update_info_version_name)).setText(this.b);
        textView.setText(this.c.replace("\\n", "\n"));
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.confirm /*2131755483*/:
                dismiss();
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
