package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.Window;
import androidx.annotation.NonNull;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.ClearEditText;

/* compiled from: RenameDialog.java */
/* loaded from: classes2.dex */
public class v extends d {

    /* renamed from: a  reason: collision with root package name */
    private Activity f7012a;

    /* renamed from: b  reason: collision with root package name */
    private String f7013b;

    /* renamed from: c  reason: collision with root package name */
    private ClearEditText f7014c;
    private a d;

    /* compiled from: RenameDialog.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(String str);
    }

    public v(Activity activity, @NonNull String str) {
        super(activity);
        this.f7012a = activity;
        this.f7013b = str;
    }

    public v a(a aVar) {
        this.d = aVar;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_custom_channel_option_rename);
        a(this.f7012a);
        a(R.id.afstv_channel_custom_item_rename_dialog_cancel, R.id.afstv_channel_custom_item_rename_dialog_confirm);
        ClearEditText clearEditText = (ClearEditText) findViewById(R.id.et_channel_custom_item_rename_dialog_newname);
        this.f7014c = clearEditText;
        clearEditText.setText(this.f7013b);
        this.f7014c.setSelection(this.f7013b.length());
        ClearEditText clearEditText2 = this.f7014c;
        clearEditText2.setFilters(new InputFilter[]{new com.ifengyu.intercom.ui.widget.view.a(clearEditText2)});
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        switch (i) {
            case R.id.afstv_channel_custom_item_rename_dialog_cancel /* 2131296353 */:
                dismiss();
                return;
            case R.id.afstv_channel_custom_item_rename_dialog_confirm /* 2131296354 */:
                String trim = this.f7014c.getText().toString().trim();
                if (!TextUtils.isEmpty(trim)) {
                    a aVar = this.d;
                    if (aVar != null) {
                        aVar.a(trim);
                    }
                    dismiss();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
