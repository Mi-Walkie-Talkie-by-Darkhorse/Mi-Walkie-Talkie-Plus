package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.Window;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.ClearEditText;
import com.ifengyu.intercom.ui.widget.view.b;

/* compiled from: RenameDialog */
public class x extends b {
    private Activity a;
    private String b;
    private ClearEditText c;
    private a d;

    /* compiled from: RenameDialog */
    public interface a {
        void a(String str);
    }

    public x(Activity activity, @NonNull String str) {
        super(activity);
        this.a = activity;
        this.b = str;
    }

    public x a(a aVar) {
        this.d = aVar;
        return this;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_custom_channel_option_rename);
        a(this.a);
        a(R.id.afstv_channel_custom_item_rename_dialog_cancel, R.id.afstv_channel_custom_item_rename_dialog_confirm);
        this.c = (ClearEditText) findViewById(R.id.et_channel_custom_item_rename_dialog_newname);
        this.c.setText(this.b);
        this.c.setSelection(this.b.length());
        this.c.setFilters(new InputFilter[]{new b(this.c)});
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.afstv_channel_custom_item_rename_dialog_cancel /*2131755511*/:
                dismiss();
                return;
            case R.id.afstv_channel_custom_item_rename_dialog_confirm /*2131755512*/:
                String trim = this.c.getText().toString().trim();
                if (!TextUtils.isEmpty(trim)) {
                    if (this.d != null) {
                        this.d.a(trim);
                    }
                    dismiss();
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void show() {
        super.show();
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(5);
        }
    }
}
