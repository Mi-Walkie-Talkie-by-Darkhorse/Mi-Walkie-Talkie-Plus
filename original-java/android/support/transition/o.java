package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: TransitionIcs */
class o extends p {
    y a;
    q b;

    /* compiled from: TransitionIcs */
    private static class a extends y {
        private q a;

        public a(q qVar) {
            this.a = qVar;
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
    }

    o() {
    }

    public void a(q qVar, Object obj) {
        this.b = qVar;
        if (obj == null) {
            this.a = new a(qVar);
        } else {
            this.a = (y) obj;
        }
    }

    public void b(ae aeVar) {
        this.a.b(aeVar);
    }

    public void c(ae aeVar) {
        this.a.a(aeVar);
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        return this.a.a(viewGroup, aeVar, aeVar2);
    }

    public p a(long j) {
        this.a.a(j);
        return this;
    }

    public p a(TimeInterpolator timeInterpolator) {
        this.a.a(timeInterpolator);
        return this;
    }

    public String toString() {
        return this.a.toString();
    }
}
