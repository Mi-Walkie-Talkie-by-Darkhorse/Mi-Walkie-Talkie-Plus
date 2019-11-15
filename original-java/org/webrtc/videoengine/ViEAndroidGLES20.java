package org.webrtc.videoengine;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.EGLConfigChooser;
import android.opengl.GLSurfaceView.EGLContextFactory;
import android.opengl.GLSurfaceView.Renderer;
import android.util.Log;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

public class ViEAndroidGLES20 extends GLSurfaceView implements Renderer {
    /* access modifiers changed from: private */
    public static String a = "WEBRTC-JR-ViEAndroidGLES20";
    private boolean b = false;
    private boolean c = false;
    private boolean d = false;
    private ReentrantLock e = new ReentrantLock();
    private long f = 0;
    private int g = 0;
    private int h = 0;

    private static class a implements EGLConfigChooser {
        private static int g = 4;
        private static int[] h = {12324, 4, 12323, 4, 12322, 4, 12352, g, 12344};
        protected int a;
        protected int b;
        protected int c;
        protected int d;
        protected int e;
        protected int f;
        private int[] i = new int[1];

        public a(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.a = i2;
            this.b = i3;
            this.c = i4;
            this.d = i5;
            this.e = i6;
            this.f = i7;
        }

        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            egl10.eglChooseConfig(eGLDisplay, h, null, 0, iArr);
            int i2 = iArr[0];
            if (i2 <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i2];
            egl10.eglChooseConfig(eGLDisplay, h, eGLConfigArr, i2, iArr);
            b(egl10, eGLDisplay, eGLConfigArr);
            return a(egl10, eGLDisplay, eGLConfigArr);
        }

        public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int a2 = a(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int a3 = a(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (a2 >= this.e && a3 >= this.f) {
                    int a4 = a(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int a5 = a(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int a6 = a(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int a7 = a(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (a4 == this.a && a5 == this.b && a6 == this.c && a7 == this.d) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }

        private int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2, int i3) {
            if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i2, this.i)) {
                return this.i[0];
            }
            return i3;
        }

        private void b(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            int length = eGLConfigArr.length;
            Log.w(ViEAndroidGLES20.a, String.format("%d configurations", new Object[]{Integer.valueOf(length)}));
            for (int i2 = 0; i2 < length; i2++) {
                Log.w(ViEAndroidGLES20.a, String.format("Configuration %d:\n", new Object[]{Integer.valueOf(i2)}));
                a(egl10, eGLDisplay, eGLConfigArr[i2]);
            }
        }

        private void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            int[] iArr = {12320, 12321, 12322, 12323, 12324, 12325, 12326, 12327, 12328, 12329, 12330, 12331, 12332, 12333, 12334, 12335, 12336, 12337, 12338, 12339, 12340, 12343, 12342, 12341, 12345, 12346, 12347, 12348, 12349, 12350, 12351, 12352, 12354};
            String[] strArr = {"EGL_BUFFER_SIZE", "EGL_ALPHA_SIZE", "EGL_BLUE_SIZE", "EGL_GREEN_SIZE", "EGL_RED_SIZE", "EGL_DEPTH_SIZE", "EGL_STENCIL_SIZE", "EGL_CONFIG_CAVEAT", "EGL_CONFIG_ID", "EGL_LEVEL", "EGL_MAX_PBUFFER_HEIGHT", "EGL_MAX_PBUFFER_PIXELS", "EGL_MAX_PBUFFER_WIDTH", "EGL_NATIVE_RENDERABLE", "EGL_NATIVE_VISUAL_ID", "EGL_NATIVE_VISUAL_TYPE", "EGL_PRESERVED_RESOURCES", "EGL_SAMPLES", "EGL_SAMPLE_BUFFERS", "EGL_SURFACE_TYPE", "EGL_TRANSPARENT_TYPE", "EGL_TRANSPARENT_RED_VALUE", "EGL_TRANSPARENT_GREEN_VALUE", "EGL_TRANSPARENT_BLUE_VALUE", "EGL_BIND_TO_TEXTURE_RGB", "EGL_BIND_TO_TEXTURE_RGBA", "EGL_MIN_SWAP_INTERVAL", "EGL_MAX_SWAP_INTERVAL", "EGL_LUMINANCE_SIZE", "EGL_ALPHA_MASK_SIZE", "EGL_COLOR_BUFFER_TYPE", "EGL_RENDERABLE_TYPE", "EGL_CONFORMANT"};
            int[] iArr2 = new int[1];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                int i3 = iArr[i2];
                String str = strArr[i2];
                if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i3, iArr2)) {
                    Log.w(ViEAndroidGLES20.a, String.format("  %s: %d\n", new Object[]{str, Integer.valueOf(iArr2[0])}));
                } else {
                    do {
                    } while (egl10.eglGetError() != 12288);
                }
            }
        }
    }

    private static class b implements EGLContextFactory {
        private static int a = 12440;

        private b() {
        }

        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            Log.w(ViEAndroidGLES20.a, "creating OpenGL ES 2.0 context");
            ViEAndroidGLES20.b("Before eglCreateContext", egl10);
            EGLContext eglCreateContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{a, 2, 12344});
            ViEAndroidGLES20.b("After eglCreateContext", egl10);
            return eglCreateContext;
        }

        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            egl10.eglDestroyContext(eGLDisplay, eGLContext);
        }
    }

    private native int CreateOpenGLNative(long j, int i, int i2);

    private native void DrawNative(long j);

    public ViEAndroidGLES20(Context context) {
        super(context);
        a(false, 0, 0);
    }

    private void a(boolean z, int i, int i2) {
        if (z) {
            getHolder().setFormat(-3);
        }
        setEGLContextFactory(new b());
        setEGLConfigChooser(z ? new a(8, 8, 8, 8, i, i2) : new a(5, 6, 5, 0, i, i2));
        setRenderer(this);
        setRenderMode(0);
    }

    /* access modifiers changed from: private */
    public static void b(String str, EGL10 egl10) {
        while (true) {
            int eglGetError = egl10.eglGetError();
            if (eglGetError != 12288) {
                Log.e(a, String.format("%s: EGL error: 0x%x", new Object[]{str, Integer.valueOf(eglGetError)}));
            } else {
                return;
            }
        }
    }

    public void onDrawFrame(GL10 gl10) {
        this.e.lock();
        if (!this.d || !this.b) {
            this.e.unlock();
            return;
        }
        if (!this.c) {
            if (CreateOpenGLNative(this.f, this.g, this.h) == 0) {
                this.c = true;
            } else {
                return;
            }
        }
        DrawNative(this.f);
        this.e.unlock();
    }

    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        this.b = true;
        this.g = i;
        this.h = i2;
        this.e.lock();
        if (this.d && CreateOpenGLNative(this.f, i, i2) == 0) {
            this.c = true;
        }
        this.e.unlock();
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        gl10.glClearColor(0.0f, 0.0f, 0.0f, 0.5f);
    }
}
