package com.amap.api.maps;

import android.opengl.GLSurfaceView.Renderer;

public interface CustomRenderer extends Renderer {
    void OnMapReferencechanged();
}
