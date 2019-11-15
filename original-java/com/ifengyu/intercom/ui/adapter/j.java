package com.ifengyu.intercom.ui.adapter;

import android.support.annotation.NonNull;
import android.support.v4.animation.AnimatorCompatHelper;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: NoAlphaItemAnimator */
public class j extends DefaultItemAnimator {
    private ArrayList<ViewHolder> a = new ArrayList<>();
    private ArrayList<ViewHolder> b = new ArrayList<>();
    private ArrayList<b> c = new ArrayList<>();
    private ArrayList<a> d = new ArrayList<>();
    /* access modifiers changed from: private */
    public ArrayList<ArrayList<ViewHolder>> e = new ArrayList<>();
    /* access modifiers changed from: private */
    public ArrayList<ArrayList<b>> f = new ArrayList<>();
    /* access modifiers changed from: private */
    public ArrayList<ArrayList<a>> g = new ArrayList<>();
    /* access modifiers changed from: private */
    public ArrayList<ViewHolder> h = new ArrayList<>();
    /* access modifiers changed from: private */
    public ArrayList<ViewHolder> i = new ArrayList<>();
    /* access modifiers changed from: private */
    public ArrayList<ViewHolder> j = new ArrayList<>();
    /* access modifiers changed from: private */
    public ArrayList<ViewHolder> k = new ArrayList<>();

    /* compiled from: NoAlphaItemAnimator */
    private static class a {
        public ViewHolder a;
        public ViewHolder b;
        public int c;
        public int d;
        public int e;
        public int f;

        private a(ViewHolder viewHolder, ViewHolder viewHolder2) {
            this.a = viewHolder;
            this.b = viewHolder2;
        }

        private a(ViewHolder viewHolder, ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
            this(viewHolder, viewHolder2);
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.a + ", newHolder=" + this.b + ", fromX=" + this.c + ", fromY=" + this.d + ", toX=" + this.e + ", toY=" + this.f + '}';
        }
    }

    /* compiled from: NoAlphaItemAnimator */
    private static class b {
        public ViewHolder a;
        public int b;
        public int c;
        public int d;
        public int e;

        private b(ViewHolder viewHolder, int i, int i2, int i3, int i4) {
            this.a = viewHolder;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }
    }

    /* compiled from: NoAlphaItemAnimator */
    private static class c implements ViewPropertyAnimatorListener {
        private c() {
        }

        public void onAnimationStart(View view) {
        }

        public void onAnimationEnd(View view) {
        }

        public void onAnimationCancel(View view) {
        }
    }

    public void runPendingAnimations() {
        boolean z;
        boolean z2;
        boolean z3;
        long j2;
        long j3;
        boolean z4 = !this.a.isEmpty();
        if (!this.c.isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        if (!this.d.isEmpty()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!this.b.isEmpty()) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z4 || z || z3 || z2) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                a((ViewHolder) it.next());
            }
            this.a.clear();
            if (z) {
                final ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.c);
                this.f.add(arrayList);
                this.c.clear();
                AnonymousClass1 r8 = new Runnable() {
                    public void run() {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            b bVar = (b) it.next();
                            j.this.a(bVar.a, bVar.b, bVar.c, bVar.d, bVar.e);
                        }
                        arrayList.clear();
                        j.this.f.remove(arrayList);
                    }
                };
                if (z4) {
                    ViewCompat.postOnAnimationDelayed(((b) arrayList.get(0)).a.itemView, r8, getRemoveDuration());
                } else {
                    r8.run();
                }
            }
            if (z2) {
                final ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(this.d);
                this.g.add(arrayList2);
                this.d.clear();
                AnonymousClass2 r82 = new Runnable() {
                    public void run() {
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            j.this.a((a) it.next());
                        }
                        arrayList2.clear();
                        j.this.g.remove(arrayList2);
                    }
                };
                if (z4) {
                    ViewCompat.postOnAnimationDelayed(((a) arrayList2.get(0)).a.itemView, r82, getRemoveDuration());
                } else {
                    r82.run();
                }
            }
            if (z3) {
                final ArrayList arrayList3 = new ArrayList();
                arrayList3.addAll(this.b);
                this.e.add(arrayList3);
                this.b.clear();
                AnonymousClass3 r12 = new Runnable() {
                    public void run() {
                        Iterator it = arrayList3.iterator();
                        while (it.hasNext()) {
                            j.this.b((ViewHolder) it.next());
                        }
                        arrayList3.clear();
                        j.this.e.remove(arrayList3);
                    }
                };
                if (z4 || z || z2) {
                    long j4 = z4 ? getRemoveDuration() : 0;
                    if (z) {
                        j2 = getMoveDuration();
                    } else {
                        j2 = 0;
                    }
                    if (z2) {
                        j3 = getChangeDuration();
                    } else {
                        j3 = 0;
                    }
                    ViewCompat.postOnAnimationDelayed(((ViewHolder) arrayList3.get(0)).itemView, r12, j4 + Math.max(j2, j3));
                    return;
                }
                r12.run();
            }
        }
    }

    public boolean animateRemove(ViewHolder viewHolder) {
        c(viewHolder);
        this.a.add(viewHolder);
        return true;
    }

    private void a(final ViewHolder viewHolder) {
        final ViewPropertyAnimatorCompat animate = ViewCompat.animate(viewHolder.itemView);
        this.j.add(viewHolder);
        animate.setDuration(getRemoveDuration()).alpha(0.0f).setListener(new c() {
            public void onAnimationStart(View view) {
                j.this.dispatchRemoveStarting(viewHolder);
            }

            public void onAnimationEnd(View view) {
                animate.setListener(null);
                ViewCompat.setAlpha(view, 1.0f);
                j.this.dispatchRemoveFinished(viewHolder);
                j.this.j.remove(viewHolder);
                j.this.a();
            }
        }).start();
    }

    public boolean animateAdd(ViewHolder viewHolder) {
        c(viewHolder);
        ViewCompat.setAlpha(viewHolder.itemView, 0.0f);
        this.b.add(viewHolder);
        return true;
    }

    /* access modifiers changed from: private */
    public void b(final ViewHolder viewHolder) {
        final ViewPropertyAnimatorCompat animate = ViewCompat.animate(viewHolder.itemView);
        this.h.add(viewHolder);
        animate.alpha(1.0f).setDuration(getAddDuration()).setListener(new c() {
            public void onAnimationStart(View view) {
                j.this.dispatchAddStarting(viewHolder);
            }

            public void onAnimationCancel(View view) {
                ViewCompat.setAlpha(view, 1.0f);
            }

            public void onAnimationEnd(View view) {
                animate.setListener(null);
                j.this.dispatchAddFinished(viewHolder);
                j.this.h.remove(viewHolder);
                j.this.a();
            }
        }).start();
    }

    public boolean animateMove(ViewHolder viewHolder, int i2, int i3, int i4, int i5) {
        View view = viewHolder.itemView;
        int translationX = (int) (((float) i2) + ViewCompat.getTranslationX(viewHolder.itemView));
        int translationY = (int) (((float) i3) + ViewCompat.getTranslationY(viewHolder.itemView));
        c(viewHolder);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            dispatchMoveFinished(viewHolder);
            return false;
        }
        if (i6 != 0) {
            ViewCompat.setTranslationX(view, (float) (-i6));
        }
        if (i7 != 0) {
            ViewCompat.setTranslationY(view, (float) (-i7));
        }
        this.c.add(new b(viewHolder, translationX, translationY, i4, i5));
        return true;
    }

    /* access modifiers changed from: private */
    public void a(ViewHolder viewHolder, int i2, int i3, int i4, int i5) {
        View view = viewHolder.itemView;
        final int i6 = i4 - i2;
        final int i7 = i5 - i3;
        if (i6 != 0) {
            ViewCompat.animate(view).translationX(0.0f);
        }
        if (i7 != 0) {
            ViewCompat.animate(view).translationY(0.0f);
        }
        final ViewPropertyAnimatorCompat animate = ViewCompat.animate(view);
        this.i.add(viewHolder);
        final ViewHolder viewHolder2 = viewHolder;
        animate.setDuration(getMoveDuration()).setListener(new c() {
            public void onAnimationStart(View view) {
                j.this.dispatchMoveStarting(viewHolder2);
            }

            public void onAnimationCancel(View view) {
                if (i6 != 0) {
                    ViewCompat.setTranslationX(view, 0.0f);
                }
                if (i7 != 0) {
                    ViewCompat.setTranslationY(view, 0.0f);
                }
            }

            public void onAnimationEnd(View view) {
                animate.setListener(null);
                j.this.dispatchMoveFinished(viewHolder2);
                j.this.i.remove(viewHolder2);
                j.this.a();
            }
        }).start();
    }

    public boolean animateChange(ViewHolder viewHolder, ViewHolder viewHolder2, int i2, int i3, int i4, int i5) {
        if (viewHolder == viewHolder2) {
            return animateMove(viewHolder, i2, i3, i4, i5);
        }
        float translationX = ViewCompat.getTranslationX(viewHolder.itemView);
        float translationY = ViewCompat.getTranslationY(viewHolder.itemView);
        float alpha = ViewCompat.getAlpha(viewHolder.itemView);
        c(viewHolder);
        int i6 = (int) (((float) (i4 - i2)) - translationX);
        int i7 = (int) (((float) (i5 - i3)) - translationY);
        ViewCompat.setTranslationX(viewHolder.itemView, translationX);
        ViewCompat.setTranslationY(viewHolder.itemView, translationY);
        ViewCompat.setAlpha(viewHolder.itemView, alpha);
        if (viewHolder2 != null) {
            c(viewHolder2);
            ViewCompat.setTranslationX(viewHolder2.itemView, (float) (-i6));
            ViewCompat.setTranslationY(viewHolder2.itemView, (float) (-i7));
            ViewCompat.setAlpha(viewHolder2.itemView, 0.0f);
        }
        this.d.add(new a(viewHolder, viewHolder2, i2, i3, i4, i5));
        return true;
    }

    /* access modifiers changed from: private */
    public void a(final a aVar) {
        final View view = null;
        ViewHolder viewHolder = aVar.a;
        View view2 = viewHolder == null ? null : viewHolder.itemView;
        ViewHolder viewHolder2 = aVar.b;
        if (viewHolder2 != null) {
            view = viewHolder2.itemView;
        }
        if (view2 != null) {
            final ViewPropertyAnimatorCompat duration = ViewCompat.animate(view2).setDuration(getChangeDuration());
            this.k.add(aVar.a);
            duration.translationX((float) (aVar.e - aVar.c));
            duration.translationY((float) (aVar.f - aVar.d));
            duration.setListener(new c() {
                public void onAnimationStart(View view) {
                    j.this.dispatchChangeStarting(aVar.a, true);
                }

                public void onAnimationEnd(View view) {
                    duration.setListener(null);
                    ViewCompat.setAlpha(view, 1.0f);
                    ViewCompat.setTranslationX(view, 0.0f);
                    ViewCompat.setTranslationY(view, 0.0f);
                    j.this.dispatchChangeFinished(aVar.a, true);
                    j.this.k.remove(aVar.a);
                    j.this.a();
                }
            }).start();
        }
        if (view != null) {
            final ViewPropertyAnimatorCompat animate = ViewCompat.animate(view);
            this.k.add(aVar.b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(getChangeDuration()).setListener(new c() {
                public void onAnimationStart(View view) {
                    j.this.dispatchChangeStarting(aVar.b, false);
                }

                public void onAnimationEnd(View view) {
                    animate.setListener(null);
                    ViewCompat.setAlpha(view, 1.0f);
                    ViewCompat.setTranslationX(view, 0.0f);
                    ViewCompat.setTranslationY(view, 0.0f);
                    j.this.dispatchChangeFinished(aVar.b, false);
                    j.this.k.remove(aVar.b);
                    j.this.a();
                }
            }).start();
        }
    }

    private void a(List<a> list, ViewHolder viewHolder) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = (a) list.get(size);
            if (a(aVar, viewHolder) && aVar.a == null && aVar.b == null) {
                list.remove(aVar);
            }
        }
    }

    private void b(a aVar) {
        if (aVar.a != null) {
            a(aVar, aVar.a);
        }
        if (aVar.b != null) {
            a(aVar, aVar.b);
        }
    }

    private boolean a(a aVar, ViewHolder viewHolder) {
        boolean z = false;
        if (aVar.b == viewHolder) {
            aVar.b = null;
        } else if (aVar.a != viewHolder) {
            return false;
        } else {
            aVar.a = null;
            z = true;
        }
        ViewCompat.setAlpha(viewHolder.itemView, 1.0f);
        ViewCompat.setTranslationX(viewHolder.itemView, 0.0f);
        ViewCompat.setTranslationY(viewHolder.itemView, 0.0f);
        dispatchChangeFinished(viewHolder, z);
        return true;
    }

    public void endAnimation(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        ViewCompat.animate(view).cancel();
        for (int size = this.c.size() - 1; size >= 0; size--) {
            if (((b) this.c.get(size)).a == viewHolder) {
                ViewCompat.setTranslationY(view, 0.0f);
                ViewCompat.setTranslationX(view, 0.0f);
                dispatchMoveFinished(viewHolder);
                this.c.remove(size);
            }
        }
        a((List<a>) this.d, viewHolder);
        if (this.a.remove(viewHolder)) {
            ViewCompat.setAlpha(view, 1.0f);
            dispatchRemoveFinished(viewHolder);
        }
        if (this.b.remove(viewHolder)) {
            ViewCompat.setAlpha(view, 1.0f);
            dispatchAddFinished(viewHolder);
        }
        for (int size2 = this.g.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList = (ArrayList) this.g.get(size2);
            a((List<a>) arrayList, viewHolder);
            if (arrayList.isEmpty()) {
                this.g.remove(size2);
            }
        }
        for (int size3 = this.f.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList2 = (ArrayList) this.f.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (((b) arrayList2.get(size4)).a == viewHolder) {
                    ViewCompat.setTranslationY(view, 0.0f);
                    ViewCompat.setTranslationX(view, 0.0f);
                    dispatchMoveFinished(viewHolder);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.e.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList3 = (ArrayList) this.e.get(size5);
            if (arrayList3.remove(viewHolder)) {
                ViewCompat.setAlpha(view, 1.0f);
                dispatchAddFinished(viewHolder);
                if (arrayList3.isEmpty()) {
                    this.e.remove(size5);
                }
            }
        }
        if (this.j.remove(viewHolder)) {
        }
        if (this.h.remove(viewHolder)) {
        }
        if (this.k.remove(viewHolder)) {
        }
        if (this.i.remove(viewHolder)) {
        }
        a();
    }

    private void c(ViewHolder viewHolder) {
        AnimatorCompatHelper.clearInterpolator(viewHolder.itemView);
        endAnimation(viewHolder);
    }

    public boolean isRunning() {
        if (!this.b.isEmpty() || !this.d.isEmpty() || !this.c.isEmpty() || !this.a.isEmpty() || !this.i.isEmpty() || !this.j.isEmpty() || !this.h.isEmpty() || !this.k.isEmpty() || !this.f.isEmpty() || !this.e.isEmpty() || !this.g.isEmpty()) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: private */
    public void a() {
        if (!isRunning()) {
            dispatchAnimationsFinished();
        }
    }

    public void endAnimations() {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            b bVar = (b) this.c.get(size);
            View view = bVar.a.itemView;
            ViewCompat.setTranslationY(view, 0.0f);
            ViewCompat.setTranslationX(view, 0.0f);
            dispatchMoveFinished(bVar.a);
            this.c.remove(size);
        }
        for (int size2 = this.a.size() - 1; size2 >= 0; size2--) {
            dispatchRemoveFinished((ViewHolder) this.a.get(size2));
            this.a.remove(size2);
        }
        for (int size3 = this.b.size() - 1; size3 >= 0; size3--) {
            ViewHolder viewHolder = (ViewHolder) this.b.get(size3);
            ViewCompat.setAlpha(viewHolder.itemView, 1.0f);
            dispatchAddFinished(viewHolder);
            this.b.remove(size3);
        }
        for (int size4 = this.d.size() - 1; size4 >= 0; size4--) {
            b((a) this.d.get(size4));
        }
        this.d.clear();
        if (isRunning()) {
            for (int size5 = this.f.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList = (ArrayList) this.f.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    b bVar2 = (b) arrayList.get(size6);
                    View view2 = bVar2.a.itemView;
                    ViewCompat.setTranslationY(view2, 0.0f);
                    ViewCompat.setTranslationX(view2, 0.0f);
                    dispatchMoveFinished(bVar2.a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.e.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList2 = (ArrayList) this.e.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    ViewHolder viewHolder2 = (ViewHolder) arrayList2.get(size8);
                    ViewCompat.setAlpha(viewHolder2.itemView, 1.0f);
                    dispatchAddFinished(viewHolder2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.e.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.g.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList3 = (ArrayList) this.g.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    b((a) arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.g.remove(arrayList3);
                    }
                }
            }
            cancelAll(this.j);
            cancelAll(this.i);
            cancelAll(this.h);
            cancelAll(this.k);
            dispatchAnimationsFinished();
        }
    }

    /* access modifiers changed from: 0000 */
    public void cancelAll(List<ViewHolder> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            ViewCompat.animate(((ViewHolder) list.get(size)).itemView).cancel();
        }
    }

    public boolean canReuseUpdatedViewHolder(@NonNull ViewHolder viewHolder, @NonNull List<Object> list) {
        return !list.isEmpty() || super.canReuseUpdatedViewHolder(viewHolder, list);
    }
}
