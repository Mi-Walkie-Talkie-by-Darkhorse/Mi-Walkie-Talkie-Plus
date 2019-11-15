package com.bumptech.glide.request.a;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import com.bumptech.glide.util.h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: ViewTarget */
public abstract class i<T extends View, Z> extends a<Z> {
    private static boolean b = false;
    @Nullable
    private static Integer c = null;
    protected final T a;
    private final a d;

    @VisibleForTesting
    /* compiled from: ViewTarget */
    static final class a {
        @Nullable
        @VisibleForTesting
        static Integer a;
        private final View b;
        private final boolean c;
        private final List<g> d = new ArrayList();
        @Nullable
        private C0020a e;

        /* renamed from: com.bumptech.glide.request.a.i$a$a reason: collision with other inner class name */
        /* compiled from: ViewTarget */
        private static final class C0020a implements OnPreDrawListener {
            private final WeakReference<a> a;

            C0020a(a aVar) {
                this.a = new WeakReference<>(aVar);
            }

            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called listener=" + this);
                }
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a();
                }
                return true;
            }
        }

        a(View view, boolean z) {
            this.b = view;
            this.c = z;
        }

        private static int a(Context context) {
            if (a == null) {
                Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                a = Integer.valueOf(Math.max(point.x, point.y));
            }
            return a.intValue();
        }

        private void a(int i, int i2) {
            Iterator it = new ArrayList(this.d).iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(i, i2);
            }
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            if (!this.d.isEmpty()) {
                int d2 = d();
                int c2 = c();
                if (b(d2, c2)) {
                    a(d2, c2);
                    b();
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(g gVar) {
            int d2 = d();
            int c2 = c();
            if (b(d2, c2)) {
                gVar.a(d2, c2);
                return;
            }
            if (!this.d.contains(gVar)) {
                this.d.add(gVar);
            }
            if (this.e == null) {
                ViewTreeObserver viewTreeObserver = this.b.getViewTreeObserver();
                this.e = new C0020a(this);
                viewTreeObserver.addOnPreDrawListener(this.e);
            }
        }

        /* access modifiers changed from: 0000 */
        public void b(g gVar) {
            this.d.remove(gVar);
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            ViewTreeObserver viewTreeObserver = this.b.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.e);
            }
            this.e = null;
            this.d.clear();
        }

        private boolean b(int i, int i2) {
            return a(i) && a(i2);
        }

        private int c() {
            int paddingBottom = this.b.getPaddingBottom() + this.b.getPaddingTop();
            LayoutParams layoutParams = this.b.getLayoutParams();
            return a(this.b.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom);
        }

        private int d() {
            int paddingRight = this.b.getPaddingRight() + this.b.getPaddingLeft();
            LayoutParams layoutParams = this.b.getLayoutParams();
            return a(this.b.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        }

        private int a(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.c && this.b.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.b.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            if (Log.isLoggable("ViewTarget", 4)) {
                Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return a(this.b.getContext());
        }

        private boolean a(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }
    }

    public i(T t) {
        this(t, false);
    }

    public i(T t, boolean z) {
        this.a = (View) h.a(t);
        this.d = new a(t, z);
    }

    public void a(g gVar) {
        this.d.a(gVar);
    }

    public void b(g gVar) {
        this.d.b(gVar);
    }

    public void a(Drawable drawable) {
        super.a(drawable);
        this.d.b();
    }

    public void a(@Nullable com.bumptech.glide.request.a aVar) {
        a((Object) aVar);
    }

    @Nullable
    public com.bumptech.glide.request.a b() {
        Object f = f();
        if (f == null) {
            return null;
        }
        if (f instanceof com.bumptech.glide.request.a) {
            return (com.bumptech.glide.request.a) f;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    public String toString() {
        return "Target for: " + this.a;
    }

    private void a(@Nullable Object obj) {
        if (c == null) {
            b = true;
            this.a.setTag(obj);
            return;
        }
        this.a.setTag(c.intValue(), obj);
    }

    @Nullable
    private Object f() {
        if (c == null) {
            return this.a.getTag();
        }
        return this.a.getTag(c.intValue());
    }
}
