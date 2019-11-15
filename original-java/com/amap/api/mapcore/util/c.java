package com.amap.api.mapcore.util;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.Renderer;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.autonavi.ae.gmap.GLMapRender;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: AMapGLSurfaceView */
public class c extends GLSurfaceView implements m {
    protected boolean a;
    private l b;
    /* access modifiers changed from: private */
    public GLMapRender c;

    public c(Context context) {
        this(context, null);
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = null;
        this.c = null;
        this.a = false;
        Cdo.a((m) this, 5, 6, 5, 0, 16, 8);
        this.b = new a(this, context, attributeSet);
    }

    public l a() {
        return this.b;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        try {
            return this.b.onTouchEvent(motionEvent);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public void setRenderer(Renderer renderer) {
        this.c = (GLMapRender) renderer;
        super.setRenderer(renderer);
    }

    public void a(dp dpVar) {
        super.setEGLConfigChooser(dpVar);
    }

    public void a(dq dqVar) {
        super.setEGLContextFactory(dqVar);
    }

    public void onPause() {
        if (!this.c.mSurfacedestoryed) {
            queueEvent(new Runnable() {
                public void run() {
                    if (c.this.c != null) {
                        try {
                            c.this.c.onSurfaceDestory();
                        } catch (Throwable th) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                }
            });
            int i = 0;
            while (!this.c.mSurfacedestoryed) {
                int i2 = i + 1;
                if (i >= 20) {
                    break;
                }
                try {
                    Thread.sleep(50);
                    i = i2;
                } catch (InterruptedException e) {
                    i = i2;
                }
            }
        }
        super.onPause();
    }

    public void onResume() {
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 8 || i == 4) {
            try {
                if (this.c != null) {
                    this.c.renderPause();
                    this.a = false;
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        } else if (i == 0 && this.c != null) {
            this.c.renderResume();
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            if (this.c != null) {
                this.c.onAttachedToWindow();
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        onResume();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        onPause();
        try {
            if (this.c != null) {
                this.c.onDetachedFromWindow();
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        super.onDetachedFromWindow();
    }
}
