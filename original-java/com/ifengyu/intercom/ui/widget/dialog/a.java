package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.widget.AppCompatCheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;

/* compiled from: ActivateDeviceDialog */
public class a extends b {
    private Activity a;
    private C0039a b;
    private AppCompatCheckBox c;
    /* access modifiers changed from: private */
    public TextView d;
    private TextView e;

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.a$a reason: collision with other inner class name */
    /* compiled from: ActivateDeviceDialog */
    public interface C0039a {
        void a();

        void b();
    }

    public a(Activity activity) {
        super(activity);
        this.a = activity;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_activate_device);
        a(this.a);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        this.d = (TextView) findViewById(R.id.dialog_activate);
        this.e = (TextView) findViewById(R.id.dialog_cancel);
        this.c = (AppCompatCheckBox) findViewById(R.id.dialog_checkbox);
        this.d.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.c.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    a.this.d.setTextColor(ad.d(R.color.dialogButtonTextColor));
                } else {
                    a.this.d.setTextColor(ad.d(R.color.activate_unselected_color));
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.dialog_cancel /*2131755478*/:
                if (this.b != null) {
                    this.b.b();
                }
                dismiss();
                return;
            case R.id.dialog_activate /*2131755479*/:
                if (this.c.isChecked()) {
                    if (this.b != null) {
                        this.b.a();
                    }
                    dismiss();
                    return;
                }
                v.a((CharSequence) ad.a((int) R.string.toast_please_check_agree), false);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return true;
    }

    public void a(C0039a aVar) {
        this.b = aVar;
    }
}
