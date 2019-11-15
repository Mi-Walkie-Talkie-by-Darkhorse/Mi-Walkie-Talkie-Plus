package com.jude.rollviewpager;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Scroller;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.jude.rollviewpager.adapter.LoopPagerAdapter;
import com.jude.rollviewpager.hintview.ColorPointHintView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Timer;
import java.util.TimerTask;

public class RollPagerView extends RelativeLayout implements OnPageChangeListener {
    /* access modifiers changed from: private */
    public ViewPager a;
    /* access modifiers changed from: private */
    public PagerAdapter b;
    /* access modifiers changed from: private */
    public b c;
    private GestureDetector d;
    /* access modifiers changed from: private */
    public long e;
    /* access modifiers changed from: private */
    public int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    /* access modifiers changed from: private */
    public View n;
    private Timer o;
    /* access modifiers changed from: private */
    public a p;
    /* access modifiers changed from: private */
    public c q;

    public interface a {
        void a(int i, int i2, a aVar);

        void a(int i, a aVar);
    }

    private class b extends DataSetObserver {
        private b() {
        }

        public void onChanged() {
            RollPagerView.this.d();
        }

        public void onInvalidated() {
            RollPagerView.this.d();
        }
    }

    private static final class c extends Handler {
        private WeakReference<RollPagerView> a;

        public c(RollPagerView rollPagerView) {
            this.a = new WeakReference<>(rollPagerView);
        }

        public void handleMessage(Message message) {
            int i;
            RollPagerView rollPagerView = (RollPagerView) this.a.get();
            int currentItem = rollPagerView.getViewPager().getCurrentItem() + 1;
            if (currentItem >= rollPagerView.b.getCount()) {
                i = 0;
            } else {
                i = currentItem;
            }
            rollPagerView.getViewPager().setCurrentItem(i);
            rollPagerView.p.a(i, (a) rollPagerView.n);
            if (rollPagerView.b.getCount() <= 1) {
                rollPagerView.b();
            }
        }
    }

    private static class d extends TimerTask {
        private WeakReference<RollPagerView> a;

        public d(RollPagerView rollPagerView) {
            this.a = new WeakReference<>(rollPagerView);
        }

        public void run() {
            RollPagerView rollPagerView = (RollPagerView) this.a.get();
            if (rollPagerView == null) {
                cancel();
            } else if (rollPagerView.isShown() && System.currentTimeMillis() - rollPagerView.e > ((long) rollPagerView.f)) {
                rollPagerView.q.sendEmptyMessage(0);
            }
        }
    }

    public RollPagerView(Context context) {
        this(context, null);
    }

    public RollPagerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RollPagerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.p = new a() {
            public void a(int i, a aVar) {
                if (aVar != null) {
                    aVar.setCurrent(i);
                }
            }

            public void a(int i, int i2, a aVar) {
                if (aVar != null) {
                    aVar.a(i, i2);
                }
            }
        };
        this.q = new c(this);
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        if (this.a != null) {
            removeView(this.a);
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.RollViewPager);
        this.g = obtainStyledAttributes.getInteger(R.styleable.RollViewPager_rollviewpager_hint_gravity, 1);
        this.f = obtainStyledAttributes.getInt(R.styleable.RollViewPager_rollviewpager_play_delay, 0);
        this.h = obtainStyledAttributes.getColor(R.styleable.RollViewPager_rollviewpager_hint_color, ViewCompat.MEASURED_STATE_MASK);
        this.i = obtainStyledAttributes.getInt(R.styleable.RollViewPager_rollviewpager_hint_alpha, 0);
        this.j = (int) obtainStyledAttributes.getDimension(R.styleable.RollViewPager_rollviewpager_hint_paddingLeft, 0.0f);
        this.l = (int) obtainStyledAttributes.getDimension(R.styleable.RollViewPager_rollviewpager_hint_paddingRight, 0.0f);
        this.k = (int) obtainStyledAttributes.getDimension(R.styleable.RollViewPager_rollviewpager_hint_paddingTop, 0.0f);
        this.m = (int) obtainStyledAttributes.getDimension(R.styleable.RollViewPager_rollviewpager_hint_paddingBottom, (float) c.a(getContext(), 4.0f));
        this.a = new ViewPager(getContext());
        this.a.setId(R.id.viewpager_inner);
        this.a.setLayoutParams(new LayoutParams(-1, -1));
        addView(this.a);
        obtainStyledAttributes.recycle();
        a((a) new ColorPointHintView(getContext(), Color.parseColor("#E3AC42"), Color.parseColor("#88ffffff")));
        this.d = new GestureDetector(getContext(), new SimpleOnGestureListener() {
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                if (RollPagerView.this.c != null) {
                    if (RollPagerView.this.b instanceof LoopPagerAdapter) {
                        RollPagerView.this.c.a(RollPagerView.this.a.getCurrentItem() % ((LoopPagerAdapter) RollPagerView.this.b).a());
                    } else {
                        RollPagerView.this.c.a(RollPagerView.this.a.getCurrentItem());
                    }
                }
                return super.onSingleTapUp(motionEvent);
            }
        });
    }

    private void a() {
        if (this.f > 0 && this.b != null && this.b.getCount() > 1) {
            if (this.o != null) {
                this.o.cancel();
            }
            this.o = new Timer();
            this.o.schedule(new d(this), (long) this.f, (long) this.f);
        }
    }

    /* access modifiers changed from: private */
    public void b() {
        if (this.o != null) {
            this.o.cancel();
            this.o = null;
        }
    }

    public void setHintViewDelegate(a aVar) {
        this.p = aVar;
    }

    private void a(a aVar) {
        if (this.n != null) {
            removeView(this.n);
        }
        if (aVar != null && (aVar instanceof a)) {
            this.n = (View) aVar;
            c();
        }
    }

    private void c() {
        addView(this.n);
        this.n.setPadding(this.j, this.k, this.l, this.m);
        LayoutParams layoutParams = new LayoutParams(-1, -2);
        layoutParams.addRule(12);
        this.n.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.h);
        gradientDrawable.setAlpha(this.i);
        this.n.setBackgroundDrawable(gradientDrawable);
        this.p.a(this.b == null ? 0 : this.b.getCount(), this.g, (a) this.n);
    }

    public void setAnimationDurtion(final int i2) {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            declaredField.set(this.a, new Scroller(getContext(), new Interpolator() {
                public float getInterpolation(float f) {
                    float f2 = f - 1.0f;
                    return (f2 * f2 * f2 * f2 * f2) + 1.0f;
                }
            }) {
                public void startScroll(int i, int i2, int i3, int i4, int i5) {
                    int i6;
                    if (System.currentTimeMillis() - RollPagerView.this.e > ((long) RollPagerView.this.f)) {
                        i6 = i2;
                    } else {
                        i6 = i5 / 2;
                    }
                    super.startScroll(i, i2, i3, i4, i6);
                }

                public void startScroll(int i, int i2, int i3, int i4) {
                    super.startScroll(i, i2, i3, i4, i2);
                }
            });
        } catch (NoSuchFieldException e2) {
            ThrowableExtension.printStackTrace(e2);
        } catch (IllegalArgumentException e3) {
            ThrowableExtension.printStackTrace(e3);
        } catch (IllegalAccessException e4) {
            ThrowableExtension.printStackTrace(e4);
        }
    }

    public void setPlayDelay(int i2) {
        this.f = i2;
        a();
    }

    public void setOnItemClickListener(b bVar) {
        this.c = bVar;
    }

    public void setHintPadding(int i2, int i3, int i4, int i5) {
        this.j = i2;
        this.k = i3;
        this.l = i4;
        this.m = i5;
        this.n.setPadding(this.j, this.k, this.l, this.m);
    }

    public void setHintAlpha(int i2) {
        this.i = i2;
        a((a) this.n);
    }

    public void setHintView(a aVar) {
        if (this.n != null) {
            removeView(this.n);
        }
        this.n = (View) aVar;
        if (aVar != null && (aVar instanceof View)) {
            a(aVar);
        }
    }

    public ViewPager getViewPager() {
        return this.a;
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        pagerAdapter.registerDataSetObserver(new b());
        this.a.setAdapter(pagerAdapter);
        this.a.addOnPageChangeListener(this);
        this.b = pagerAdapter;
        d();
    }

    /* access modifiers changed from: private */
    public void d() {
        if (this.n != null) {
            this.p.a(this.b.getCount(), this.g, (a) this.n);
            this.p.a(this.a.getCurrentItem(), (a) this.n);
        }
        a();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.e = System.currentTimeMillis();
        this.d.onTouchEvent(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    public void onPageScrollStateChanged(int i2) {
    }

    public void onPageScrolled(int i2, float f2, int i3) {
    }

    public void onPageSelected(int i2) {
        this.p.a(i2, (a) this.n);
    }
}
