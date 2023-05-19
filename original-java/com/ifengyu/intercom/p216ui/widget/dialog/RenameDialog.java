package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.Window;
import androidx.annotation.NonNull;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.ClearEditText;
import com.ifengyu.intercom.p216ui.widget.view.MyInputFilter;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.t */
/* loaded from: classes2.dex */
public class RenameDialog extends BaseDialog {

    /* renamed from: a */
    private Activity f16025a;

    /* renamed from: b */
    private String f16026b;

    /* renamed from: c */
    private ClearEditText f16027c;

    /* renamed from: d */
    private InterfaceC4930a f16028d;

    /* compiled from: RenameDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.t$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4930a {
        /* renamed from: a */
        void mo8923a(String str);
    }

    public RenameDialog(Activity activity, @NonNull String str) {
        super(activity);
        this.f16025a = activity;
        this.f16026b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        switch (i) {
            case R.id.afstv_channel_custom_item_rename_dialog_cancel /* 2131296342 */:
                dismiss();
                return;
            case R.id.afstv_channel_custom_item_rename_dialog_confirm /* 2131296343 */:
                String trim = this.f16027c.getText().toString().trim();
                if (TextUtils.isEmpty(trim)) {
                    return;
                }
                InterfaceC4930a interfaceC4930a = this.f16028d;
                if (interfaceC4930a != null) {
                    interfaceC4930a.mo8923a(trim);
                }
                dismiss();
                return;
            default:
                return;
        }
    }

    /* renamed from: h */
    public RenameDialog m8924h(InterfaceC4930a interfaceC4930a) {
        this.f16028d = interfaceC4930a;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_custom_channel_option_rename);
        m9037g(this.f16025a);
        m9041a(R.id.afstv_channel_custom_item_rename_dialog_cancel, R.id.afstv_channel_custom_item_rename_dialog_confirm);
        ClearEditText clearEditText = (ClearEditText) findViewById(R.id.et_channel_custom_item_rename_dialog_newname);
        this.f16027c = clearEditText;
        clearEditText.setText(this.f16026b);
        this.f16027c.setSelection(this.f16026b.length());
        ClearEditText clearEditText2 = this.f16027c;
        clearEditText2.setFilters(new InputFilter[]{new MyInputFilter(clearEditText2)});
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(5);
        }
    }
}
