package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.dialog.DialogPlus;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.d */
/* loaded from: classes2.dex */
public class CommonDialog {

    /* renamed from: a */
    private Activity f15873a;

    /* renamed from: b */
    private DialogInterface.OnClickListener f15874b;

    /* renamed from: c */
    private DialogInterface.OnClickListener f15875c;

    /* renamed from: d */
    private DialogInterface.OnClickListener f15876d;

    /* renamed from: e */
    private CharSequence f15877e;

    /* renamed from: f */
    private CharSequence f15878f;

    /* renamed from: g */
    private CharSequence f15879g;

    /* renamed from: h */
    private CharSequence f15880h;

    /* renamed from: i */
    private CharSequence f15881i;

    /* renamed from: j */
    private CharSequence f15882j;

    /* renamed from: k */
    private DialogPlus f15883k;

    /* renamed from: l */
    private int f15884l = -1;

    /* renamed from: m */
    private int f15885m = R.layout.common_dialog_content;

    /* renamed from: n */
    private boolean f15886n = true;

    /* renamed from: o */
    private boolean f15887o = true;

    /* compiled from: CommonDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.d$a */
    /* loaded from: classes2.dex */
    class C4898a implements DialogPlus.InterfaceC4887i {
        C4898a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.DialogPlus.InterfaceC4887i
        /* renamed from: a */
        public void mo9015a(DialogPlus dialogPlus, View view) {
            switch (view.getId()) {
                case R.id.button_negative /* 2131296448 */:
                    if (CommonDialog.this.f15887o) {
                        dialogPlus.m9076l();
                    }
                    if (CommonDialog.this.f15874b != null) {
                        CommonDialog.this.f15874b.onClick(null, R.id.button_negative);
                        return;
                    }
                    return;
                case R.id.button_neutral /* 2131296449 */:
                    if (CommonDialog.this.f15887o) {
                        dialogPlus.m9076l();
                    }
                    if (CommonDialog.this.f15876d != null) {
                        CommonDialog.this.f15876d.onClick(null, R.id.button_neutral);
                        return;
                    }
                    return;
                case R.id.button_positive /* 2131296450 */:
                    if (CommonDialog.this.f15887o) {
                        dialogPlus.m9076l();
                    }
                    if (CommonDialog.this.f15875c != null) {
                        CommonDialog.this.f15875c.onClick(null, R.id.button_positive);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public CommonDialog(Activity activity) {
        this.f15873a = activity;
    }

    /* renamed from: e */
    public CommonDialog m9032e() {
        C4935x c4935x = new C4935x(this.f15885m);
        C4898a c4898a = new C4898a();
        DialogPlusBuilder m9070r = DialogPlus.m9070r(this.f15873a);
        m9070r.m8986z(c4935x);
        m9070r.m9013B(-1);
        m9070r.m9014A(this.f15884l);
        m9070r.m8988x(this.f15886n);
        m9070r.m9012C(c4898a);
        m9070r.m8987y(-2);
        this.f15883k = m9070r.m9011a();
        if (this.f15884l != -1) {
            View mo8905g = c4935x.mo8905g();
            LinearLayout linearLayout = (LinearLayout) mo8905g.findViewById(R.id.button_container);
            if (!TextUtils.isEmpty(this.f15879g)) {
                linearLayout.setVisibility(8);
                TextView textView = (TextView) mo8905g.findViewById(R.id.button_neutral);
                textView.setVisibility(0);
                textView.setText(this.f15879g);
            } else {
                linearLayout.setVisibility(0);
                ((TextView) mo8905g.findViewById(R.id.button_neutral)).setVisibility(8);
                if (!TextUtils.isEmpty(this.f15877e)) {
                    ((TextView) mo8905g.findViewById(R.id.button_negative)).setText(this.f15877e);
                }
                if (!TextUtils.isEmpty(this.f15878f)) {
                    ((TextView) mo8905g.findViewById(R.id.button_positive)).setText(this.f15878f);
                }
            }
        }
        if (this.f15885m == R.layout.common_dialog_content) {
            View mo8910a = c4935x.mo8910a();
            if (!TextUtils.isEmpty(this.f15880h)) {
                TextView textView2 = (TextView) mo8910a.findViewById(R.id.dialog_title);
                textView2.setVisibility(0);
                textView2.setText(this.f15880h);
            }
            if (!TextUtils.isEmpty(this.f15881i)) {
                ((TextView) mo8910a.findViewById(R.id.dialog_message)).setText(this.f15881i);
            }
            if (!TextUtils.isEmpty(this.f15882j)) {
                TextView textView3 = (TextView) mo8910a.findViewById(R.id.dialog_link);
                textView3.setVisibility(0);
                textView3.setText(this.f15882j);
            }
            if (TextUtils.isEmpty(this.f15880h) && TextUtils.isEmpty(this.f15881i)) {
                mo8910a.setVisibility(8);
            }
        }
        return this;
    }

    /* renamed from: f */
    public void m9031f() {
        DialogPlus dialogPlus = this.f15883k;
        if (dialogPlus != null) {
            dialogPlus.m9076l();
            this.f15883k = null;
        }
    }

    /* renamed from: g */
    public View m9030g() {
        return this.f15883k.m9075m();
    }

    /* renamed from: h */
    public CommonDialog m9029h(boolean z) {
        this.f15887o = z;
        return this;
    }

    /* renamed from: i */
    public CommonDialog m9028i(boolean z) {
        this.f15886n = z;
        return this;
    }

    /* renamed from: j */
    public CommonDialog m9027j(int i) {
        this.f15885m = i;
        return this;
    }

    /* renamed from: k */
    public CommonDialog m9026k(int i) {
        m9025l(this.f15873a.getText(i));
        return this;
    }

    /* renamed from: l */
    public CommonDialog m9025l(CharSequence charSequence) {
        this.f15881i = charSequence;
        return this;
    }

    /* renamed from: m */
    public CommonDialog m9024m(int i, DialogInterface.OnClickListener onClickListener) {
        m9023n(this.f15873a.getText(i), onClickListener);
        return this;
    }

    /* renamed from: n */
    public CommonDialog m9023n(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.f15884l = R.layout.dialog_bottom;
        this.f15877e = charSequence;
        this.f15874b = onClickListener;
        return this;
    }

    /* renamed from: o */
    public CommonDialog m9022o(int i, DialogInterface.OnClickListener onClickListener) {
        m9021p(this.f15873a.getText(i), onClickListener);
        return this;
    }

    /* renamed from: p */
    public CommonDialog m9021p(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.f15884l = R.layout.dialog_bottom;
        this.f15879g = charSequence;
        this.f15876d = onClickListener;
        return this;
    }

    /* renamed from: q */
    public CommonDialog m9020q(int i, DialogInterface.OnClickListener onClickListener) {
        m9019r(this.f15873a.getText(i), onClickListener);
        return this;
    }

    /* renamed from: r */
    public CommonDialog m9019r(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.f15884l = R.layout.dialog_bottom;
        this.f15878f = charSequence;
        this.f15875c = onClickListener;
        return this;
    }

    /* renamed from: s */
    public CommonDialog m9018s(int i) {
        m9017t(this.f15873a.getText(i));
        return this;
    }

    /* renamed from: t */
    public CommonDialog m9017t(CharSequence charSequence) {
        this.f15880h = charSequence;
        return this;
    }

    /* renamed from: u */
    public void m9016u() {
        DialogPlus dialogPlus = this.f15883k;
        if (dialogPlus != null) {
            dialogPlus.m9066v();
        }
    }
}
