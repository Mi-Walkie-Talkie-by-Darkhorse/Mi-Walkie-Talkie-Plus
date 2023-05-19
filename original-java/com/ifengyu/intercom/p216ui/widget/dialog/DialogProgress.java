package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.g */
/* loaded from: classes2.dex */
public class DialogProgress extends Dialog {

    /* renamed from: a */
    private Context f15916a;

    /* renamed from: b */
    private LayoutInflater f15917b;

    /* renamed from: c */
    private WindowManager.LayoutParams f15918c;

    /* renamed from: d */
    private TextView f15919d;

    /* renamed from: e */
    private final ImageView f15920e;

    public DialogProgress(Context context) {
        super(context, R.style.DialogProgressStyle);
        setCanceledOnTouchOutside(false);
        this.f15916a = context;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f15917b = layoutInflater;
        View inflate = layoutInflater.inflate(R.layout.dialog_loading_tip, (ViewGroup) null);
        this.f15920e = (ImageView) inflate.findViewById(R.id.loading_icon);
        this.f15919d = (TextView) inflate.findViewById(R.id.loading_text);
        setContentView(inflate);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        this.f15918c = attributes;
        attributes.gravity = 17;
        attributes.dimAmount = BitmapDescriptorFactory.HUE_RED;
        attributes.alpha = 1.0f;
        getWindow().setAttributes(this.f15918c);
    }

    /* renamed from: a */
    public void m8985a(int i) {
        if (i != -1) {
            this.f15920e.clearAnimation();
            this.f15920e.setImageResource(i);
        }
    }

    /* renamed from: b */
    public void m8984b(String str) {
        this.f15919d.setText(str);
    }

    /* renamed from: c */
    public void m8983c(Context context, View view) {
        Animation loadAnimation = AnimationUtils.loadAnimation(context, R.anim.rotate);
        loadAnimation.setInterpolator(new LinearInterpolator());
        view.setAnimation(loadAnimation);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m8983c(getContext(), this.f15920e);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }
}
