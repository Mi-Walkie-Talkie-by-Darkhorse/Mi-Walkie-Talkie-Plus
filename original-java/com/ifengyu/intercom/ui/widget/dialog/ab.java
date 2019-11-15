package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;

/* compiled from: UnbindAskDialog */
public class ab extends b {
    private Activity a;
    private boolean b;
    private boolean c = false;
    private a d;

    /* compiled from: UnbindAskDialog */
    public interface a {
        void a();
    }

    public ab(Activity activity, boolean z) {
        super(activity);
        this.a = activity;
        this.b = z;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.setting_unbind_dialog_layout);
        TextView textView = (TextView) findViewById(R.id.un_bind_text_tv);
        if (this.b) {
            textView.setText(this.a.getResources().getString(R.string.setting_confirm_un_bind_current_device));
        } else {
            textView.setText(this.a.getResources().getString(R.string.setting_confirm_un_bind));
        }
        a(this.a);
        a(R.id.unbind_cancel_click, R.id.unbind_confirm_click);
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.unbind_cancel_click /*2131755831*/:
                dismiss();
                return;
            case R.id.unbind_confirm_click /*2131755832*/:
                this.c = true;
                this.d.a();
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

    public ab a(a aVar) {
        this.d = aVar;
        return this;
    }
}
