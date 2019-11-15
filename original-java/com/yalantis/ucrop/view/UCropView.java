package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.yalantis.ucrop.R;
import com.yalantis.ucrop.a.c;
import com.yalantis.ucrop.a.d;

public class UCropView extends FrameLayout {
    /* access modifiers changed from: private */
    public final GestureCropImageView a;
    /* access modifiers changed from: private */
    public final OverlayView b;

    public UCropView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UCropView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.ucrop_view, this, true);
        this.a = (GestureCropImageView) findViewById(R.id.image_view_crop);
        this.b = (OverlayView) findViewById(R.id.view_overlay);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ucrop_UCropView);
        this.b.a(obtainStyledAttributes);
        this.a.a(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        this.a.setCropBoundsChangeListener(new c() {
            public void a(float f) {
                UCropView.this.b.setTargetAspectRatio(f);
            }
        });
        this.b.setOverlayViewChangeListener(new d() {
            public void a(RectF rectF) {
                UCropView.this.a.setCropRect(rectF);
            }
        });
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @NonNull
    public GestureCropImageView getCropImageView() {
        return this.a;
    }

    @NonNull
    public OverlayView getOverlayView() {
        return this.b;
    }
}
