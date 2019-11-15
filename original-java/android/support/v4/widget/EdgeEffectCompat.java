package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;

public final class EdgeEffectCompat {
    private static final EdgeEffectImpl IMPL;
    private Object mEdgeEffect;

    static class BaseEdgeEffectImpl implements EdgeEffectImpl {
        BaseEdgeEffectImpl() {
        }

        public Object newEdgeEffect(Context context) {
            return null;
        }

        public void setSize(Object obj, int i, int i2) {
        }

        public boolean isFinished(Object obj) {
            return true;
        }

        public void finish(Object obj) {
        }

        public boolean onPull(Object obj, float f) {
            return false;
        }

        public boolean onRelease(Object obj) {
            return false;
        }

        public boolean onAbsorb(Object obj, int i) {
            return false;
        }

        public boolean draw(Object obj, Canvas canvas) {
            return false;
        }

        public boolean onPull(Object obj, float f, float f2) {
            return false;
        }
    }

    static class EdgeEffectIcsImpl implements EdgeEffectImpl {
        EdgeEffectIcsImpl() {
        }

        public Object newEdgeEffect(Context context) {
            return EdgeEffectCompatIcs.newEdgeEffect(context);
        }

        public void setSize(Object obj, int i, int i2) {
            EdgeEffectCompatIcs.setSize(obj, i, i2);
        }

        public boolean isFinished(Object obj) {
            return EdgeEffectCompatIcs.isFinished(obj);
        }

        public void finish(Object obj) {
            EdgeEffectCompatIcs.finish(obj);
        }

        public boolean onPull(Object obj, float f) {
            return EdgeEffectCompatIcs.onPull(obj, f);
        }

        public boolean onRelease(Object obj) {
            return EdgeEffectCompatIcs.onRelease(obj);
        }

        public boolean onAbsorb(Object obj, int i) {
            return EdgeEffectCompatIcs.onAbsorb(obj, i);
        }

        public boolean draw(Object obj, Canvas canvas) {
            return EdgeEffectCompatIcs.draw(obj, canvas);
        }

        public boolean onPull(Object obj, float f, float f2) {
            return EdgeEffectCompatIcs.onPull(obj, f);
        }
    }

    interface EdgeEffectImpl {
        boolean draw(Object obj, Canvas canvas);

        void finish(Object obj);

        boolean isFinished(Object obj);

        Object newEdgeEffect(Context context);

        boolean onAbsorb(Object obj, int i);

        boolean onPull(Object obj, float f);

        boolean onPull(Object obj, float f, float f2);

        boolean onRelease(Object obj);

        void setSize(Object obj, int i, int i2);
    }

    static class EdgeEffectLollipopImpl extends EdgeEffectIcsImpl {
        EdgeEffectLollipopImpl() {
        }

        public boolean onPull(Object obj, float f, float f2) {
            return EdgeEffectCompatLollipop.onPull(obj, f, f2);
        }
    }

    static {
        if (VERSION.SDK_INT >= 21) {
            IMPL = new EdgeEffectLollipopImpl();
        } else if (VERSION.SDK_INT >= 14) {
            IMPL = new EdgeEffectIcsImpl();
        } else {
            IMPL = new BaseEdgeEffectImpl();
        }
    }

    public EdgeEffectCompat(Context context) {
        this.mEdgeEffect = IMPL.newEdgeEffect(context);
    }

    public void setSize(int i, int i2) {
        IMPL.setSize(this.mEdgeEffect, i, i2);
    }

    public boolean isFinished() {
        return IMPL.isFinished(this.mEdgeEffect);
    }

    public void finish() {
        IMPL.finish(this.mEdgeEffect);
    }

    @Deprecated
    public boolean onPull(float f) {
        return IMPL.onPull(this.mEdgeEffect, f);
    }

    public boolean onPull(float f, float f2) {
        return IMPL.onPull(this.mEdgeEffect, f, f2);
    }

    public boolean onRelease() {
        return IMPL.onRelease(this.mEdgeEffect);
    }

    public boolean onAbsorb(int i) {
        return IMPL.onAbsorb(this.mEdgeEffect, i);
    }

    public boolean draw(Canvas canvas) {
        return IMPL.draw(this.mEdgeEffect, canvas);
    }
}
