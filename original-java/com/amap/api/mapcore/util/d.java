package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLSurfaceView.Renderer;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import com.amap.api.mapcore.util.k.e;
import com.amap.api.mapcore.util.k.f;
import com.autonavi.ae.gmap.GLMapRender;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: AMapGLTextureView */
public class d extends k implements m {
    protected boolean a;
    private l b;
    /* access modifiers changed from: private */
    public GLMapRender c;

    public d(Context context) {
        this(context, null);
    }

    public d(Context context, AttributeSet attributeSet) {
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

    public SurfaceHolder getHolder() {
        return null;
    }

    public void a(dp dpVar) {
        super.a((e) dpVar);
    }

    public void a(dq dqVar) {
        super.a((f) dqVar);
    }

    public void setRenderer(Renderer renderer) {
        this.c = (GLMapRender) renderer;
        super.setRenderer(renderer);
    }

    public void b() {
        if (!this.c.mSurfacedestoryed) {
            queueEvent(new Runnable() {
                public void run() {
                    try {
                        if (d.this.c != null) {
                            d.this.c.onSurfaceDestory();
                        }
                    } catch (Throwable th) {
                        ThrowableExtension.printStackTrace(th);
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
        super.b();
    }

    public void c() {
        super.c();
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        requestRender();
        try {
            Thread.sleep(100);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return super.onSurfaceTextureDestroyed(surfaceTexture);
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
                requestRender();
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
        c();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        b();
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
