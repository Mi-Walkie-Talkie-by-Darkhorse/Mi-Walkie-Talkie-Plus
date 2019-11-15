package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.EditText;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: OffMapRenameDialog */
public class w extends b {
    private Activity a;
    /* access modifiers changed from: private */
    public EditText b;
    private String c;
    private a d;
    /* access modifiers changed from: private */
    public int e = 30;
    private ArrayList<String> f;

    /* compiled from: OffMapRenameDialog */
    public interface a {
        void a(String str);
    }

    public w(Activity activity, String str, ArrayList<String> arrayList) {
        super(activity);
        this.a = activity;
        this.c = str;
        this.f = arrayList;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.offmap_download_rename);
        a(this.a);
        a(R.id.off_map_download_rename_dialog_cancel, R.id.off_map_download_rename_dialog_confirm);
        this.b = (EditText) findViewById(R.id.off_map_download_new_name);
        this.b.setText(this.c);
        this.b.setSelection(this.b.getText().length());
        this.b.addTextChangedListener(new TextWatcher() {
            private CharSequence b;
            private int c;
            private int d;

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                this.b = charSequence;
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void afterTextChanged(Editable editable) {
                try {
                    this.c = w.this.b.getSelectionStart();
                    this.d = w.this.b.getSelectionEnd();
                    if (w.this.b.getText().toString().length() > 0 && this.b.toString().getBytes(StringUtils.GB2312).length > w.this.e) {
                        editable.delete(this.c - 1, this.d);
                        w.this.b.setText(editable);
                        w.this.b.setSelection(editable.length());
                    }
                } catch (UnsupportedEncodingException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.off_map_download_rename_dialog_cancel /*2131755811*/:
                dismiss();
                return;
            case R.id.off_map_download_rename_dialog_confirm /*2131755812*/:
                String trim = this.b.getText().toString().trim();
                if (TextUtils.isEmpty(trim)) {
                    v.a((CharSequence) ad.a((int) R.string.toast_the_name_can_not_empty), false);
                    return;
                }
                Iterator it = this.f.iterator();
                while (it.hasNext()) {
                    if (trim.equals((String) it.next())) {
                        v.a((CharSequence) ad.a((int) R.string.toast_the_name_is_duplicate), false);
                        return;
                    }
                }
                if (!v.h(trim)) {
                    v.a((CharSequence) ad.a((int) R.string.toast_contains_invalid_characters), false);
                    return;
                }
                this.d.a(trim);
                dismiss();
                return;
            default:
                return;
        }
    }

    public void a(a aVar) {
        this.d = aVar;
    }
}
