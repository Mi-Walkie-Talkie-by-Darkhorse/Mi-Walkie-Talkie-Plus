package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;

/* compiled from: ActivateDeviceDialog.java */
/* loaded from: classes2.dex */
public class c extends d {

    /* renamed from: a  reason: collision with root package name */
    private Activity f6930a;

    /* renamed from: b  reason: collision with root package name */
    private b f6931b;

    /* renamed from: c  reason: collision with root package name */
    private AppCompatCheckBox f6932c;
    private TextView d;
    private TextView e;

    /* compiled from: ActivateDeviceDialog.java */
    /* loaded from: classes2.dex */
    class a implements CompoundButton.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                c.this.d.setTextColor(k0.a((int) R.color.dialogButtonTextColor));
            } else {
                c.this.d.setTextColor(k0.a((int) R.color.activate_unselected_color));
            }
        }
    }

    /* compiled from: ActivateDeviceDialog.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a();

        void b();
    }

    public c(Activity activity) {
        super(activity);
        this.f6930a = activity;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_activate_device);
        a(this.f6930a);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        this.d = (TextView) findViewById(R.id.dialog_activate);
        this.e = (TextView) findViewById(R.id.dialog_cancel);
        this.f6932c = (AppCompatCheckBox) findViewById(R.id.dialog_checkbox);
        this.d.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.f6932c.setOnCheckedChangeListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        if (i != R.id.dialog_activate) {
            if (i == R.id.dialog_cancel) {
                b bVar = this.f6931b;
                if (bVar != null) {
                    bVar.a();
                }
                dismiss();
            }
        } else if (this.f6932c.isChecked()) {
            b bVar2 = this.f6931b;
            if (bVar2 != null) {
                bVar2.b();
            }
            dismiss();
        } else {
            c0.a((CharSequence) k0.c(R.string.toast_please_check_agree), false);
        }
    }

    public void a(b bVar) {
        this.f6931b = bVar;
    }
}
