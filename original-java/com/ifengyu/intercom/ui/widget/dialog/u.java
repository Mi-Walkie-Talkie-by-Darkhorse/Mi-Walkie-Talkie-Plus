package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.EditText;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: OffMapRenameDialog.java */
/* loaded from: classes2.dex */
public class u extends d {

    /* renamed from: a  reason: collision with root package name */
    private Activity f7006a;

    /* renamed from: b  reason: collision with root package name */
    private EditText f7007b;

    /* renamed from: c  reason: collision with root package name */
    private String f7008c;
    private b d;
    private int e = 30;
    private ArrayList<String> f;

    /* compiled from: OffMapRenameDialog.java */
    /* loaded from: classes2.dex */
    class a implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f7009a;

        /* renamed from: b  reason: collision with root package name */
        private int f7010b;

        /* renamed from: c  reason: collision with root package name */
        private int f7011c;

        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                this.f7010b = u.this.f7007b.getSelectionStart();
                this.f7011c = u.this.f7007b.getSelectionEnd();
                if (u.this.f7007b.getText().toString().length() > 0 && this.f7009a.toString().getBytes(StringUtils.GB2312).length > u.this.e) {
                    editable.delete(this.f7010b - 1, this.f7011c);
                    u.this.f7007b.setText(editable);
                    u.this.f7007b.setSelection(editable.length());
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f7009a = charSequence;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* compiled from: OffMapRenameDialog.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(String str);
    }

    public u(Activity activity, String str, ArrayList<String> arrayList) {
        super(activity);
        this.f7006a = activity;
        this.f7008c = str;
        this.f = arrayList;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.offmap_download_rename);
        a(this.f7006a);
        a(R.id.off_map_download_rename_dialog_cancel, R.id.off_map_download_rename_dialog_confirm);
        EditText editText = (EditText) findViewById(R.id.off_map_download_new_name);
        this.f7007b = editText;
        editText.setText(this.f7008c);
        EditText editText2 = this.f7007b;
        editText2.setSelection(editText2.getText().length());
        this.f7007b.addTextChangedListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        switch (i) {
            case R.id.off_map_download_rename_dialog_cancel /* 2131297003 */:
                dismiss();
                return;
            case R.id.off_map_download_rename_dialog_confirm /* 2131297004 */:
                String trim = this.f7007b.getText().toString().trim();
                if (TextUtils.isEmpty(trim)) {
                    c0.a((CharSequence) k0.c(R.string.toast_the_name_can_not_empty), false);
                    return;
                }
                Iterator<String> it = this.f.iterator();
                while (it.hasNext()) {
                    if (trim.equals(it.next())) {
                        c0.a((CharSequence) k0.c(R.string.toast_the_name_is_duplicate), false);
                        return;
                    }
                }
                if (!c0.e(trim)) {
                    c0.a((CharSequence) k0.c(R.string.toast_contains_invalid_characters), false);
                    return;
                }
                this.d.a(trim);
                dismiss();
                return;
            default:
                return;
        }
    }

    public void a(b bVar) {
        this.d = bVar;
    }
}
