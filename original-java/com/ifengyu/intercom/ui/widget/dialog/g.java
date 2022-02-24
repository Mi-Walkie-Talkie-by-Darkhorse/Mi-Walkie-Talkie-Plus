package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;

/* compiled from: DeviceUpdateLogInfoDialog.java */
/* loaded from: classes2.dex */
public class g extends d {

    /* renamed from: a  reason: collision with root package name */
    private Activity f6943a;

    /* renamed from: b  reason: collision with root package name */
    private String f6944b;

    /* renamed from: c  reason: collision with root package name */
    private String f6945c;

    public g(Activity activity, String str, String str2) {
        super(activity);
        this.f6943a = activity;
        this.f6944b = str;
        this.f6945c = str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        if (i == R.id.confirm) {
            dismiss();
        }
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_device_update_info);
        a(this.f6943a);
        findViewById(R.id.confirm).setOnClickListener(this);
        ((TextView) findViewById(R.id.dialog_update_info_version_name)).setText(this.f6944b);
        ((TextView) findViewById(R.id.dialog_update_info_version_content)).setText(this.f6945c.replace("\\n", "\n"));
    }
}
