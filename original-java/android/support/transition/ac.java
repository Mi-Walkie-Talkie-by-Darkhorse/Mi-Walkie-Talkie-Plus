package android.support.transition;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.transition.TransitionSet;

@TargetApi(19)
@RequiresApi(19)
/* compiled from: TransitionSetKitKat */
class ac extends s implements ab {
    private TransitionSet c = new TransitionSet();

    public ac(q qVar) {
        a(qVar, (Object) this.c);
    }

    /* renamed from: a */
    public ac b(int i) {
        this.c.setOrdering(i);
        return this;
    }

    /* renamed from: a */
    public ac b(p pVar) {
        this.c.addTransition(((s) pVar).a);
        return this;
    }
}
