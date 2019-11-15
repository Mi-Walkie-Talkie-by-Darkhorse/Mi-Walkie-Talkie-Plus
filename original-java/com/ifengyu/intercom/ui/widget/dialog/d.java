package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.dialog.DialogPlus.c;

/* compiled from: CommonDialog */
public class d {
    private Activity a;
    /* access modifiers changed from: private */
    public OnClickListener b;
    /* access modifiers changed from: private */
    public OnClickListener c;
    /* access modifiers changed from: private */
    public OnClickListener d;
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
    /* access modifiers changed from: private */
    public boolean o = true;

    public d(Activity activity) {
        this.a = activity;
    }

    public d a(int i2, OnClickListener onClickListener) {
        return a(this.a.getText(i2), onClickListener);
    }

    public d a(CharSequence charSequence, OnClickListener onClickListener) {
        this.l = R.layout.dialog_bottom;
        this.e = charSequence;
        this.b = onClickListener;
        return this;
    }

    public d b(int i2, OnClickListener onClickListener) {
        return b(this.a.getText(i2), onClickListener);
    }

    public d b(CharSequence charSequence, OnClickListener onClickListener) {
        this.l = R.layout.dialog_bottom;
        this.f = charSequence;
        this.c = onClickListener;
        return this;
    }

    public d c(int i2, OnClickListener onClickListener) {
        return c(this.a.getText(i2), onClickListener);
    }

    public d c(CharSequence charSequence, OnClickListener onClickListener) {
        this.l = R.layout.dialog_bottom;
        this.g = charSequence;
        this.d = onClickListener;
        return this;
    }

    public d a(int i2) {
        return a(this.a.getText(i2));
    }

    public d a(CharSequence charSequence) {
        this.h = charSequence;
        return this;
    }

    public d b(int i2) {
        this.m = i2;
        return this;
    }

    public View a() {
        return this.k.d();
    }

    public d c(int i2) {
        return b(this.a.getText(i2));
    }

    public d b(CharSequence charSequence) {
        this.i = charSequence;
        return this;
    }

    public d b() {
        ae aeVar = new ae(this.m);
        this.k = DialogPlus.a((Context) this.a).a((m) aeVar).b(-1).a(this.l).a(this.n).a((c) new c() {
            public void a(DialogPlus dialogPlus, View view) {
                switch (view.getId()) {
                    case R.id.button_negative /*2131755486*/:
                        if (d.this.o) {
                            dialogPlus.c();
                        }
                        if (d.this.b != null) {
                            d.this.b.onClick(null, R.id.button_negative);
                            return;
                        }
                        return;
                    case R.id.button_positive /*2131755487*/:
                        if (d.this.o) {
                            dialogPlus.c();
                        }
                        if (d.this.c != null) {
                            d.this.c.onClick(null, R.id.button_positive);
                            return;
                        }
                        return;
                    case R.id.button_neutral /*2131755488*/:
                        if (d.this.o) {
                            dialogPlus.c();
                        }
                        if (d.this.d != null) {
                            d.this.d.onClick(null, R.id.button_neutral);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }).c(-2).a();
        if (this.l != -1) {
            View b2 = aeVar.b();
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
            View a2 = aeVar.a();
            if (!TextUtils.isEmpty(this.h)) {
                TextView textView2 = (TextView) a2.findViewById(R.id.dialog_title);
                textView2.setVisibility(0);
                textView2.setText(this.h);
            }
            if (!TextUtils.isEmpty(this.i)) {
                ((TextView) a2.findViewById(R.id.dialog_message)).setText(this.i);
            }
            if (!TextUtils.isEmpty(this.j)) {
                TextView textView3 = (TextView) a2.findViewById(R.id.dialog_link);
                textView3.setVisibility(0);
                textView3.setText(this.j);
            }
            if (TextUtils.isEmpty(this.h) && TextUtils.isEmpty(this.i)) {
                a2.setVisibility(8);
            }
        }
        return this;
    }

    public void c() {
        if (this.k != null) {
            this.k.a();
        }
    }

    public void d() {
        if (this.k != null) {
            this.k.c();
            this.k = null;
        }
    }

    public d a(boolean z) {
        this.n = z;
        return this;
    }

    public d b(boolean z) {
        this.o = z;
        return this;
    }
}
