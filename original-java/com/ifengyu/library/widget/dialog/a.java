package com.ifengyu.library.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.Space;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.ifengyu.library.R;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.ClearEditText;

/* compiled from: BaseDialog */
public class a extends Dialog {

    /* renamed from: com.ifengyu.library.widget.dialog.a$a reason: collision with other inner class name */
    /* compiled from: BaseDialog */
    public static class C0041a extends b<C0041a> {
        protected TransformationMethod a;
        protected EditText b;
        protected InputFilter[] c;
        protected String d;
        protected String e;
        private int s = 1;

        public C0041a(Context context) {
            super(context);
            this.b = new ClearEditText(context);
            this.b.setTextColor(l.b(R.color.black60));
            this.b.setTextSize(0, (float) l.b(14.0f));
            this.b.setFocusable(true);
            this.b.setSingleLine();
            this.b.setBackgroundResource(R.drawable.dialog_edittext_bg);
            this.b.setFocusableInTouchMode(true);
            this.b.setImeOptions(2);
            this.b.setGravity(16);
            this.b.setId(l.g());
            this.b.setPadding(l.a(10.0f), 0, l.a(10.0f), 0);
        }

        /* access modifiers changed from: protected */
        public void a(a aVar, ViewGroup viewGroup) {
            LayoutParams layoutParams = new LayoutParams(-1, -2);
            layoutParams.setMargins(l.a(16.0f), l.a(12.0f), l.a(16.0f), l.a(12.0f));
            if (this.a != null) {
                this.b.setTransformationMethod(this.a);
            } else {
                this.b.setInputType(this.s);
            }
            if (this.c != null) {
                this.b.setFilters(this.c);
            }
            if (!TextUtils.isEmpty(this.d)) {
                this.b.setHint(this.d);
                this.b.setHintTextColor(ContextCompat.getColor(this.f, R.color.black30));
            }
            if (!TextUtils.isEmpty(this.e)) {
                this.b.setText(this.e);
                this.b.setSelection(this.e.length());
            }
            viewGroup.addView(this.b, layoutParams);
        }

        /* access modifiers changed from: protected */
        public void b(a aVar, ViewGroup viewGroup) {
            super.b(aVar, viewGroup);
            Window window = aVar.getWindow();
            if (window != null) {
                window.setSoftInputMode(5);
            }
        }

        public EditText a() {
            return this.b;
        }

        public C0041a a(InputFilter[] inputFilterArr) {
            this.c = inputFilterArr;
            return this;
        }

        public C0041a a(String str) {
            this.e = str;
            return this;
        }
    }

    /* compiled from: BaseDialog */
    public static class b extends b<b> {
        protected LinearLayout a;
        protected CharSequence b;
        protected CharSequence c;
        private TextView d;
        private TextView e;

        public b(Context context) {
            super(context);
        }

        public b a(CharSequence charSequence) {
            this.b = charSequence;
            return this;
        }

        /* access modifiers changed from: protected */
        public void a(a aVar, ViewGroup viewGroup) {
            if (this.b == null || this.b.length() == 0) {
                viewGroup.addView(new Space(this.f), new ViewGroup.LayoutParams(-1, l.a(16.0f)));
                return;
            }
            this.a = new LinearLayout(this.f);
            LayoutParams layoutParams = new LayoutParams(-1, -2);
            layoutParams.gravity = 17;
            this.a.setGravity(17);
            this.a.setLayoutParams(layoutParams);
            this.a.setOrientation(1);
            this.a.setPadding(l.a(24.0f), l.a(8.0f), l.a(24.0f), l.a(20.0f));
            this.d = new TextView(this.f);
            this.d.setTextColor(ContextCompat.getColor(this.f, R.color.black));
            this.d.setLineSpacing((float) l.a(2.0f), 1.0f);
            this.d.setTextSize(0, (float) l.b(14.0f));
            this.d.setText(this.b);
            this.d.setGravity(17);
            this.a.addView(this.d);
            if (!(this.c == null || this.c.length() == 0)) {
                this.e = new TextView(this.f);
                this.e.setTextColor(ContextCompat.getColor(this.f, R.color.black));
                this.e.setLineSpacing((float) l.a(2.0f), 1.0f);
                this.e.setTextSize(0, (float) l.b(12.0f));
                this.e.setText(this.c);
                this.e.setGravity(17);
                this.a.addView(this.e);
            }
            viewGroup.addView(this.a, layoutParams);
        }
    }

    public a(Context context, int i) {
        super(context, i);
        a();
    }

    private void a() {
        setCancelable(true);
        setCanceledOnTouchOutside(true);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        b();
    }

    private void b() {
        Window window = getWindow();
        if (window != null) {
            window.setDimAmount(0.6f);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            window.setAttributes(attributes);
        }
    }
}
