package android.support.transition;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.transition.y.b;
import android.support.transition.y.c;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: TransitionManagerPort */
class u {
    static ArrayList<ViewGroup> a = new ArrayList<>();
    private static final String[] b = new String[0];
    private static String c = "TransitionManager";
    private static y d = new b();
    private static ThreadLocal<WeakReference<ArrayMap<ViewGroup, ArrayList<y>>>> e = new ThreadLocal<>();

    /* compiled from: TransitionManagerPort */
    private static class a implements OnAttachStateChangeListener, OnPreDrawListener {
        y a;
        ViewGroup b;

        a(y yVar, ViewGroup viewGroup) {
            this.a = yVar;
            this.b = viewGroup;
        }

        private void a() {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.b.removeOnAttachStateChangeListener(this);
        }

        public void onViewAttachedToWindow(View view) {
        }

        public void onViewDetachedFromWindow(View view) {
            a();
            u.a.remove(this.b);
            ArrayList arrayList = (ArrayList) u.a().get(this.b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((y) it.next()).b((View) this.b);
                }
            }
            this.a.a(true);
        }

        public boolean onPreDraw() {
            ArrayList arrayList;
            ArrayList arrayList2;
            a();
            u.a.remove(this.b);
            final ArrayMap a2 = u.a();
            ArrayList arrayList3 = (ArrayList) a2.get(this.b);
            if (arrayList3 == null) {
                ArrayList arrayList4 = new ArrayList();
                a2.put(this.b, arrayList4);
                arrayList = arrayList4;
                arrayList2 = null;
            } else if (arrayList3.size() > 0) {
                ArrayList arrayList5 = new ArrayList(arrayList3);
                arrayList = arrayList3;
                arrayList2 = arrayList5;
            } else {
                arrayList = arrayList3;
                arrayList2 = null;
            }
            arrayList.add(this.a);
            this.a.a((b) new c() {
                public void a(y yVar) {
                    ((ArrayList) a2.get(a.this.b)).remove(yVar);
                }
            });
            this.a.a(this.b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((y) it.next()).b((View) this.b);
                }
            }
            this.a.a(this.b);
            return true;
        }
    }

    static ArrayMap<ViewGroup, ArrayList<y>> a() {
        WeakReference weakReference = (WeakReference) e.get();
        if (weakReference == null || weakReference.get() == null) {
            weakReference = new WeakReference(new ArrayMap());
            e.set(weakReference);
        }
        return (ArrayMap) weakReference.get();
    }

    private static void b(ViewGroup viewGroup, y yVar) {
        if (yVar != null && viewGroup != null) {
            a aVar = new a(yVar, viewGroup);
            viewGroup.addOnAttachStateChangeListener(aVar);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }

    private static void c(ViewGroup viewGroup, y yVar) {
        ArrayList arrayList = (ArrayList) a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((y) it.next()).a((View) viewGroup);
            }
        }
        if (yVar != null) {
            yVar.a(viewGroup, true);
        }
        l a2 = l.a(viewGroup);
        if (a2 != null) {
            a2.a();
        }
    }

    public static void a(ViewGroup viewGroup, y yVar) {
        if (!a.contains(viewGroup) && ViewCompat.isLaidOut(viewGroup)) {
            a.add(viewGroup);
            if (yVar == null) {
                yVar = d;
            }
            y h = yVar.clone();
            c(viewGroup, h);
            l.a(viewGroup, null);
            b(viewGroup, h);
        }
    }
}
