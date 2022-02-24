package com.ifengyu.intercom.i;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import com.ifengyu.intercom.R;

/* compiled from: AnimUtil.java */
/* loaded from: classes2.dex */
public class k {
    public static void a(Context context, View view) {
        Animation loadAnimation = AnimationUtils.loadAnimation(context, R.anim.rotate);
        loadAnimation.setInterpolator(new LinearInterpolator());
        view.setAnimation(loadAnimation);
    }
}
