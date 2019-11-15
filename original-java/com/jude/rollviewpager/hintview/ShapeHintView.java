package com.jude.rollviewpager.hintview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.jude.rollviewpager.a;

public abstract class ShapeHintView extends LinearLayout implements a {
    private ImageView[] a;
    private int b = 0;
    private int c = 0;
    private Drawable d;
    private Drawable e;

    public abstract Drawable a();

    public abstract Drawable b();

    public ShapeHintView(Context context) {
        super(context);
    }

    public ShapeHintView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a(int i, int i2) {
        removeAllViews();
        this.c = 0;
        setOrientation(0);
        switch (i2) {
            case 0:
                setGravity(19);
                break;
            case 1:
                setGravity(17);
                break;
            case 2:
                setGravity(21);
                break;
        }
        this.b = i;
        this.a = new ImageView[i];
        this.e = a();
        this.d = b();
        for (int i3 = 0; i3 < i; i3++) {
            this.a[i3] = new ImageView(getContext());
            LayoutParams layoutParams = new LayoutParams(-2, -2);
            layoutParams.setMargins(10, 0, 10, 0);
            this.a[i3].setLayoutParams(layoutParams);
            this.a[i3].setBackgroundDrawable(this.d);
            addView(this.a[i3]);
        }
        setCurrent(0);
    }

    public void setCurrent(int i) {
        if (i >= 0 && i <= this.b - 1) {
            this.a[this.c].setBackgroundDrawable(this.d);
            this.a[i].setBackgroundDrawable(this.e);
            this.c = i;
        }
    }
}
