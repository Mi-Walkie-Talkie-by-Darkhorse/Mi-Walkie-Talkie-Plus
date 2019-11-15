package android.support.design.internal;

import android.animation.TimeInterpolator;
import android.support.transition.a;
import android.support.transition.m;
import android.support.transition.t;
import android.support.transition.z;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.ViewGroup;

/* compiled from: BottomNavigationAnimationHelperIcs */
class b extends a {
    private final z a = new a();

    b() {
        this.a.a(0);
        this.a.a(115);
        this.a.a((TimeInterpolator) new FastOutSlowInInterpolator());
        this.a.a((m) new d());
    }

    /* access modifiers changed from: 0000 */
    public void a(ViewGroup viewGroup) {
        t.a(viewGroup, this.a);
    }
}
