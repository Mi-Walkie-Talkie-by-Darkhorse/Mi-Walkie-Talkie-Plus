package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: FadeIcs */
class h extends o implements ak {
    public h(q qVar) {
        a(qVar, new j());
    }

    public h(q qVar, int i) {
        a(qVar, new j(i));
    }

    public boolean a(ae aeVar) {
        return ((j) this.a).c(aeVar);
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((j) this.a).a(viewGroup, aeVar, i, aeVar2, i2);
    }

    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((j) this.a).b(viewGroup, aeVar, i, aeVar, i);
    }
}
