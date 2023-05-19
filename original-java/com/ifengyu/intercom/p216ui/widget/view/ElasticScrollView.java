package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ScrollView;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* renamed from: com.ifengyu.intercom.ui.widget.view.ElasticScrollView */
/* loaded from: classes2.dex */
public class ElasticScrollView extends ScrollView {

    /* renamed from: a */
    private int f16134a;

    /* renamed from: b */
    private int f16135b;

    /* renamed from: c */
    private int f16136c;

    /* renamed from: d */
    private int f16137d;

    /* renamed from: e */
    private View f16138e;

    /* renamed from: f */
    private Rect f16139f;

    public ElasticScrollView(Context context) {
        super(context);
        this.f16134a = 0;
        this.f16135b = 0;
        this.f16136c = 0;
        this.f16137d = 0;
        this.f16139f = new Rect();
    }

    /* renamed from: a */
    private void m8846a() {
        TranslateAnimation translateAnimation = new TranslateAnimation(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f16138e.getTop(), this.f16139f.top);
        translateAnimation.setDuration(200L);
        translateAnimation.setInterpolator(new AccelerateInterpolator());
        this.f16138e.setAnimation(translateAnimation);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f16138e == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            int y = (int) motionEvent.getY();
            this.f16135b = y;
            this.f16134a = y;
        } else if (action == 1) {
            if (!this.f16139f.isEmpty()) {
                m8846a();
                View view = this.f16138e;
                Rect rect = this.f16139f;
                view.layout(rect.left, rect.top, rect.right, rect.bottom);
            }
            this.f16135b = 0;
            this.f16136c = 0;
            this.f16139f.setEmpty();
        } else if (action == 2) {
            int y2 = (int) motionEvent.getY();
            this.f16136c = y2;
            this.f16137d = this.f16134a - y2;
            this.f16134a = y2;
            if (getScrollY() == 0 || this.f16138e.getMeasuredHeight() - getHeight() <= getScrollY()) {
                if (this.f16139f.isEmpty()) {
                    this.f16139f.set(this.f16138e.getLeft(), this.f16138e.getTop(), this.f16138e.getRight(), this.f16138e.getBottom());
                }
                View view2 = this.f16138e;
                view2.layout(view2.getLeft(), this.f16138e.getTop() - (this.f16137d / 3), this.f16138e.getRight(), this.f16138e.getBottom() - (this.f16137d / 3));
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        if (getChildCount() > 0) {
            this.f16138e = getChildAt(0);
        }
    }

    public ElasticScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16134a = 0;
        this.f16135b = 0;
        this.f16136c = 0;
        this.f16137d = 0;
        this.f16139f = new Rect();
    }

    public ElasticScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16134a = 0;
        this.f16135b = 0;
        this.f16136c = 0;
        this.f16137d = 0;
        this.f16139f = new Rect();
    }
}
