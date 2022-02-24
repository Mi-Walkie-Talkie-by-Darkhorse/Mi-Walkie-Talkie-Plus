package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;

/* compiled from: UnbindAskDialog.java */
/* loaded from: classes2.dex */
public class z extends d {

    /* renamed from: a  reason: collision with root package name */
    private Activity f7023a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7024b;

    /* renamed from: c  reason: collision with root package name */
    private a f7025c;

    /* compiled from: UnbindAskDialog.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    public z(Activity activity, boolean z) {
        super(activity);
        this.f7023a = activity;
        this.f7024b = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        switch (i) {
            case R.id.unbind_cancel_click /* 2131297446 */:
                dismiss();
                return;
            case R.id.unbind_confirm_click /* 2131297447 */:
                this.f7025c.a();
                dismiss();
                return;
            default:
                return;
        }
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.setting_unbind_dialog_layout);
        TextView textView = (TextView) findViewById(R.id.un_bind_text_tv);
        if (this.f7024b) {
            textView.setText(this.f7023a.getResources().getString(R.string.setting_confirm_un_bind_current_device));
        } else {
            textView.setText(this.f7023a.getResources().getString(R.string.setting_confirm_un_bind));
        }
        a(this.f7023a);
        a(R.id.unbind_cancel_click, R.id.unbind_confirm_click);
    }

    public z a(a aVar) {
        this.f7025c = aVar;
        return this;
    }
}
