package io.agora.rtc.video;

import android.content.Context;
import android.content.res.Configuration;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.EGLConfigChooser;
import android.opengl.GLSurfaceView.EGLContextFactory;
import android.opengl.GLSurfaceView.Renderer;
import android.view.Display;
import android.view.WindowManager;
import io.agora.rtc.internal.d;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

public class ViEAndroidGLES20 extends GLSurfaceView implements Renderer {
    /* access modifiers changed from: private */
    public static String a = "ViEAndroidGLES20";
    private boolean b = false;
    private boolean c = false;
    private boolean d = false;
    private ReentrantLock e = new ReentrantLock();
    private long f = 0;
    private int g = 0;
    private int h = 0;
    private int i = -1;

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
                d.d(ViEAndroidGLES20.a, "no configurations found");
                return null;
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i2];
            egl10.eglChooseConfig(eGLDisplay, h, eGLConfigArr, i2, iArr);
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
    }

    private static class b implements EGLContextFactory {
        private static int a = 12440;

        private b() {
        }

        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            ViEAndroidGLES20.b("Before eglCreateContext", egl10);
            EGLContext eglCreateContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{a, 2, 12344});
            ViEAndroidGLES20.b("After eglCreateContext", egl10);
            return eglCreateContext;
        }

        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            egl10.eglDestroyContext(eGLDisplay, eGLContext);
        }
    }

    private native int CreateOpenGLNative(long j, int i2, int i3);

    private native void DrawNative(long j);

    private native void OnCfgChangedNative(long j, int i2);

    public ViEAndroidGLES20(Context context) {
        super(context);
        a(false, 0, 0);
    }

    private void a(boolean z, int i2, int i3) {
        if (z) {
            getHolder().setFormat(-3);
        }
        setEGLContextFactory(new b());
        setEGLConfigChooser(z ? new a(8, 8, 8, 8, i2, i3) : new a(5, 6, 5, 0, i2, i3));
        setRenderer(this);
        setRenderMode(0);
    }

    /* access modifiers changed from: private */
    public static void b(String str, EGL10 egl10) {
        while (true) {
            int eglGetError = egl10.eglGetError();
            if (eglGetError != 12288) {
                d.c(a, String.format("%s: EGL error: 0x%x", new Object[]{str, Integer.valueOf(eglGetError)}));
            } else {
                return;
            }
        }
    }

    public void onDrawFrame(GL10 gl10) {
        c();
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

    public void onSurfaceChanged(GL10 gl10, int i2, int i3) {
        this.b = true;
        this.g = i2;
        this.h = i3;
        d.b("SurfaceView", "Surface changed to width " + i2 + " height " + i3);
        this.e.lock();
        if (this.d && CreateOpenGLNative(this.f, i2, i3) == 0) {
            this.c = true;
        }
        this.e.unlock();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c();
    }

    private int b() {
        if (!(getContext() == null || getContext().getSystemService("window") == null)) {
            Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
            if (defaultDisplay != null) {
                return defaultDisplay.getRotation();
            }
        }
        return this.i;
    }

    private void c() {
        int b2 = b();
        if (b2 != this.i) {
            this.e.lock();
            if (this.d) {
                OnCfgChangedNative(this.f, b2);
            }
            this.i = b2;
            this.e.unlock();
        }
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
    }
}
