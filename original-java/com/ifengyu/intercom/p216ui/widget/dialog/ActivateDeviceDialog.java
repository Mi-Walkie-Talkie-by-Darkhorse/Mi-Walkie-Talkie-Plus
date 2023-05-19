package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.a */
/* loaded from: classes2.dex */
public class ActivateDeviceDialog extends BaseDialog {

    /* renamed from: a */
    private Activity f15866a;

    /* renamed from: b */
    private InterfaceC4897b f15867b;

    /* renamed from: c */
    private AppCompatCheckBox f15868c;

    /* renamed from: d */
    private TextView f15869d;

    /* renamed from: e */
    private TextView f15870e;

    /* compiled from: ActivateDeviceDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.a$a */
    /* loaded from: classes2.dex */
    class C4896a implements CompoundButton.OnCheckedChangeListener {
        C4896a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                ActivateDeviceDialog.this.f15869d.setTextColor(UIUtils.m8614d(R.color.dialogButtonTextColor));
            } else {
                ActivateDeviceDialog.this.f15869d.setTextColor(UIUtils.m8614d(R.color.activate_unselected_color));
            }
        }
    }

    /* compiled from: ActivateDeviceDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.a$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC4897b {
        /* renamed from: a */
        void mo9043a();

        /* renamed from: b */
        void mo9042b();
    }

    public ActivateDeviceDialog(Activity activity) {
        super(activity);
        this.f15866a = activity;
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
        if (i != R.id.dialog_activate) {
            if (i != R.id.dialog_cancel) {
                return;
            }
            InterfaceC4897b interfaceC4897b = this.f15867b;
            if (interfaceC4897b != null) {
                interfaceC4897b.mo9043a();
            }
            dismiss();
        } else if (this.f15868c.isChecked()) {
            InterfaceC4897b interfaceC4897b2 = this.f15867b;
            if (interfaceC4897b2 != null) {
                interfaceC4897b2.mo9042b();
            }
            dismiss();
        } else {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_please_check_agree), false);
        }
    }

    /* renamed from: i */
    public void m9044i(InterfaceC4897b interfaceC4897b) {
        this.f15867b = interfaceC4897b;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_activate_device);
        m9037g(this.f15866a);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        this.f15869d = (TextView) findViewById(R.id.dialog_activate);
        this.f15870e = (TextView) findViewById(R.id.dialog_cancel);
        this.f15868c = (AppCompatCheckBox) findViewById(R.id.dialog_checkbox);
        this.f15869d.setOnClickListener(this);
        this.f15870e.setOnClickListener(this);
        this.f15868c.setOnCheckedChangeListener(new C4896a());
    }
}
