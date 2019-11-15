package com.ifengyu.library.widget.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.graphics.Typeface;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.library.R;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.dialog.b;

/* compiled from: DialogBuilder */
public abstract class b<T extends b> {
    protected Context f;
    protected a g;
    protected boolean h = true;
    protected boolean i = true;
    protected boolean j = true;
    protected LayoutInflater k;
    protected String l;
    protected FrameLayout m;
    protected TextView n;
    protected CharSequence o;
    protected CharSequence p;
    protected OnClickListener q;
    protected OnClickListener r;

    /* access modifiers changed from: protected */
    public abstract void a(a aVar, ViewGroup viewGroup);

    public b(Context context) {
        this.f = context;
        this.k = LayoutInflater.from(context);
    }

    public T b(String str) {
        if (str != null && str.length() > 0) {
            this.l = str;
        }
        return this;
    }

    public T a(int i2) {
        return b(this.f.getResources().getString(i2));
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return (this.l == null || this.l.length() == 0) ? false : true;
    }

    public T a(boolean z) {
        this.i = z;
        return this;
    }

    public T b(boolean z) {
        this.h = z;
        return this;
    }

    public T a(CharSequence charSequence, OnClickListener onClickListener) {
        this.o = charSequence;
        this.q = onClickListener;
        return this;
    }

    public T a(@StringRes int i2, OnClickListener onClickListener) {
        this.o = this.f.getResources().getString(i2);
        this.q = onClickListener;
        return this;
    }

    public T b(CharSequence charSequence, OnClickListener onClickListener) {
        this.p = charSequence;
        this.r = onClickListener;
        return this;
    }

    public T b(@StringRes int i2, OnClickListener onClickListener) {
        this.p = this.f.getResources().getString(i2);
        this.r = onClickListener;
        return this;
    }

    public a c() {
        a d = d();
        d.show();
        return d;
    }

    public a d() {
        a b = b(R.style.BaseDialog);
        b.setCanceledOnTouchOutside(this.i);
        b.setCancelable(this.h);
        return b;
    }

    @SuppressLint({"InflateParams"})
    public a b(@StyleRes int i2) {
        this.g = new a(this.f, i2);
        this.m = (FrameLayout) this.k.inflate(R.layout.dialog_layout, null);
        LinearLayout linearLayout = (LinearLayout) this.m.findViewById(R.id.dialog);
        c(this.g, linearLayout);
        a(this.g, (ViewGroup) linearLayout);
        d(this.g, linearLayout);
        this.g.addContentView(this.m, new LayoutParams(-1, -2));
        b(this.g, (ViewGroup) this.m);
        return this.g;
    }

    /* access modifiers changed from: protected */
    public void b(a aVar, ViewGroup viewGroup) {
    }

    /* access modifiers changed from: protected */
    public void c(a aVar, ViewGroup viewGroup) {
        if (b()) {
            this.n = new TextView(this.f);
            this.n.setSingleLine(true);
            this.n.setEllipsize(TruncateAt.END);
            this.n.setText(this.l);
            this.n.setTextColor(ContextCompat.getColor(this.f, R.color.black));
            this.n.setTextSize(0, (float) l.b(16.0f));
            this.n.setBackgroundResource(R.drawable.dialog_top_bg);
            this.n.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            this.n.setPadding(l.a(24.0f), l.a(16.0f), l.a(24.0f), 0);
            this.n.setGravity(1);
            this.n.setTypeface(Typeface.defaultFromStyle(1));
            viewGroup.addView(this.n);
        }
    }

    /* access modifiers changed from: protected */
    public void d(a aVar, ViewGroup viewGroup) {
        if (!TextUtils.isEmpty(this.p) && !TextUtils.isEmpty(this.o)) {
            View inflate = this.k.inflate(R.layout.dialog_action_layout, null);
            Button button = (Button) inflate.findViewById(R.id.btn_left);
            Button button2 = (Button) inflate.findViewById(R.id.btn_right);
            button.setText(this.p);
            button2.setText(this.o);
            button.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    if (b.this.r != null) {
                        b.this.r.onClick(b.this.g, 0);
                    }
                    if (b.this.j) {
                        b.this.g.dismiss();
                    }
                }
            });
            button2.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    if (b.this.q != null) {
                        b.this.q.onClick(b.this.g, 1);
                    }
                    if (b.this.j) {
                        b.this.g.dismiss();
                    }
                }
            });
            viewGroup.addView(inflate);
        }
    }
}
