package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.e */
/* loaded from: classes2.dex */
public class DeviceUpdateLogInfoDialog extends BaseDialog {

    /* renamed from: a */
    private Activity f15889a;

    /* renamed from: b */
    private String f15890b;

    /* renamed from: c */
    private String f15891c;

    public DeviceUpdateLogInfoDialog(Activity activity, String str, String str2) {
        super(activity);
        this.f15889a = activity;
        this.f15890b = str;
        this.f15891c = str2;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: c */
    protected boolean mo8931c() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        if (i != R.id.confirm) {
            return;
        }
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_device_update_info);
        m9037g(this.f15889a);
        findViewById(R.id.confirm).setOnClickListener(this);
        ((TextView) findViewById(R.id.dialog_update_info_version_name)).setText(this.f15890b);
        ((TextView) findViewById(R.id.dialog_update_info_version_content)).setText(this.f15891c.replace("\\n", "\n"));
    }
}
