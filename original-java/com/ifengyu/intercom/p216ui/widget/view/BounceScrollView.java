package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.ScrollView;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* renamed from: com.ifengyu.intercom.ui.widget.view.BounceScrollView */
/* loaded from: classes2.dex */
public class BounceScrollView extends ScrollView {

    /* renamed from: a */
    private View f16076a;

    /* renamed from: b */
    private float f16077b;

    /* renamed from: c */
    private Rect f16078c;

    /* renamed from: d */
    private boolean f16079d;

    /* renamed from: e */
    private float f16080e;

    /* renamed from: f */
    private float f16081f;

    /* renamed from: g */
    private float f16082g;

    /* renamed from: h */
    private float f16083h;

    /* renamed from: i */
    private float f16084i;

    /* renamed from: j */
    private float f16085j;

    /* renamed from: k */
    private boolean f16086k;

    public BounceScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16078c = new Rect();
        this.f16079d = false;
        this.f16080e = BitmapDescriptorFactory.HUE_RED;
        this.f16081f = BitmapDescriptorFactory.HUE_RED;
        this.f16082g = BitmapDescriptorFactory.HUE_RED;
        this.f16083h = BitmapDescriptorFactory.HUE_RED;
        this.f16084i = BitmapDescriptorFactory.HUE_RED;
        this.f16085j = BitmapDescriptorFactory.HUE_RED;
        this.f16086k = false;
    }

    /* renamed from: b */
    private void m8872b() {
        this.f16080e = BitmapDescriptorFactory.HUE_RED;
        this.f16081f = BitmapDescriptorFactory.HUE_RED;
        this.f16084i = BitmapDescriptorFactory.HUE_RED;
        this.f16085j = BitmapDescriptorFactory.HUE_RED;
        this.f16086k = false;
    }

    /* renamed from: a */
    public void m8873a() {
        TranslateAnimation translateAnimation = new TranslateAnimation(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f16076a.getTop(), this.f16078c.top);
        translateAnimation.setDuration(200L);
        this.f16076a.startAnimation(translateAnimation);
        View view = this.f16076a;
        Rect rect = this.f16078c;
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
        this.f16078c.setEmpty();
    }

    /* renamed from: c */
    public void m8871c(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1) {
            if (m8870d()) {
                m8873a();
                this.f16079d = false;
            }
            m8872b();
        } else if (action != 2) {
        } else {
            float f = this.f16077b;
            float y = motionEvent.getY();
            int i = this.f16079d ? (int) (f - y) : 0;
            this.f16077b = y;
            if (m8869e()) {
                if (this.f16078c.isEmpty()) {
                    this.f16078c.set(this.f16076a.getLeft(), this.f16076a.getTop(), this.f16076a.getRight(), this.f16076a.getBottom());
                }
                View view = this.f16076a;
                int i2 = i / 2;
                view.layout(view.getLeft(), this.f16076a.getTop() - i2, this.f16076a.getRight(), this.f16076a.getBottom() - i2);
            }
            this.f16079d = true;
        }
    }

    /* renamed from: d */
    public boolean m8870d() {
        return !this.f16078c.isEmpty();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.f16082g = motionEvent.getX();
        this.f16083h = motionEvent.getY();
        if (motionEvent.getAction() == 2) {
            float f = this.f16082g - this.f16080e;
            this.f16084i = f;
            this.f16085j = this.f16083h - this.f16081f;
            if (Math.abs(f) < Math.abs(this.f16085j) && Math.abs(this.f16085j) > 12.0f) {
                this.f16086k = true;
            }
        }
        this.f16080e = this.f16082g;
        this.f16081f = this.f16083h;
        if (this.f16086k && this.f16076a != null) {
            m8871c(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: e */
    public boolean m8869e() {
        int measuredHeight = this.f16076a.getMeasuredHeight() - getHeight();
        int scrollY = getScrollY();
        return scrollY == 0 || scrollY == measuredHeight;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        if (getChildCount() > 0) {
            this.f16076a = getChildAt(0);
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }
}
