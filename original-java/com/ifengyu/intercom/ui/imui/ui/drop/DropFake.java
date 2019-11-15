package com.ifengyu.intercom.ui.imui.ui.drop;

import android.content.Context;
import android.graphics.Canvas;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.ScrollView;

public class DropFake extends View {
    private int a;
    private float b;
    private float c;
    private String d;
    private boolean e = true;
    private a f;

    public interface a {
        void onDown();

        void onMove(float f, float f2);

        void onUp();
    }

    public DropFake(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a.a().b();
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.e) {
            this.e = false;
            this.a = a.b;
            this.b = (float) (i / 2);
            this.c = (float) (i2 / 2);
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.b, this.c, (float) this.a, a.a().h());
        if (!TextUtils.isEmpty(this.d)) {
            canvas.drawText(this.d, this.b, this.c + a.a().j(), a.a().i());
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!a.a().c()) {
            return super.onTouchEvent(motionEvent);
        }
        switch (motionEvent.getAction()) {
            case 0:
                if (!a.a().d()) {
                    return false;
                }
                if (this.f == null) {
                    return true;
                }
                a.a().a(false);
                a(true);
                this.f.onDown();
                return true;
            case 1:
            case 3:
                if (this.f != null) {
                    a(false);
                    this.f.onUp();
                    break;
                }
                break;
            case 2:
                if (this.f != null) {
                    this.f.onMove(motionEvent.getRawX(), motionEvent.getRawY());
                    break;
                }
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setText(String str) {
        this.d = str;
        invalidate();
    }

    public String getText() {
        return this.d;
    }

    public void setTouchListener(a aVar) {
        this.f = aVar;
    }

    private void a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) getParent();
        viewGroup.requestDisallowInterceptTouchEvent(z);
        while (viewGroup != null) {
            if ((viewGroup instanceof RecyclerView) || (viewGroup instanceof ListView) || (viewGroup instanceof GridView) || (viewGroup instanceof ScrollView)) {
                viewGroup.requestDisallowInterceptTouchEvent(z);
                return;
            } else if (viewGroup.getParent() instanceof ViewGroup) {
                viewGroup = (ViewGroup) viewGroup.getParent();
            } else {
                return;
            }
        }
    }
}
