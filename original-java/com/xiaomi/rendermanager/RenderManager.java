package com.xiaomi.rendermanager;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import com.xiaomi.rendermanager.videoRender.VideoStreamsView;
import com.xiaomi.rendermanager.videoRender.VideoStreamsView.RenderModel;

public class RenderManager {
    private static final String TAG = "RenderManager";
    private Context mContext;

    private native void constructRenderManagerJni(Context context);

    private native void destructRenderManagerJni();

    private native VideoStreamsView getRenderJni(String str);

    private native boolean setResolutionJni(String str, int i, int i2);

    public boolean constructRenderManager(Context context) {
        Log.d(TAG, "construct RenderManager...");
        if (this.mContext != null) {
            Log.d(TAG, "construct error, please destroy the render manager first");
            return false;
        }
        this.mContext = context;
        constructRenderManagerJni(context);
        return true;
    }

    public boolean destructRenderManager() {
        Log.d(TAG, "destruct RenderManager...");
        if (this.mContext == null) {
            Log.d(TAG, "destruct error, please create the engine first");
            return false;
        }
        this.mContext = null;
        destructRenderManagerJni();
        return true;
    }

    public VideoStreamsView createRender(Point point) {
        Log.i(TAG, "creating render with display size:" + point);
        if (this.mContext != null) {
            return new VideoStreamsView(this.mContext, point);
        }
        Log.e(TAG, "createRender error, please init the engine first");
        return null;
    }

    public void destroyRender(VideoStreamsView videoStreamsView) {
        Log.i(TAG, "destorying render...");
        if (this.mContext == null) {
            Log.e(TAG, "destroyRender error, please init the engine first");
            return;
        }
        videoStreamsView.destoryNativeRender();
        Log.i(TAG, "destory render done");
    }

    public VideoStreamsView getRender(String str) {
        Log.i(TAG, "getting render for user:" + str);
        if (this.mContext != null) {
            return getRenderJni(str);
        }
        Log.e(TAG, "getRender error, please init the engine first");
        return null;
    }

    public boolean bindRenderWithStream(VideoStreamsView videoStreamsView, String str, boolean z) {
        Log.i(TAG, "binding render with user:" + str);
        if (this.mContext == null) {
            Log.e(TAG, "bindRenderWithStream error, please init the engine first");
            return false;
        } else if (!videoStreamsView.bindRenderWithStream(str, z)) {
            Log.e(TAG, "bind render failed");
            return false;
        } else {
            Log.i(TAG, "bind render succeeded");
            return true;
        }
    }

    public boolean unbindRenderWithStream(VideoStreamsView videoStreamsView) {
        Log.i(TAG, "unbinding render...");
        if (this.mContext == null) {
            Log.e(TAG, "unbindRenderWithStream error, please init the engine first");
            return false;
        } else if (!videoStreamsView.unbindRenderWithStream()) {
            Log.e(TAG, "unbind render failed");
            return false;
        } else {
            Log.i(TAG, "unbind render succeeded");
            return true;
        }
    }

    public void setShiftUp(VideoStreamsView videoStreamsView, float f, float f2, float f3, float f4, float f5) {
        Log.i(TAG, "Set the render shiftup value.");
        if (this.mContext == null) {
            Log.e(TAG, "set the render shiftup error, please init the engine first");
            return;
        }
        videoStreamsView.setShiftUpInternal(f, f2, f3, f4, f5);
        Log.i(TAG, "Set the render shiftup succeeded");
    }

    public void setRenderModel(VideoStreamsView videoStreamsView, RenderModel renderModel) {
        Log.i(TAG, "setting render model:" + renderModel);
        if (this.mContext == null) {
            Log.e(TAG, "setRenderModel error, please init the engine first");
            return;
        }
        videoStreamsView.setRenderModel(renderModel);
        Log.i(TAG, "set render model done");
    }

    public boolean setResolution(String str, int i, int i2) {
        Log.i(TAG, "set resolution for user:" + str + ",height:" + i2 + ",width:" + i);
        if (this.mContext == null) {
            Log.e(TAG, "setResolution error, please init the engine first");
            return false;
        } else if (!setResolutionJni(str, i, i2)) {
            Log.e(TAG, "set resolution failed");
            return false;
        } else {
            Log.i(TAG, "set resolution suceeded");
            return true;
        }
    }
}
