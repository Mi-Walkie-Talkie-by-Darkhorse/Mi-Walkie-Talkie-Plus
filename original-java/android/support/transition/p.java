package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.view.ViewGroup;

/* compiled from: TransitionImpl */
abstract class p {
    public abstract Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2);

    public abstract p a(long j);

    public abstract p a(TimeInterpolator timeInterpolator);

    public abstract void a(q qVar, Object obj);

    public abstract void b(ae aeVar);

    public abstract void c(ae aeVar);

    p() {
    }

    public void a(q qVar) {
        a(qVar, null);
    }
}
