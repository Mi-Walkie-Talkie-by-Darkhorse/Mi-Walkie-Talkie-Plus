package com.ifengyu.intercom.ui.widget.dialog;

import android.content.Context;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.AbsListView;
import android.widget.FrameLayout.LayoutParams;

/* compiled from: ExpandTouchListener */
class i implements OnTouchListener {
    private final AbsListView a;
    private final View b;
    private final int c;
    private final int d;
    private final GestureDetector e;
    private final int f;
    private float g;
    /* access modifiers changed from: private */
    public boolean h;
    private boolean i;
    /* access modifiers changed from: private */
    public boolean j;
    private LayoutParams k;

    public static i a(Context context, AbsListView absListView, View view, int i2, int i3, int i4) {
        return new i(context, absListView, view, i2, i3, i4);
    }

    private i(Context context, AbsListView absListView, View view, int i2, int i3, int i4) {
        this.a = absListView;
        this.b = view;
        this.f = i2;
        this.c = i3;
        this.d = i4;
        this.k = (LayoutParams) view.getLayoutParams();
        this.e = new GestureDetector(context, new SimpleOnGestureListener() {
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }

            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                boolean z;
                i iVar = i.this;
                if (f2 > 0.0f) {
                    z = true;
                } else {
                    z = false;
                }
                iVar.j = z;
                return false;
            }
        });
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.e.onTouchEvent(motionEvent)) {
            return false;
        }
        if ((this.j || !ad.a(this.a)) && this.h) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.g = motionEvent.getRawY();
                return true;
            case 1:
                b(view, motionEvent);
                break;
            case 2:
                if (this.k.height != this.c) {
                    a(view, motionEvent);
                    break;
                } else {
                    this.k.height--;
                    this.b.setLayoutParams(this.k);
                    return false;
                }
        }
        return true;
    }

    private void a(View view, MotionEvent motionEvent) {
        float f2;
        boolean z = true;
        if (this.g == -1.0f) {
            this.g = motionEvent.getRawY();
        }
        float rawY = this.g - motionEvent.getRawY();
        this.i = rawY > 0.0f;
        if (this.f == 48) {
            f2 = -rawY;
        } else {
            f2 = rawY;
        }
        this.g = motionEvent.getRawY();
        int i2 = ((int) f2) + this.k.height;
        if (i2 > this.c) {
            i2 = this.c;
        }
        if (i2 < this.d) {
            i2 = this.d;
        }
        this.k.height = i2;
        this.b.setLayoutParams(this.k);
        if (this.k.height != this.c) {
            z = false;
        }
        this.h = z;
    }

    private void b(View view, MotionEvent motionEvent) {
        this.g = -1.0f;
        if (!this.i && this.k.height < this.c && this.k.height > (this.c * 4) / 5) {
            ad.a(this.b, this.c, (AnimationListener) new z() {
                public void onAnimationEnd(Animation animation) {
                    i.this.h = true;
                }
            });
        } else if (this.i && this.k.height > this.d + 50) {
            ad.a(this.b, this.c, (AnimationListener) new z() {
                public void onAnimationEnd(Animation animation) {
                    i.this.h = true;
                }
            });
        } else if (this.i && this.k.height <= this.d + 50) {
            ad.a(this.b, this.d, (AnimationListener) new z());
        } else if (!this.i && this.k.height > this.d) {
            ad.a(this.b, this.d, (AnimationListener) new z());
        }
    }
}
