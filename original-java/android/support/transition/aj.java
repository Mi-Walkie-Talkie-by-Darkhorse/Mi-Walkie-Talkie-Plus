package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: VisibilityIcs */
class aj extends o implements ak {

    /* compiled from: VisibilityIcs */
    private static class a extends an {
        private al a;

        a(al alVar) {
            this.a = alVar;
        }

        public void a(ae aeVar) {
            this.a.a(aeVar);
        }

        public void b(ae aeVar) {
            this.a.b(aeVar);
        }

        public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
            return this.a.a(viewGroup, aeVar, aeVar2);
        }

        public boolean c(ae aeVar) {
            return this.a.c(aeVar);
        }

        public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
            return this.a.a(viewGroup, aeVar, i, aeVar2, i2);
        }

        public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
            return this.a.b(viewGroup, aeVar, i, aeVar2, i2);
        }
    }

    aj() {
    }

    public void a(q qVar, Object obj) {
        this.b = qVar;
        if (obj == null) {
            this.a = new a((al) qVar);
        } else {
            this.a = (an) obj;
        }
    }

    public boolean a(ae aeVar) {
        return ((an) this.a).c(aeVar);
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((an) this.a).a(viewGroup, aeVar, i, aeVar2, i2);
    }

    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((an) this.a).b(viewGroup, aeVar, i, aeVar2, i2);
    }
}
