package com.amap.api.mapcore.util;

import android.opengl.GLSurfaceView.Renderer;
import android.view.SurfaceHolder;

/* compiled from: IGLSurfaceView */
public interface m {
    void a(dp dpVar);

    void a(dq dqVar);

    int getHeight();

    SurfaceHolder getHolder();

    int getRenderMode();

    int getWidth();

    boolean isEnabled();

    boolean post(Runnable runnable);

    boolean postDelayed(Runnable runnable, long j);

    void queueEvent(Runnable runnable);

    void requestRender();

    void setRenderMode(int i);

    void setRenderer(Renderer renderer);

    void setVisibility(int i);
}
