package me.zhanghai.android.materialprogressbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Path;
import me.zhanghai.android.materialprogressbar.Interpolators.INDETERMINATE_HORIZONTAL_RECT1_SCALE_X;
import me.zhanghai.android.materialprogressbar.Interpolators.INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X;
import me.zhanghai.android.materialprogressbar.Interpolators.INDETERMINATE_HORIZONTAL_RECT2_SCALE_X;
import me.zhanghai.android.materialprogressbar.Interpolators.INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X;
import me.zhanghai.android.materialprogressbar.Interpolators.LINEAR;
import me.zhanghai.android.materialprogressbar.Interpolators.TRIM_PATH_END;
import me.zhanghai.android.materialprogressbar.Interpolators.TRIM_PATH_START;
import me.zhanghai.android.materialprogressbar.internal.ObjectAnimatorCompat;

class Animators {
    private static final Path PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X = new Path();
    private static final Path PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X = new Path();
    private static final Path PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X = new Path();
    private static final Path PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X = new Path();

    private Animators() {
    }

    static {
        PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X.moveTo(-522.6f, 0.0f);
        PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X.rCubicTo(48.89972f, 0.0f, 166.02657f, 0.0f, 301.2173f, 0.0f);
        PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X.rCubicTo(197.58128f, 0.0f, 420.9827f, 0.0f, 420.9827f, 0.0f);
        PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X.moveTo(0.0f, 0.1f);
        PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X.lineTo(1.0f, 0.8268492f);
        PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X.lineTo(2.0f, 0.1f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X.moveTo(-197.6f, 0.0f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X.rCubicTo(14.28182f, 0.0f, 85.07782f, 0.0f, 135.54689f, 0.0f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X.rCubicTo(54.26191f, 0.0f, 90.42461f, 0.0f, 168.24332f, 0.0f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X.rCubicTo(144.72154f, 0.0f, 316.40982f, 0.0f, 316.40982f, 0.0f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X.moveTo(0.0f, 0.1f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X.lineTo(1.0f, 0.5713795f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X.lineTo(2.0f, 0.90995026f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X.lineTo(3.0f, 0.1f);
    }

    public static Animator createIndeterminateHorizontalRect1(Object obj) {
        ObjectAnimator ofFloat = ObjectAnimatorCompat.ofFloat(obj, "translateX", (String) null, PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X);
        ofFloat.setDuration(2000);
        ofFloat.setInterpolator(INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X.INSTANCE);
        ofFloat.setRepeatCount(-1);
        ObjectAnimator ofFloat2 = ObjectAnimatorCompat.ofFloat(obj, (String) null, "scaleX", PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X);
        ofFloat2.setDuration(2000);
        ofFloat2.setInterpolator(INDETERMINATE_HORIZONTAL_RECT1_SCALE_X.INSTANCE);
        ofFloat2.setRepeatCount(-1);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
        return animatorSet;
    }

    public static Animator createIndeterminateHorizontalRect2(Object obj) {
        ObjectAnimator ofFloat = ObjectAnimatorCompat.ofFloat(obj, "translateX", (String) null, PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X);
        ofFloat.setDuration(2000);
        ofFloat.setInterpolator(INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X.INSTANCE);
        ofFloat.setRepeatCount(-1);
        ObjectAnimator ofFloat2 = ObjectAnimatorCompat.ofFloat(obj, (String) null, "scaleX", PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X);
        ofFloat2.setDuration(2000);
        ofFloat2.setInterpolator(INDETERMINATE_HORIZONTAL_RECT2_SCALE_X.INSTANCE);
        ofFloat2.setRepeatCount(-1);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
        return animatorSet;
    }

    public static Animator createIndeterminate(Object obj) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(obj, "trimPathStart", new float[]{0.0f, 0.75f});
        ofFloat.setDuration(1333);
        ofFloat.setInterpolator(TRIM_PATH_START.INSTANCE);
        ofFloat.setRepeatCount(-1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(obj, "trimPathEnd", new float[]{0.0f, 0.75f});
        ofFloat2.setDuration(1333);
        ofFloat2.setInterpolator(TRIM_PATH_END.INSTANCE);
        ofFloat2.setRepeatCount(-1);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(obj, "trimPathOffset", new float[]{0.0f, 0.25f});
        ofFloat3.setDuration(1333);
        ofFloat3.setInterpolator(LINEAR.INSTANCE);
        ofFloat3.setRepeatCount(-1);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3});
        return animatorSet;
    }

    public static Animator createIndeterminateRotation(Object obj) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(obj, "rotation", new float[]{0.0f, 720.0f});
        ofFloat.setDuration(6665);
        ofFloat.setInterpolator(LINEAR.INSTANCE);
        ofFloat.setRepeatCount(-1);
        return ofFloat;
    }
}
