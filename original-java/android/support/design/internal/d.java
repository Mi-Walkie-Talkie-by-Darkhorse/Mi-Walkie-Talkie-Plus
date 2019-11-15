package android.support.design.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.transition.ae;
import android.support.transition.m;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Map;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: TextScale */
public class d extends m {
    public void a(ae aeVar) {
        c(aeVar);
    }

    public void b(ae aeVar) {
        c(aeVar);
    }

    private void c(ae aeVar) {
        if (aeVar.b instanceof TextView) {
            aeVar.a.put("android:textscale:scale", Float.valueOf(((TextView) aeVar.b).getScaleX()));
        }
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        float f = 1.0f;
        if (aeVar == null || aeVar2 == null || !(aeVar.b instanceof TextView) || !(aeVar2.b instanceof TextView)) {
            return null;
        }
        final TextView textView = (TextView) aeVar2.b;
        Map<String, Object> map = aeVar.a;
        Map<String, Object> map2 = aeVar2.a;
        float f2 = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        if (map2.get("android:textscale:scale") != null) {
            f = ((Float) map2.get("android:textscale:scale")).floatValue();
        }
        if (f2 == f) {
            return null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{f2, f});
        ofFloat.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                textView.setScaleX(floatValue);
                textView.setScaleY(floatValue);
            }
        });
        return ofFloat;
    }
}
