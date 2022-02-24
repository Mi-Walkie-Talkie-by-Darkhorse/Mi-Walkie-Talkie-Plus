package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.k;

/* compiled from: DialogProgress.java */
/* loaded from: classes2.dex */
public class i extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f6949a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f6950b;

    /* renamed from: c  reason: collision with root package name */
    private WindowManager.LayoutParams f6951c;
    private TextView d;
    private final ImageView e;

    public i(Context context) {
        super(context, R.style.Dialog);
        setCanceledOnTouchOutside(false);
        this.f6949a = context;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f6950b = layoutInflater;
        View inflate = layoutInflater.inflate(R.layout.loading_dialog, (ViewGroup) null);
        this.e = (ImageView) inflate.findViewById(R.id.loading_bar);
        this.d = (TextView) inflate.findViewById(R.id.loading_text);
        setContentView(inflate);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        this.f6951c = attributes;
        attributes.gravity = 17;
        attributes.dimAmount = 0.0f;
        attributes.alpha = 1.0f;
        getWindow().setAttributes(this.f6951c);
    }

    public void a(String str) {
        this.d.setText(str);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        k.a(getContext(), this.e);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }

    public void a(int i) {
        if (i != -1) {
            this.e.clearAnimation();
            this.e.setImageResource(i);
        }
    }
}
