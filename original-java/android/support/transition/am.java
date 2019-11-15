package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.ViewGroup;

@TargetApi(19)
@RequiresApi(19)
/* compiled from: VisibilityKitKat */
class am extends s implements ak {

    /* compiled from: VisibilityKitKat */
    private static class a extends Visibility {
        private final al a;

        a(al alVar) {
            this.a = alVar;
        }

        public void captureStartValues(TransitionValues transitionValues) {
            s.a((q) this.a, transitionValues);
        }

        public void captureEndValues(TransitionValues transitionValues) {
            s.b(this.a, transitionValues);
        }

        public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
            return this.a.a(viewGroup, s.a(transitionValues), s.a(transitionValues2));
        }

        public boolean isVisible(TransitionValues transitionValues) {
            if (transitionValues == null) {
                return false;
            }
            ae aeVar = new ae();
            s.a(transitionValues, aeVar);
            return this.a.c(aeVar);
        }

        public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
            return this.a.a(viewGroup, s.a(transitionValues), i, s.a(transitionValues2), i2);
        }

        public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
            return this.a.b(viewGroup, s.a(transitionValues), i, s.a(transitionValues2), i2);
        }
    }

    am() {
    }

    public void a(q qVar, Object obj) {
        this.b = qVar;
        if (obj == null) {
            this.a = new a((al) qVar);
        } else {
            this.a = (Visibility) obj;
        }
    }

    public boolean a(ae aeVar) {
        return ((Visibility) this.a).isVisible(d(aeVar));
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((Visibility) this.a).onAppear(viewGroup, d(aeVar), i, d(aeVar2), i2);
    }

    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((Visibility) this.a).onDisappear(viewGroup, d(aeVar), i, d(aeVar2), i2);
    }
}
