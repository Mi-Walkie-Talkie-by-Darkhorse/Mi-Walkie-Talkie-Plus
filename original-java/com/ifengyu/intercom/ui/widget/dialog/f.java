package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.dialog.DialogPlus;

/* compiled from: CommonDialog.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private Activity f6939a;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnClickListener f6940b;

    /* renamed from: c  reason: collision with root package name */
    private DialogInterface.OnClickListener f6941c;
    private DialogInterface.OnClickListener d;
    private CharSequence e;
    private CharSequence f;
    private CharSequence g;
    private CharSequence h;
    private CharSequence i;
    private CharSequence j;
    private DialogPlus k;
    private int l = -1;
    private int m = R.layout.common_dialog_content;
    private boolean n = true;
    private boolean o = true;

    /* compiled from: CommonDialog.java */
    /* loaded from: classes2.dex */
    class a implements DialogPlus.i {
        a() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.DialogPlus.i
        public void a(DialogPlus dialogPlus, View view) {
            switch (view.getId()) {
                case R.id.button_negative /* 2131296431 */:
                    if (f.this.o) {
                        dialogPlus.a();
                    }
                    if (f.this.f6940b != null) {
                        f.this.f6940b.onClick(null, R.id.button_negative);
                        return;
                    }
                    return;
                case R.id.button_neutral /* 2131296432 */:
                    if (f.this.o) {
                        dialogPlus.a();
                    }
                    if (f.this.d != null) {
                        f.this.d.onClick(null, R.id.button_neutral);
                        return;
                    }
                    return;
                case R.id.button_positive /* 2131296433 */:
                    if (f.this.o) {
                        dialogPlus.a();
                    }
                    if (f.this.f6941c != null) {
                        f.this.f6941c.onClick(null, R.id.button_positive);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public f(Activity activity) {
        this.f6939a = activity;
    }

    public f a(int i, DialogInterface.OnClickListener onClickListener) {
        a(this.f6939a.getText(i), onClickListener);
        return this;
    }

    public f b(int i, DialogInterface.OnClickListener onClickListener) {
        b(this.f6939a.getText(i), onClickListener);
        return this;
    }

    public f c(int i, DialogInterface.OnClickListener onClickListener) {
        c(this.f6939a.getText(i), onClickListener);
        return this;
    }

    public void d() {
        DialogPlus dialogPlus = this.k;
        if (dialogPlus != null) {
            dialogPlus.d();
        }
    }

    public f a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.l = R.layout.dialog_bottom;
        this.e = charSequence;
        this.f6940b = onClickListener;
        return this;
    }

    public f b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.l = R.layout.dialog_bottom;
        this.g = charSequence;
        this.d = onClickListener;
        return this;
    }

    public f c(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.l = R.layout.dialog_bottom;
        this.f = charSequence;
        this.f6941c = onClickListener;
        return this;
    }

    public f a(int i) {
        this.m = i;
        return this;
    }

    public f b(CharSequence charSequence) {
        this.h = charSequence;
        return this;
    }

    public f c(int i) {
        b(this.f6939a.getText(i));
        return this;
    }

    public f a(CharSequence charSequence) {
        this.i = charSequence;
        return this;
    }

    public f b(int i) {
        a(this.f6939a.getText(i));
        return this;
    }

    public View c() {
        return this.k.b();
    }

    public f a() {
        c0 c0Var = new c0(this.m);
        a aVar = new a();
        h a2 = DialogPlus.a(this.f6939a);
        a2.a(c0Var);
        a2.c(-1);
        a2.b(this.l);
        a2.a(this.n);
        a2.a(aVar);
        a2.a(-2);
        this.k = a2.a();
        if (this.l != -1) {
            View b2 = c0Var.b();
            LinearLayout linearLayout = (LinearLayout) b2.findViewById(R.id.button_container);
            if (!TextUtils.isEmpty(this.g)) {
                linearLayout.setVisibility(8);
                TextView textView = (TextView) b2.findViewById(R.id.button_neutral);
                textView.setVisibility(0);
                textView.setText(this.g);
            } else {
                linearLayout.setVisibility(0);
                ((TextView) b2.findViewById(R.id.button_neutral)).setVisibility(8);
                if (!TextUtils.isEmpty(this.e)) {
                    ((TextView) b2.findViewById(R.id.button_negative)).setText(this.e);
                }
                if (!TextUtils.isEmpty(this.f)) {
                    ((TextView) b2.findViewById(R.id.button_positive)).setText(this.f);
                }
            }
        }
        if (this.m == R.layout.common_dialog_content) {
            View a3 = c0Var.a();
            if (!TextUtils.isEmpty(this.h)) {
                TextView textView2 = (TextView) a3.findViewById(R.id.dialog_title);
                textView2.setVisibility(0);
                textView2.setText(this.h);
            }
            if (!TextUtils.isEmpty(this.i)) {
                ((TextView) a3.findViewById(R.id.dialog_message)).setText(this.i);
            }
            if (!TextUtils.isEmpty(this.j)) {
                TextView textView3 = (TextView) a3.findViewById(R.id.dialog_link);
                textView3.setVisibility(0);
                textView3.setText(this.j);
            }
            if (TextUtils.isEmpty(this.h) && TextUtils.isEmpty(this.i)) {
                a3.setVisibility(8);
            }
        }
        return this;
    }

    public void b() {
        DialogPlus dialogPlus = this.k;
        if (dialogPlus != null) {
            dialogPlus.a();
            this.k = null;
        }
    }

    public f b(boolean z) {
        this.n = z;
        return this;
    }

    public f a(boolean z) {
        this.o = z;
        return this;
    }
}
