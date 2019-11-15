package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: VisibilityPort */
abstract class an extends y {
    private static final String[] a = {"android:visibility:visibility", "android:visibility:parent"};

    /* compiled from: VisibilityPort */
    private static class a {
        boolean a;
        boolean b;
        int c;
        int d;
        ViewGroup e;
        ViewGroup f;

        a() {
        }
    }

    an() {
    }

    public String[] a() {
        return a;
    }

    private void d(ae aeVar) {
        aeVar.a.put("android:visibility:visibility", Integer.valueOf(aeVar.b.getVisibility()));
        aeVar.a.put("android:visibility:parent", aeVar.b.getParent());
    }

    public void a(ae aeVar) {
        d(aeVar);
    }

    public void b(ae aeVar) {
        d(aeVar);
    }

    public boolean c(ae aeVar) {
        if (aeVar == null) {
            return false;
        }
        return ((Integer) aeVar.a.get("android:visibility:visibility")).intValue() == 0 && ((View) aeVar.a.get("android:visibility:parent")) != null;
    }

    private a a(ae aeVar, ae aeVar2) {
        a aVar = new a();
        aVar.a = false;
        aVar.b = false;
        if (aeVar != null) {
            aVar.c = ((Integer) aeVar.a.get("android:visibility:visibility")).intValue();
            aVar.e = (ViewGroup) aeVar.a.get("android:visibility:parent");
        } else {
            aVar.c = -1;
            aVar.e = null;
        }
        if (aeVar2 != null) {
            aVar.d = ((Integer) aeVar2.a.get("android:visibility:visibility")).intValue();
            aVar.f = (ViewGroup) aeVar2.a.get("android:visibility:parent");
        } else {
            aVar.d = -1;
            aVar.f = null;
        }
        if (!(aeVar == null || aeVar2 == null)) {
            if (aVar.c == aVar.d && aVar.e == aVar.f) {
                return aVar;
            }
            if (aVar.c != aVar.d) {
                if (aVar.c == 0) {
                    aVar.b = false;
                    aVar.a = true;
                } else if (aVar.d == 0) {
                    aVar.b = true;
                    aVar.a = true;
                }
            } else if (aVar.e != aVar.f) {
                if (aVar.f == null) {
                    aVar.b = false;
                    aVar.a = true;
                } else if (aVar.e == null) {
                    aVar.b = true;
                    aVar.a = true;
                }
            }
        }
        if (aeVar == null) {
            aVar.b = true;
            aVar.a = true;
        } else if (aeVar2 == null) {
            aVar.b = false;
            aVar.a = true;
        }
        return aVar;
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        View view;
        int i;
        boolean z;
        boolean z2 = false;
        int i2 = -1;
        a a2 = a(aeVar, aeVar2);
        if (a2.a) {
            if (this.h.size() > 0 || this.g.size() > 0) {
                View view2 = aeVar != null ? aeVar.b : null;
                if (aeVar2 != null) {
                    view = aeVar2.b;
                } else {
                    view = null;
                }
                if (view2 != null) {
                    i = view2.getId();
                } else {
                    i = -1;
                }
                if (view != null) {
                    i2 = view.getId();
                }
                if (a(view2, (long) i) || a(view, (long) i2)) {
                    z = true;
                } else {
                    z = false;
                }
                z2 = z;
            }
            if (!(!z2 && a2.e == null && a2.f == null)) {
                if (a2.b) {
                    return a(viewGroup, aeVar, a2.c, aeVar2, a2.d);
                }
                return b(viewGroup, aeVar, a2.c, aeVar2, a2.d);
            }
        }
        return null;
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return null;
    }

    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return null;
    }
}
