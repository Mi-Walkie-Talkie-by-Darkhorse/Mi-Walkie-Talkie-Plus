package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.view.ViewGroup;

@TargetApi(19)
@RequiresApi(19)
/* compiled from: TransitionKitKat */
class s extends p {
    Transition a;
    q b;

    /* compiled from: TransitionKitKat */
    private static class a extends Transition {
        private q a;

        public a(q qVar) {
            this.a = qVar;
        }

        public void captureStartValues(TransitionValues transitionValues) {
            s.a(this.a, transitionValues);
        }

        public void captureEndValues(TransitionValues transitionValues) {
            s.b(this.a, transitionValues);
        }

        public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
            return this.a.a(viewGroup, s.a(transitionValues), s.a(transitionValues2));
        }
    }

    s() {
    }

    static void a(TransitionValues transitionValues, ae aeVar) {
        if (transitionValues != null) {
            aeVar.b = transitionValues.view;
            if (transitionValues.values.size() > 0) {
                aeVar.a.putAll(transitionValues.values);
            }
        }
    }

    static void a(ae aeVar, TransitionValues transitionValues) {
        if (aeVar != null) {
            transitionValues.view = aeVar.b;
            if (aeVar.a.size() > 0) {
                transitionValues.values.putAll(aeVar.a);
            }
        }
    }

    static void a(q qVar, TransitionValues transitionValues) {
        ae aeVar = new ae();
        a(transitionValues, aeVar);
        qVar.a(aeVar);
        a(aeVar, transitionValues);
    }

    static void b(q qVar, TransitionValues transitionValues) {
        ae aeVar = new ae();
        a(transitionValues, aeVar);
        qVar.b(aeVar);
        a(aeVar, transitionValues);
    }

    static ae a(TransitionValues transitionValues) {
        if (transitionValues == null) {
            return null;
        }
        ae aeVar = new ae();
        a(transitionValues, aeVar);
        return aeVar;
    }

    static TransitionValues d(ae aeVar) {
        if (aeVar == null) {
            return null;
        }
        TransitionValues transitionValues = new TransitionValues();
        a(aeVar, transitionValues);
        return transitionValues;
    }

    public void a(q qVar, Object obj) {
        this.b = qVar;
        if (obj == null) {
            this.a = new a(qVar);
        } else {
            this.a = (Transition) obj;
        }
    }

    public void b(ae aeVar) {
        TransitionValues transitionValues = new TransitionValues();
        a(aeVar, transitionValues);
        this.a.captureEndValues(transitionValues);
        a(transitionValues, aeVar);
    }

    public void c(ae aeVar) {
        TransitionValues transitionValues = new TransitionValues();
        a(aeVar, transitionValues);
        this.a.captureStartValues(transitionValues);
        a(transitionValues, aeVar);
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        TransitionValues transitionValues;
        TransitionValues transitionValues2 = null;
        if (aeVar != null) {
            transitionValues = new TransitionValues();
            a(aeVar, transitionValues);
        } else {
            transitionValues = null;
        }
        if (aeVar2 != null) {
            transitionValues2 = new TransitionValues();
            a(aeVar2, transitionValues2);
        }
        return this.a.createAnimator(viewGroup, transitionValues, transitionValues2);
    }

    public p a(long j) {
        this.a.setDuration(j);
        return this;
    }

    public p a(TimeInterpolator timeInterpolator) {
        this.a.setInterpolator(timeInterpolator);
        return this;
    }

    public String toString() {
        return this.a.toString();
    }
}
