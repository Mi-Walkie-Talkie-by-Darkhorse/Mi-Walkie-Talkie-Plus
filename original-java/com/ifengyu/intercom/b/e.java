package com.ifengyu.intercom.b;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import com.ifengyu.intercom.R;

/* compiled from: AnimUtil */
public class e {
    public static void a(Context context, View view) {
        Animation loadAnimation = AnimationUtils.loadAnimation(context, R.anim.rotate);
        loadAnimation.setInterpolator(new LinearInterpolator());
        view.setAnimation(loadAnimation);
    }
}
