package com.autonavi.amap.mapcore;

import android.graphics.Rect;

public class Rectangle {
    public float bottom;
    public FPoint[] clipMapRect = null;
    public IPoint[] clipRect = null;
    public float left;
    public Rect rect = new Rect();
    public float right;
    public float top;

    public Rectangle() {
    }

    public Rectangle(Rect rect2, int i, int i2) {
        this.rect = rect2;
        if (rect2 != null) {
            updateRect(rect2, i, i2);
            updateClipRect();
            updateClipMapRect(rect2.centerX(), rect2.centerY());
        }
    }

    public void updateRect(Rect rect2, int i, int i2) {
        if (rect2 != null) {
            this.rect = rect2;
            this.rect.inset((-rect2.width()) / 8, (-rect2.height()) / 8);
            updateClipRect();
            updateClipMapRect(i, i2);
        }
    }

    private void updateClipRect() {
        if (this.clipRect == null) {
            this.clipRect = new IPoint[4];
            this.clipRect[0] = IPoint.obtain(0, 0);
            this.clipRect[1] = IPoint.obtain(0, 0);
            this.clipRect[2] = IPoint.obtain(0, 0);
            this.clipRect[3] = IPoint.obtain(0, 0);
        }
        if (this.rect != null) {
            this.clipRect[0].x = this.rect.left;
            this.clipRect[0].y = this.rect.top;
            this.clipRect[1].x = this.rect.right;
            this.clipRect[1].y = this.rect.top;
            this.clipRect[2].x = this.rect.right;
            this.clipRect[2].y = this.rect.bottom;
            this.clipRect[3].x = this.rect.left;
            this.clipRect[3].y = this.rect.bottom;
        }
    }

    private void updateClipMapRect(int i, int i2) {
        if (this.clipMapRect == null) {
            this.clipMapRect = new FPoint[4];
            this.clipMapRect[0] = FPoint.obtain(0.0f, 0.0f);
            this.clipMapRect[1] = FPoint.obtain(0.0f, 0.0f);
            this.clipMapRect[2] = FPoint.obtain(0.0f, 0.0f);
            this.clipMapRect[3] = FPoint.obtain(0.0f, 0.0f);
        }
        if (this.rect != null) {
            this.clipMapRect[0].x = (float) (this.rect.left - i);
            this.clipMapRect[0].y = (float) (this.rect.top - i2);
            this.clipMapRect[1].x = (float) (this.rect.right - i);
            this.clipMapRect[1].y = (float) (this.rect.top - i2);
            this.clipMapRect[2].x = (float) (this.rect.right - i);
            this.clipMapRect[2].y = (float) (this.rect.bottom - i2);
            this.clipMapRect[3].x = (float) (this.rect.left - i);
            this.clipMapRect[3].y = (float) (this.rect.bottom - i2);
        }
    }

    public Rect getRect() {
        return this.rect;
    }

    public IPoint[] getClipRect() {
        return this.clipRect;
    }

    public FPoint[] getClipMapRect() {
        return this.clipMapRect;
    }

    public boolean contains(int i, int i2) {
        if (this.rect != null) {
            return this.rect.contains(i, i2);
        }
        return false;
    }

    public boolean contains(IPoint iPoint) {
        if (iPoint == null) {
            return false;
        }
        return contains(iPoint.x, iPoint.y);
    }

    public boolean contains(Rect rect2) {
        if (rect2 == null) {
            return false;
        }
        return this.rect.contains(rect2);
    }

    public boolean isOverlap(Rect rect2) {
        if (this.rect == null || rect2 == null || this.rect.left + this.rect.width() <= rect2.left || rect2.left + rect2.width() <= this.rect.left || this.rect.top + this.rect.height() <= rect2.top || rect2.top + rect2.height() <= this.rect.top) {
            return false;
        }
        return true;
    }

    public Rectangle(float f, float f2, float f3, float f4) {
        if (f < f2 && f4 > f3) {
            this.left = f;
            this.right = f2;
            this.top = f4;
            this.bottom = f3;
        }
    }
}
