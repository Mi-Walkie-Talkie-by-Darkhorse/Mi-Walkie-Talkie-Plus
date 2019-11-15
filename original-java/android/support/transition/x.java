package android.support.transition;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.transition.TransitionManager;
import android.view.ViewGroup;

@TargetApi(19)
@RequiresApi(19)
/* compiled from: TransitionManagerStaticsKitKat */
class x extends w {
    x() {
    }

    public void a(ViewGroup viewGroup, p pVar) {
        TransitionManager.beginDelayedTransition(viewGroup, pVar == null ? null : ((s) pVar).a);
    }
}
