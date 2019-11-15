package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.transition.Fade;
import android.view.ViewGroup;

@TargetApi(19)
@RequiresApi(19)
/* compiled from: FadeKitKat */
class i extends s implements ak {
    public i(q qVar) {
        a(qVar, (Object) new Fade());
    }

    public i(q qVar, int i) {
        a(qVar, (Object) new Fade(i));
    }

    public boolean a(ae aeVar) {
        return ((Fade) this.a).isVisible(d(aeVar));
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((Fade) this.a).onAppear(viewGroup, d(aeVar), i, d(aeVar2), i2);
    }

    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((Fade) this.a).onDisappear(viewGroup, d(aeVar), i, d(aeVar2), i2);
    }
}
