package com.ifengyu.intercom.p205m.p207b;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;

/* renamed from: com.ifengyu.intercom.m.b.f */
/* loaded from: classes2.dex */
public class LoadingTipDialog extends Dialog {

    /* renamed from: a */
    private final ImageView f14365a;

    /* renamed from: b */
    private final TextView f14366b;

    /* renamed from: c */
    private int f14367c;

    /* renamed from: d */
    private final Animation f14368d;

    public LoadingTipDialog(Context context) {
        super(context, R.style.DialogProgressStyle);
        this.f14367c = 0;
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_loading_tip, (ViewGroup) null);
        this.f14365a = (ImageView) inflate.findViewById(R.id.loading_icon);
        this.f14366b = (TextView) inflate.findViewById(R.id.loading_text);
        setContentView(inflate);
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.gravity = 17;
            attributes.dimAmount = BitmapDescriptorFactory.HUE_RED;
            attributes.alpha = 1.0f;
            attributes.windowAnimations = R.style.dialog_alpha_anim;
            getWindow().setAttributes(attributes);
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(context, R.anim.rotate);
        this.f14368d = loadAnimation;
        loadAnimation.setInterpolator(new LinearInterpolator());
    }

    /* renamed from: a */
    public void m11427a(int i) {
        if (i > 0) {
            this.f14365a.setImageResource(i);
        }
    }

    /* renamed from: b */
    public void m11426b(String str) {
        this.f14366b.setText(str);
    }

    /* renamed from: c */
    public void m11425c(int i) {
        this.f14367c = i;
        if (i == 0) {
            this.f14365a.setAnimation(this.f14368d);
        } else {
            this.f14365a.clearAnimation();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.f14367c == 0) {
            this.f14365a.clearAnimation();
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }
}
