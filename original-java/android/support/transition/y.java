package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.SimpleArrayMap;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: TransitionPort */
abstract class y implements Cloneable {
    private static ThreadLocal<ArrayMap<Animator, a>> a = new ThreadLocal<>();
    private String b = getClass().getName();
    private af c = new af();
    long d = -1;
    long e = -1;
    TimeInterpolator f = null;
    ArrayList<Integer> g = new ArrayList<>();
    ArrayList<View> h = new ArrayList<>();
    ArrayList<Integer> i = null;
    ArrayList<View> j = null;
    ArrayList<Class> k = null;
    ArrayList<Integer> l = null;
    ArrayList<View> m = null;
    ArrayList<Class> n = null;
    ad o = null;
    ViewGroup p = null;
    boolean q = false;
    int r = 0;
    boolean s = false;
    ArrayList<b> t = null;
    ArrayList<Animator> u = new ArrayList<>();
    ArrayList<Animator> v = new ArrayList<>();
    private af w = new af();
    private boolean x = false;

    /* compiled from: TransitionPort */
    private static class a {
        View a;
        String b;
        ae c;
        ao d;

        a(View view, String str, ao aoVar, ae aeVar) {
            this.a = view;
            this.b = str;
            this.c = aeVar;
            this.d = aoVar;
        }
    }

    /* compiled from: TransitionPort */
    public interface b {
        void a(y yVar);

        void b(y yVar);

        void c(y yVar);

        void d(y yVar);
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    /* compiled from: TransitionPort */
    public static class c implements b {
        public void d(y yVar) {
        }

        public void a(y yVar) {
        }

        public void b(y yVar) {
        }

        public void c(y yVar) {
        }
    }

    public abstract void a(ae aeVar);

    public abstract void b(ae aeVar);

    private static ArrayMap<Animator, a> j() {
        ArrayMap<Animator, a> arrayMap = (ArrayMap) a.get();
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap<Animator, a> arrayMap2 = new ArrayMap<>();
        a.set(arrayMap2);
        return arrayMap2;
    }

    public long b() {
        return this.e;
    }

    public y a(long j2) {
        this.e = j2;
        return this;
    }

    public long c() {
        return this.d;
    }

    public TimeInterpolator d() {
        return this.f;
    }

    public y a(TimeInterpolator timeInterpolator) {
        this.f = timeInterpolator;
        return this;
    }

    public String[] a() {
        return null;
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        return null;
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public void a(ViewGroup viewGroup, af afVar, af afVar2) {
        View view;
        ae aeVar;
        Animator animator;
        ae aeVar2;
        ArrayMap arrayMap = new ArrayMap((SimpleArrayMap) afVar2.a);
        SparseArray sparseArray = new SparseArray(afVar2.b.size());
        for (int i2 = 0; i2 < afVar2.b.size(); i2++) {
            sparseArray.put(afVar2.b.keyAt(i2), afVar2.b.valueAt(i2));
        }
        LongSparseArray longSparseArray = new LongSparseArray(afVar2.c.size());
        for (int i3 = 0; i3 < afVar2.c.size(); i3++) {
            longSparseArray.put(afVar2.c.keyAt(i3), afVar2.c.valueAt(i3));
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (View view2 : afVar.a.keySet()) {
            boolean z = false;
            if (view2.getParent() instanceof ListView) {
                z = true;
            }
            if (!z) {
                int id = view2.getId();
                ae aeVar3 = afVar.a.get(view2) != null ? (ae) afVar.a.get(view2) : (ae) afVar.b.get(id);
                if (afVar2.a.get(view2) != null) {
                    aeVar2 = (ae) afVar2.a.get(view2);
                    arrayMap.remove(view2);
                } else if (id != -1) {
                    aeVar2 = (ae) afVar2.b.get(id);
                    View view3 = null;
                    for (View view4 : arrayMap.keySet()) {
                        if (view4.getId() != id) {
                            view4 = view3;
                        }
                        view3 = view4;
                    }
                    if (view3 != null) {
                        arrayMap.remove(view3);
                    }
                } else {
                    aeVar2 = null;
                }
                sparseArray.remove(id);
                if (a(view2, (long) id)) {
                    arrayList.add(aeVar3);
                    arrayList2.add(aeVar2);
                }
            } else {
                ListView listView = (ListView) view2.getParent();
                if (listView.getAdapter().hasStableIds()) {
                    long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view2));
                    ae aeVar4 = (ae) afVar.c.get(itemIdAtPosition);
                    longSparseArray.remove(itemIdAtPosition);
                    arrayList.add(aeVar4);
                    arrayList2.add(null);
                }
            }
        }
        int size = afVar.c.size();
        for (int i4 = 0; i4 < size; i4++) {
            long keyAt = afVar.c.keyAt(i4);
            if (a((View) null, keyAt)) {
                ae aeVar5 = (ae) afVar.c.get(keyAt);
                ae aeVar6 = (ae) afVar2.c.get(keyAt);
                longSparseArray.remove(keyAt);
                arrayList.add(aeVar5);
                arrayList2.add(aeVar6);
            }
        }
        for (View view5 : arrayMap.keySet()) {
            int id2 = view5.getId();
            if (a(view5, (long) id2)) {
                ae aeVar7 = (ae) (afVar.a.get(view5) != null ? afVar.a.get(view5) : afVar.b.get(id2));
                ae aeVar8 = (ae) arrayMap.get(view5);
                sparseArray.remove(id2);
                arrayList.add(aeVar7);
                arrayList2.add(aeVar8);
            }
        }
        int size2 = sparseArray.size();
        for (int i5 = 0; i5 < size2; i5++) {
            int keyAt2 = sparseArray.keyAt(i5);
            if (a((View) null, (long) keyAt2)) {
                ae aeVar9 = (ae) afVar.b.get(keyAt2);
                ae aeVar10 = (ae) sparseArray.get(keyAt2);
                arrayList.add(aeVar9);
                arrayList2.add(aeVar10);
            }
        }
        int size3 = longSparseArray.size();
        for (int i6 = 0; i6 < size3; i6++) {
            long keyAt3 = longSparseArray.keyAt(i6);
            ae aeVar11 = (ae) longSparseArray.get(keyAt3);
            arrayList.add((ae) afVar.c.get(keyAt3));
            arrayList2.add(aeVar11);
        }
        ArrayMap j2 = j();
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i8 < arrayList.size()) {
                ae aeVar12 = (ae) arrayList.get(i8);
                ae aeVar13 = (ae) arrayList2.get(i8);
                if (!(aeVar12 == null && aeVar13 == null) && (aeVar12 == null || !aeVar12.equals(aeVar13))) {
                    Animator a2 = a(viewGroup, aeVar12, aeVar13);
                    if (a2 != null) {
                        if (aeVar13 != null) {
                            View view6 = aeVar13.b;
                            String[] a3 = a();
                            if (view6 != null && a3 != null && a3.length > 0) {
                                ae aeVar14 = new ae();
                                aeVar14.b = view6;
                                ae aeVar15 = (ae) afVar2.a.get(view6);
                                if (aeVar15 != null) {
                                    for (int i9 = 0; i9 < a3.length; i9++) {
                                        aeVar14.a.put(a3[i9], aeVar15.a.get(a3[i9]));
                                    }
                                }
                                int size4 = j2.size();
                                int i10 = 0;
                                while (true) {
                                    if (i10 >= size4) {
                                        aeVar = aeVar14;
                                        animator = a2;
                                        break;
                                    }
                                    a aVar = (a) j2.get((Animator) j2.keyAt(i10));
                                    if (aVar.c != null && aVar.a == view6 && (((aVar.b == null && i() == null) || aVar.b.equals(i())) && aVar.c.equals(aeVar14))) {
                                        animator = null;
                                        aeVar = aeVar14;
                                        break;
                                    }
                                    i10++;
                                }
                            } else {
                                aeVar = null;
                                animator = a2;
                            }
                            a2 = animator;
                            view = view6;
                        } else {
                            view = aeVar12.b;
                            aeVar = null;
                        }
                        if (a2 != null) {
                            j2.put(a2, new a(view, i(), ao.a(viewGroup), aeVar));
                            this.u.add(a2);
                        }
                    }
                }
                i7 = i8 + 1;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean a(View view, long j2) {
        if (this.i != null && this.i.contains(Integer.valueOf((int) j2))) {
            return false;
        }
        if (this.j != null && this.j.contains(view)) {
            return false;
        }
        if (!(this.k == null || view == null)) {
            int size = this.k.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (((Class) this.k.get(i2)).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.g.size() == 0 && this.h.size() == 0) {
            return true;
        }
        if (this.g.size() > 0) {
            for (int i3 = 0; i3 < this.g.size(); i3++) {
                if (((long) ((Integer) this.g.get(i3)).intValue()) == j2) {
                    return true;
                }
            }
        }
        if (view == null || this.h.size() <= 0) {
            return false;
        }
        for (int i4 = 0; i4 < this.h.size(); i4++) {
            if (this.h.get(i4) == view) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public void e() {
        f();
        ArrayMap j2 = j();
        Iterator it = this.u.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (j2.containsKey(animator)) {
                f();
                a(animator, j2);
            }
        }
        this.u.clear();
        g();
    }

    private void a(Animator animator, final ArrayMap<Animator, a> arrayMap) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() {
                public void onAnimationStart(Animator animator) {
                    y.this.v.add(animator);
                }

                public void onAnimationEnd(Animator animator) {
                    arrayMap.remove(animator);
                    y.this.v.remove(animator);
                }
            });
            a(animator);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(ViewGroup viewGroup, boolean z) {
        a(z);
        if (this.g.size() > 0 || this.h.size() > 0) {
            if (this.g.size() > 0) {
                for (int i2 = 0; i2 < this.g.size(); i2++) {
                    int intValue = ((Integer) this.g.get(i2)).intValue();
                    View findViewById = viewGroup.findViewById(intValue);
                    if (findViewById != null) {
                        ae aeVar = new ae();
                        aeVar.b = findViewById;
                        if (z) {
                            a(aeVar);
                        } else {
                            b(aeVar);
                        }
                        if (z) {
                            this.c.a.put(findViewById, aeVar);
                            if (intValue >= 0) {
                                this.c.b.put(intValue, aeVar);
                            }
                        } else {
                            this.w.a.put(findViewById, aeVar);
                            if (intValue >= 0) {
                                this.w.b.put(intValue, aeVar);
                            }
                        }
                    }
                }
            }
            if (this.h.size() > 0) {
                for (int i3 = 0; i3 < this.h.size(); i3++) {
                    View view = (View) this.h.get(i3);
                    if (view != null) {
                        ae aeVar2 = new ae();
                        aeVar2.b = view;
                        if (z) {
                            a(aeVar2);
                        } else {
                            b(aeVar2);
                        }
                        if (z) {
                            this.c.a.put(view, aeVar2);
                        } else {
                            this.w.a.put(view, aeVar2);
                        }
                    }
                }
                return;
            }
            return;
        }
        a((View) viewGroup, z);
    }

    /* access modifiers changed from: 0000 */
    public void a(boolean z) {
        if (z) {
            this.c.a.clear();
            this.c.b.clear();
            this.c.c.clear();
            return;
        }
        this.w.a.clear();
        this.w.b.clear();
        this.w.c.clear();
    }

    private void a(View view, boolean z) {
        boolean z2;
        int i2;
        long itemIdAtPosition;
        if (view != null) {
            if (view.getParent() instanceof ListView) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2 || ((ListView) view.getParent()).getAdapter().hasStableIds()) {
                if (!z2) {
                    i2 = view.getId();
                    itemIdAtPosition = -1;
                } else {
                    ListView listView = (ListView) view.getParent();
                    i2 = -1;
                    itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                }
                if (this.i != null && this.i.contains(Integer.valueOf(i2))) {
                    return;
                }
                if (this.j == null || !this.j.contains(view)) {
                    if (!(this.k == null || view == null)) {
                        int size = this.k.size();
                        int i3 = 0;
                        while (i3 < size) {
                            if (!((Class) this.k.get(i3)).isInstance(view)) {
                                i3++;
                            } else {
                                return;
                            }
                        }
                    }
                    ae aeVar = new ae();
                    aeVar.b = view;
                    if (z) {
                        a(aeVar);
                    } else {
                        b(aeVar);
                    }
                    if (z) {
                        if (!z2) {
                            this.c.a.put(view, aeVar);
                            if (i2 >= 0) {
                                this.c.b.put(i2, aeVar);
                            }
                        } else {
                            this.c.c.put(itemIdAtPosition, aeVar);
                        }
                    } else if (!z2) {
                        this.w.a.put(view, aeVar);
                        if (i2 >= 0) {
                            this.w.b.put(i2, aeVar);
                        }
                    } else {
                        this.w.c.put(itemIdAtPosition, aeVar);
                    }
                    if (!(view instanceof ViewGroup)) {
                        return;
                    }
                    if (this.l != null && this.l.contains(Integer.valueOf(i2))) {
                        return;
                    }
                    if (this.m == null || !this.m.contains(view)) {
                        if (!(this.n == null || view == null)) {
                            int size2 = this.n.size();
                            int i4 = 0;
                            while (i4 < size2) {
                                if (!((Class) this.n.get(i4)).isInstance(view)) {
                                    i4++;
                                } else {
                                    return;
                                }
                            }
                        }
                        ViewGroup viewGroup = (ViewGroup) view;
                        for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
                            a(viewGroup.getChildAt(i5), z);
                        }
                    }
                }
            }
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public void a(View view) {
        if (!this.x) {
            ArrayMap j2 = j();
            int size = j2.size();
            ao a2 = ao.a(view);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                a aVar = (a) j2.valueAt(i2);
                if (aVar.a != null && a2.equals(aVar.d)) {
                    ((Animator) j2.keyAt(i2)).cancel();
                }
            }
            if (this.t != null && this.t.size() > 0) {
                ArrayList arrayList = (ArrayList) this.t.clone();
                int size2 = arrayList.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    ((b) arrayList.get(i3)).b(this);
                }
            }
            this.s = true;
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public void b(View view) {
        if (this.s) {
            if (!this.x) {
                ArrayMap j2 = j();
                int size = j2.size();
                ao a2 = ao.a(view);
                for (int i2 = size - 1; i2 >= 0; i2--) {
                    a aVar = (a) j2.valueAt(i2);
                    if (aVar.a != null && a2.equals(aVar.d)) {
                        ((Animator) j2.keyAt(i2)).end();
                    }
                }
                if (this.t != null && this.t.size() > 0) {
                    ArrayList arrayList = (ArrayList) this.t.clone();
                    int size2 = arrayList.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        ((b) arrayList.get(i3)).c(this);
                    }
                }
            }
            this.s = false;
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(ViewGroup viewGroup) {
        ae aeVar;
        boolean z;
        ArrayMap j2 = j();
        for (int size = j2.size() - 1; size >= 0; size--) {
            Animator animator = (Animator) j2.keyAt(size);
            if (animator != null) {
                a aVar = (a) j2.get(animator);
                if (!(aVar == null || aVar.a == null || aVar.a.getContext() != viewGroup.getContext())) {
                    ae aeVar2 = aVar.c;
                    View view = aVar.a;
                    ae aeVar3 = this.w.a != null ? (ae) this.w.a.get(view) : null;
                    if (aeVar3 == null) {
                        aeVar = (ae) this.w.b.get(view.getId());
                    } else {
                        aeVar = aeVar3;
                    }
                    if (aeVar2 != null && aeVar != null) {
                        Iterator it = aeVar2.a.keySet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            String str = (String) it.next();
                            Object obj = aeVar2.a.get(str);
                            Object obj2 = aeVar.a.get(str);
                            if (obj != null && obj2 != null && !obj.equals(obj2)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    if (z) {
                        if (animator.isRunning() || animator.isStarted()) {
                            animator.cancel();
                        } else {
                            j2.remove(animator);
                        }
                    }
                }
            }
        }
        a(viewGroup, this.c, this.w);
        e();
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public void a(Animator animator) {
        if (animator == null) {
            g();
            return;
        }
        if (b() >= 0) {
            animator.setDuration(b());
        }
        if (c() >= 0) {
            animator.setStartDelay(c());
        }
        if (d() != null) {
            animator.setInterpolator(d());
        }
        animator.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                y.this.g();
                animator.removeListener(this);
            }
        });
        animator.start();
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public void f() {
        if (this.r == 0) {
            if (this.t != null && this.t.size() > 0) {
                ArrayList arrayList = (ArrayList) this.t.clone();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((b) arrayList.get(i2)).d(this);
                }
            }
            this.x = false;
        }
        this.r++;
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public void g() {
        this.r--;
        if (this.r == 0) {
            if (this.t != null && this.t.size() > 0) {
                ArrayList arrayList = (ArrayList) this.t.clone();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((b) arrayList.get(i2)).a(this);
                }
            }
            for (int i3 = 0; i3 < this.c.c.size(); i3++) {
                View view = ((ae) this.c.c.valueAt(i3)).b;
            }
            for (int i4 = 0; i4 < this.w.c.size(); i4++) {
                View view2 = ((ae) this.w.c.valueAt(i4)).b;
            }
            this.x = true;
        }
    }

    public y a(b bVar) {
        if (this.t == null) {
            this.t = new ArrayList<>();
        }
        this.t.add(bVar);
        return this;
    }

    public y b(b bVar) {
        if (this.t != null) {
            this.t.remove(bVar);
            if (this.t.size() == 0) {
                this.t = null;
            }
        }
        return this;
    }

    public String toString() {
        return a("");
    }

    /* renamed from: h */
    public y clone() {
        try {
            y yVar = (y) super.clone();
            try {
                yVar.u = new ArrayList<>();
                yVar.c = new af();
                yVar.w = new af();
                return yVar;
            } catch (CloneNotSupportedException e2) {
                return yVar;
            }
        } catch (CloneNotSupportedException e3) {
            return null;
        }
    }

    public String i() {
        return this.b;
    }

    /* access modifiers changed from: 0000 */
    public String a(String str) {
        String str2;
        String str3 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.e != -1) {
            str3 = str3 + "dur(" + this.e + ") ";
        }
        if (this.d != -1) {
            str3 = str3 + "dly(" + this.d + ") ";
        }
        if (this.f != null) {
            str3 = str3 + "interp(" + this.f + ") ";
        }
        if (this.g.size() <= 0 && this.h.size() <= 0) {
            return str3;
        }
        String str4 = str3 + "tgts(";
        if (this.g.size() > 0) {
            str2 = str4;
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                if (i2 > 0) {
                    str2 = str2 + ", ";
                }
                str2 = str2 + this.g.get(i2);
            }
        } else {
            str2 = str4;
        }
        if (this.h.size() > 0) {
            for (int i3 = 0; i3 < this.h.size(); i3++) {
                if (i3 > 0) {
                    str2 = str2 + ", ";
                }
                str2 = str2 + this.h.get(i3);
            }
        }
        return str2 + ")";
    }
}
