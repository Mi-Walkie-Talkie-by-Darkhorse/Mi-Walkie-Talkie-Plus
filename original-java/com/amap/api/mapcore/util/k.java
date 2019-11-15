package com.amap.api.mapcore.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLDebugHelper;
import android.opengl.GLSurfaceView.Renderer;
import android.util.AttributeSet;
import android.util.Log;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

@SuppressLint({"NewApi"})
/* compiled from: GLTextureView */
public class k extends TextureView implements SurfaceTextureListener {
    /* access modifiers changed from: private */
    public static final j a = new j();
    private final WeakReference<k> b = new WeakReference<>(this);
    private i c;
    /* access modifiers changed from: private */
    public Renderer d;
    private boolean e;
    /* access modifiers changed from: private */
    public e f;
    /* access modifiers changed from: private */
    public f g;
    /* access modifiers changed from: private */
    public g h;
    /* access modifiers changed from: private */
    public C0009k i;
    /* access modifiers changed from: private */
    public int j;
    /* access modifiers changed from: private */
    public int k;
    /* access modifiers changed from: private */
    public boolean l;

    /* compiled from: GLTextureView */
    private abstract class a implements e {
        protected int[] a;

        /* access modifiers changed from: 0000 */
        public abstract EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr);

        public a(int[] iArr) {
            this.a = a(iArr);
        }

        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            if (!egl10.eglChooseConfig(eGLDisplay, this.a, null, 0, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig failed");
            }
            int i = iArr[0];
            if (i <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i];
            if (!egl10.eglChooseConfig(eGLDisplay, this.a, eGLConfigArr, i, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig#2 failed");
            }
            EGLConfig a2 = a(egl10, eGLDisplay, eGLConfigArr);
            if (a2 != null) {
                return a2;
            }
            throw new IllegalArgumentException("No config chosen");
        }

        private int[] a(int[] iArr) {
            if (k.this.k != 2 && k.this.k != 3) {
                return iArr;
            }
            int length = iArr.length;
            int[] iArr2 = new int[(length + 2)];
            System.arraycopy(iArr, 0, iArr2, 0, length - 1);
            iArr2[length - 1] = 12352;
            if (k.this.k == 2) {
                iArr2[length] = 4;
            } else {
                iArr2[length] = 64;
            }
            iArr2[length + 1] = 12344;
            return iArr2;
        }
    }

    /* compiled from: GLTextureView */
    private class b extends a {
        protected int c;
        protected int d;
        protected int e;
        protected int f;
        protected int g;
        protected int h;
        private int[] j = new int[1];

        public b(int i2, int i3, int i4, int i5, int i6, int i7) {
            super(new int[]{12324, i2, 12323, i3, 12322, i4, 12321, i5, 12325, i6, 12326, i7, 12344});
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
        }

        public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int a = a(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int a2 = a(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (a >= this.g && a2 >= this.h) {
                    int a3 = a(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int a4 = a(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int a5 = a(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int a6 = a(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (a3 == this.c && a4 == this.d && a5 == this.e && a6 == this.f) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }

        private int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2, int i3) {
            if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i2, this.j)) {
                return this.j[0];
            }
            return i3;
        }
    }

    /* compiled from: GLTextureView */
    private class c implements f {
        private int b;

        private c() {
            this.b = 12440;
        }

        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            int[] iArr = {this.b, k.this.k, 12344};
            EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
            if (k.this.k == 0) {
                iArr = null;
            }
            return egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        }

        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (!egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
                Log.e("DefaultContextFactory", "display:" + eGLDisplay + " context: " + eGLContext);
                h.a("eglDestroyContex", egl10.eglGetError());
            }
        }
    }

    /* compiled from: GLTextureView */
    private static class d implements g {
        private d() {
        }

        public EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj) {
            boolean z = false;
            try {
                return egl10.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, null);
            } catch (IllegalArgumentException e) {
                Log.e("GLSurfaceView", "eglCreateWindowSurface", e);
                return z;
            }
        }

        public void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
            egl10.eglDestroySurface(eGLDisplay, eGLSurface);
        }
    }

    /* compiled from: GLTextureView */
    public interface e {
        EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay);
    }

    /* compiled from: GLTextureView */
    public interface f {
        EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig);

        void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext);
    }

    /* compiled from: GLTextureView */
    public interface g {
        EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj);

        void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface);
    }

    /* compiled from: GLTextureView */
    private static class h {
        EGL10 a;
        EGLDisplay b;
        EGLSurface c;
        EGLConfig d;
        EGLContext e;
        private WeakReference<k> f;

        public h(WeakReference<k> weakReference) {
            this.f = weakReference;
        }

        public void a() {
            this.a = (EGL10) EGLContext.getEGL();
            this.b = this.a.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            if (this.b == EGL10.EGL_NO_DISPLAY) {
                throw new RuntimeException("eglGetDisplay failed");
            }
            if (!this.a.eglInitialize(this.b, new int[2])) {
                throw new RuntimeException("eglInitialize failed");
            }
            k kVar = (k) this.f.get();
            if (kVar == null) {
                this.d = null;
                this.e = null;
            } else {
                this.d = kVar.f.chooseConfig(this.a, this.b);
                this.e = kVar.g.createContext(this.a, this.b, this.d);
            }
            if (this.e == null || this.e == EGL10.EGL_NO_CONTEXT) {
                this.e = null;
                a("createContext");
            }
            this.c = null;
        }

        public boolean b() {
            if (this.a == null) {
                throw new RuntimeException("egl not initialized");
            } else if (this.b == null) {
                throw new RuntimeException("eglDisplay not initialized");
            } else if (this.d == null) {
                throw new RuntimeException("mEglConfig not initialized");
            } else {
                g();
                k kVar = (k) this.f.get();
                if (kVar != null) {
                    this.c = kVar.h.a(this.a, this.b, this.d, kVar.getSurfaceTexture());
                } else {
                    this.c = null;
                }
                if (this.c == null || this.c == EGL10.EGL_NO_SURFACE) {
                    if (this.a.eglGetError() == 12299) {
                        Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                    }
                    return false;
                } else if (this.a.eglMakeCurrent(this.b, this.c, this.c, this.e)) {
                    return true;
                } else {
                    a("EGLHelper", "eglMakeCurrent", this.a.eglGetError());
                    return false;
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public GL c() {
            l lVar;
            GL gl = this.e.getGL();
            k kVar = (k) this.f.get();
            if (kVar == null) {
                return gl;
            }
            if (kVar.i != null) {
                gl = kVar.i.a(gl);
            }
            if ((kVar.j & 3) == 0) {
                return gl;
            }
            int i = 0;
            if ((kVar.j & 1) != 0) {
                i = 1;
            }
            if ((kVar.j & 2) != 0) {
                lVar = new l();
            } else {
                lVar = null;
            }
            return GLDebugHelper.wrap(gl, i, lVar);
        }

        public int d() {
            if (!this.a.eglSwapBuffers(this.b, this.c)) {
                return this.a.eglGetError();
            }
            return 12288;
        }

        public void e() {
            g();
        }

        private void g() {
            if (this.c != null && this.c != EGL10.EGL_NO_SURFACE) {
                this.a.eglMakeCurrent(this.b, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                k kVar = (k) this.f.get();
                if (kVar != null) {
                    kVar.h.a(this.a, this.b, this.c);
                }
                this.c = null;
            }
        }

        public void f() {
            if (this.e != null) {
                k kVar = (k) this.f.get();
                if (kVar != null) {
                    kVar.g.destroyContext(this.a, this.b, this.e);
                }
                this.e = null;
            }
            if (this.b != null) {
                this.a.eglTerminate(this.b);
                this.b = null;
            }
        }

        private void a(String str) {
            a(str, this.a.eglGetError());
        }

        public static void a(String str, int i) {
            throw new RuntimeException(b(str, i));
        }

        public static void a(String str, String str2, int i) {
            Log.w(str, b(str2, i));
        }

        public static String b(String str, int i) {
            return str + " failed: " + i;
        }
    }

    /* compiled from: GLTextureView */
    static class i extends Thread {
        private boolean a;
        /* access modifiers changed from: private */
        public boolean b;
        private boolean c;
        private boolean d;
        private boolean e;
        private boolean f;
        private boolean g;
        private boolean h;
        private boolean i;
        private boolean j;
        private boolean k;
        private int l = 0;
        private int m = 0;
        private int n = 1;
        private boolean o = true;
        private boolean p;
        private ArrayList<Runnable> q = new ArrayList<>();
        private boolean r = true;
        private h s;
        private WeakReference<k> t;

        i(WeakReference<k> weakReference) {
            this.t = weakReference;
        }

        public void run() {
            setName("GLThread " + getId());
            try {
                l();
            } catch (InterruptedException e2) {
            } finally {
                k.a.a(this);
            }
        }

        private void j() {
            if (this.i) {
                this.i = false;
                this.s.e();
            }
        }

        private void k() {
            if (this.h) {
                this.s.f();
                this.h = false;
                k.a.c(this);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:114:0x01f9, code lost:
            if (r1 == false) goto L_0x02e1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:118:0x0203, code lost:
            if (r18.s.b() == false) goto L_0x02ad;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:119:0x0205, code lost:
            r3 = com.amap.api.mapcore.util.k.d();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:120:0x0209, code lost:
            monitor-enter(r3);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:123:?, code lost:
            r18.j = true;
            com.amap.api.mapcore.util.k.d().notifyAll();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:124:0x0216, code lost:
            monitor-exit(r3);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:125:0x0217, code lost:
            r3 = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:126:0x0219, code lost:
            if (r11 == false) goto L_0x02de;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:129:?, code lost:
            r1 = (javax.microedition.khronos.opengles.GL10) r18.s.c();
            com.amap.api.mapcore.util.k.d().a(r1);
            r11 = false;
            r13 = r1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:130:0x022e, code lost:
            if (r12 == false) goto L_0x024a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:131:0x0230, code lost:
            r1 = (com.amap.api.mapcore.util.k) r18.t.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:132:0x023a, code lost:
            if (r1 == null) goto L_0x0249;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:133:0x023c, code lost:
            com.amap.api.mapcore.util.k.h(r1).onSurfaceCreated(r13, r18.s.d);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:134:0x0249, code lost:
            r12 = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:135:0x024a, code lost:
            if (r9 == false) goto L_0x0260;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:136:0x024c, code lost:
            r1 = (com.amap.api.mapcore.util.k) r18.t.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:137:0x0256, code lost:
            if (r1 == null) goto L_0x025f;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:138:0x0258, code lost:
            com.amap.api.mapcore.util.k.h(r1).onSurfaceChanged(r13, r6, r5);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:139:0x025f, code lost:
            r9 = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:140:0x0260, code lost:
            r1 = (com.amap.api.mapcore.util.k) r18.t.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:141:0x026a, code lost:
            if (r1 == null) goto L_0x0273;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:142:0x026c, code lost:
            com.amap.api.mapcore.util.k.h(r1).onDrawFrame(r13);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:143:0x0273, code lost:
            r1 = r18.s.d();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:144:0x027b, code lost:
            switch(r1) {
                case 12288: goto L_0x0297;
                case 12302: goto L_0x02d6;
                default: goto L_0x027e;
            };
         */
        /* JADX WARNING: Code restructure failed: missing block: B:145:0x027e, code lost:
            com.amap.api.mapcore.util.k.h.a("GLThread", "eglSwapBuffers", r1);
            r14 = com.amap.api.mapcore.util.k.d();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:146:0x0289, code lost:
            monitor-enter(r14);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:149:?, code lost:
            r18.f = true;
            com.amap.api.mapcore.util.k.d().notifyAll();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:150:0x0296, code lost:
            monitor-exit(r14);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:151:0x0297, code lost:
            if (r8 == false) goto L_0x02f5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:152:0x0299, code lost:
            r1 = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:153:0x029a, code lost:
            r2 = r4;
            r14 = r13;
            r4 = r6;
            r6 = r1;
            r17 = r7;
            r7 = r8;
            r8 = r9;
            r9 = r10;
            r10 = r11;
            r11 = r3;
            r3 = r5;
            r5 = r17;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:159:0x02ad, code lost:
            r3 = com.amap.api.mapcore.util.k.d();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:160:0x02b1, code lost:
            monitor-enter(r3);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:163:?, code lost:
            r18.j = true;
            r18.f = true;
            com.amap.api.mapcore.util.k.d().notifyAll();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:164:0x02c3, code lost:
            monitor-exit(r3);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:165:0x02c4, code lost:
            r3 = r5;
            r5 = r7;
            r7 = r8;
            r8 = r9;
            r9 = r10;
            r10 = r11;
            r11 = r1;
            r17 = r2;
            r2 = r4;
            r4 = r6;
            r6 = r17;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:170:0x02d6, code lost:
            r10 = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:180:0x02de, code lost:
            r13 = r14;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:181:0x02e1, code lost:
            r3 = r1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:185:0x02f5, code lost:
            r1 = r2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x006d, code lost:
            if (r4 == null) goto L_0x01f9;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
            r4.run();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0072, code lost:
            r3 = r5;
            r5 = r7;
            r7 = r8;
            r8 = r9;
            r9 = r10;
            r10 = r11;
            r11 = r1;
            r17 = r2;
            r2 = null;
            r4 = r6;
            r6 = r17;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void l() throws java.lang.InterruptedException {
            /*
                r18 = this;
                com.amap.api.mapcore.util.k$h r1 = new com.amap.api.mapcore.util.k$h
                r0 = r18
                java.lang.ref.WeakReference<com.amap.api.mapcore.util.k> r2 = r0.t
                r1.<init>(r2)
                r0 = r18
                r0.s = r1
                r1 = 0
                r0 = r18
                r0.h = r1
                r1 = 0
                r0 = r18
                r0.i = r1
                r3 = 0
                r12 = 0
                r1 = 0
                r11 = 0
                r10 = 0
                r9 = 0
                r8 = 0
                r2 = 0
                r7 = 0
                r6 = 0
                r5 = 0
                r4 = 0
                r14 = r3
                r3 = r5
                r5 = r7
                r7 = r8
                r8 = r9
                r9 = r10
                r10 = r11
                r11 = r1
                r17 = r2
                r2 = r4
                r4 = r6
                r6 = r17
            L_0x0031:
                com.amap.api.mapcore.util.k$j r15 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d5 }
                monitor-enter(r15)     // Catch:{ all -> 0x01d5 }
            L_0x0036:
                r0 = r18
                boolean r1 = r0.a     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x004d
                monitor-exit(r15)     // Catch:{ all -> 0x01d2 }
                com.amap.api.mapcore.util.k$j r2 = com.amap.api.mapcore.util.k.a
                monitor-enter(r2)
                r18.j()     // Catch:{ all -> 0x004a }
                r18.k()     // Catch:{ all -> 0x004a }
                monitor-exit(r2)     // Catch:{ all -> 0x004a }
                return
            L_0x004a:
                r1 = move-exception
                monitor-exit(r2)     // Catch:{ all -> 0x004a }
                throw r1
            L_0x004d:
                r0 = r18
                java.util.ArrayList<java.lang.Runnable> r1 = r0.q     // Catch:{ all -> 0x01d2 }
                boolean r1 = r1.isEmpty()     // Catch:{ all -> 0x01d2 }
                if (r1 != 0) goto L_0x0081
                r0 = r18
                java.util.ArrayList<java.lang.Runnable> r1 = r0.q     // Catch:{ all -> 0x01d2 }
                r2 = 0
                java.lang.Object r1 = r1.remove(r2)     // Catch:{ all -> 0x01d2 }
                java.lang.Runnable r1 = (java.lang.Runnable) r1     // Catch:{ all -> 0x01d2 }
                r2 = r6
                r6 = r4
                r4 = r1
                r1 = r11
                r11 = r10
                r10 = r9
                r9 = r8
                r8 = r7
                r7 = r5
                r5 = r3
            L_0x006c:
                monitor-exit(r15)     // Catch:{ all -> 0x01d2 }
                if (r4 == 0) goto L_0x01f9
                r4.run()     // Catch:{ all -> 0x01d5 }
                r4 = 0
                r3 = r5
                r5 = r7
                r7 = r8
                r8 = r9
                r9 = r10
                r10 = r11
                r11 = r1
                r17 = r2
                r2 = r4
                r4 = r6
                r6 = r17
                goto L_0x0031
            L_0x0081:
                r1 = 0
                r0 = r18
                boolean r13 = r0.d     // Catch:{ all -> 0x01d2 }
                r0 = r18
                boolean r0 = r0.c     // Catch:{ all -> 0x01d2 }
                r16 = r0
                r0 = r16
                if (r13 == r0) goto L_0x02f2
                r0 = r18
                boolean r1 = r0.c     // Catch:{ all -> 0x01d2 }
                r0 = r18
                boolean r13 = r0.c     // Catch:{ all -> 0x01d2 }
                r0 = r18
                r0.d = r13     // Catch:{ all -> 0x01d2 }
                com.amap.api.mapcore.util.k$j r13 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                r13.notifyAll()     // Catch:{ all -> 0x01d2 }
                r13 = r1
            L_0x00a4:
                r0 = r18
                boolean r1 = r0.k     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x00b6
                r18.j()     // Catch:{ all -> 0x01d2 }
                r18.k()     // Catch:{ all -> 0x01d2 }
                r1 = 0
                r0 = r18
                r0.k = r1     // Catch:{ all -> 0x01d2 }
                r5 = 1
            L_0x00b6:
                if (r9 == 0) goto L_0x00bf
                r18.j()     // Catch:{ all -> 0x01d2 }
                r18.k()     // Catch:{ all -> 0x01d2 }
                r9 = 0
            L_0x00bf:
                if (r13 == 0) goto L_0x00ca
                r0 = r18
                boolean r1 = r0.i     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x00ca
                r18.j()     // Catch:{ all -> 0x01d2 }
            L_0x00ca:
                if (r13 == 0) goto L_0x00ee
                r0 = r18
                boolean r1 = r0.h     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x00ee
                r0 = r18
                java.lang.ref.WeakReference<com.amap.api.mapcore.util.k> r1 = r0.t     // Catch:{ all -> 0x01d2 }
                java.lang.Object r1 = r1.get()     // Catch:{ all -> 0x01d2 }
                com.amap.api.mapcore.util.k r1 = (com.amap.api.mapcore.util.k) r1     // Catch:{ all -> 0x01d2 }
                if (r1 != 0) goto L_0x01ab
                r1 = 0
            L_0x00df:
                if (r1 == 0) goto L_0x00eb
                com.amap.api.mapcore.util.k$j r1 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                boolean r1 = r1.a()     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x00ee
            L_0x00eb:
                r18.k()     // Catch:{ all -> 0x01d2 }
            L_0x00ee:
                if (r13 == 0) goto L_0x0101
                com.amap.api.mapcore.util.k$j r1 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                boolean r1 = r1.b()     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x0101
                r0 = r18
                com.amap.api.mapcore.util.k$h r1 = r0.s     // Catch:{ all -> 0x01d2 }
                r1.f()     // Catch:{ all -> 0x01d2 }
            L_0x0101:
                r0 = r18
                boolean r1 = r0.e     // Catch:{ all -> 0x01d2 }
                if (r1 != 0) goto L_0x0127
                r0 = r18
                boolean r1 = r0.g     // Catch:{ all -> 0x01d2 }
                if (r1 != 0) goto L_0x0127
                r0 = r18
                boolean r1 = r0.i     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x0116
                r18.j()     // Catch:{ all -> 0x01d2 }
            L_0x0116:
                r1 = 1
                r0 = r18
                r0.g = r1     // Catch:{ all -> 0x01d2 }
                r1 = 0
                r0 = r18
                r0.f = r1     // Catch:{ all -> 0x01d2 }
                com.amap.api.mapcore.util.k$j r1 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                r1.notifyAll()     // Catch:{ all -> 0x01d2 }
            L_0x0127:
                r0 = r18
                boolean r1 = r0.e     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x013f
                r0 = r18
                boolean r1 = r0.g     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x013f
                r1 = 0
                r0 = r18
                r0.g = r1     // Catch:{ all -> 0x01d2 }
                com.amap.api.mapcore.util.k$j r1 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                r1.notifyAll()     // Catch:{ all -> 0x01d2 }
            L_0x013f:
                if (r6 == 0) goto L_0x014f
                r7 = 0
                r6 = 0
                r1 = 1
                r0 = r18
                r0.p = r1     // Catch:{ all -> 0x01d2 }
                com.amap.api.mapcore.util.k$j r1 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                r1.notifyAll()     // Catch:{ all -> 0x01d2 }
            L_0x014f:
                boolean r1 = r18.m()     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x01f0
                r0 = r18
                boolean r1 = r0.h     // Catch:{ all -> 0x01d2 }
                if (r1 != 0) goto L_0x015e
                if (r5 == 0) goto L_0x01b1
                r5 = 0
            L_0x015e:
                r0 = r18
                boolean r1 = r0.h     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x02ee
                r0 = r18
                boolean r1 = r0.i     // Catch:{ all -> 0x01d2 }
                if (r1 != 0) goto L_0x02ee
                r1 = 1
                r0 = r18
                r0.i = r1     // Catch:{ all -> 0x01d2 }
                r11 = 1
                r10 = 1
                r8 = 1
                r1 = r8
                r8 = r10
            L_0x0174:
                r0 = r18
                boolean r10 = r0.i     // Catch:{ all -> 0x01d2 }
                if (r10 == 0) goto L_0x01ee
                r0 = r18
                boolean r10 = r0.r     // Catch:{ all -> 0x01d2 }
                if (r10 == 0) goto L_0x02e4
                r7 = 1
                r0 = r18
                int r3 = r0.l     // Catch:{ all -> 0x01d2 }
                r0 = r18
                int r1 = r0.m     // Catch:{ all -> 0x01d2 }
                r4 = 1
                r10 = 1
                r11 = 0
                r0 = r18
                r0.r = r11     // Catch:{ all -> 0x01d2 }
            L_0x0190:
                r11 = 0
                r0 = r18
                r0.o = r11     // Catch:{ all -> 0x01d2 }
                com.amap.api.mapcore.util.k$j r11 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                r11.notifyAll()     // Catch:{ all -> 0x01d2 }
                r11 = r8
                r8 = r4
                r4 = r2
                r2 = r6
                r6 = r3
                r17 = r1
                r1 = r10
                r10 = r9
                r9 = r7
                r7 = r5
                r5 = r17
                goto L_0x006c
            L_0x01ab:
                boolean r1 = r1.l     // Catch:{ all -> 0x01d2 }
                goto L_0x00df
            L_0x01b1:
                com.amap.api.mapcore.util.k$j r1 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                r0 = r18
                boolean r1 = r1.b(r0)     // Catch:{ all -> 0x01d2 }
                if (r1 == 0) goto L_0x015e
                r0 = r18
                com.amap.api.mapcore.util.k$h r1 = r0.s     // Catch:{ RuntimeException -> 0x01e3 }
                r1.a()     // Catch:{ RuntimeException -> 0x01e3 }
                r1 = 1
                r0 = r18
                r0.h = r1     // Catch:{ all -> 0x01d2 }
                r12 = 1
                com.amap.api.mapcore.util.k$j r1 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                r1.notifyAll()     // Catch:{ all -> 0x01d2 }
                goto L_0x015e
            L_0x01d2:
                r1 = move-exception
                monitor-exit(r15)     // Catch:{ all -> 0x01d2 }
                throw r1     // Catch:{ all -> 0x01d5 }
            L_0x01d5:
                r1 = move-exception
                com.amap.api.mapcore.util.k$j r2 = com.amap.api.mapcore.util.k.a
                monitor-enter(r2)
                r18.j()     // Catch:{ all -> 0x02db }
                r18.k()     // Catch:{ all -> 0x02db }
                monitor-exit(r2)     // Catch:{ all -> 0x02db }
                throw r1
            L_0x01e3:
                r1 = move-exception
                com.amap.api.mapcore.util.k$j r2 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                r0 = r18
                r2.c(r0)     // Catch:{ all -> 0x01d2 }
                throw r1     // Catch:{ all -> 0x01d2 }
            L_0x01ee:
                r10 = r8
                r8 = r1
            L_0x01f0:
                com.amap.api.mapcore.util.k$j r1 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d2 }
                r1.wait()     // Catch:{ all -> 0x01d2 }
                goto L_0x0036
            L_0x01f9:
                if (r1 == 0) goto L_0x02e1
                r0 = r18
                com.amap.api.mapcore.util.k$h r3 = r0.s     // Catch:{ all -> 0x01d5 }
                boolean r3 = r3.b()     // Catch:{ all -> 0x01d5 }
                if (r3 == 0) goto L_0x02ad
                com.amap.api.mapcore.util.k$j r3 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d5 }
                monitor-enter(r3)     // Catch:{ all -> 0x01d5 }
                r1 = 1
                r0 = r18
                r0.j = r1     // Catch:{ all -> 0x02aa }
                com.amap.api.mapcore.util.k$j r1 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x02aa }
                r1.notifyAll()     // Catch:{ all -> 0x02aa }
                monitor-exit(r3)     // Catch:{ all -> 0x02aa }
                r1 = 0
                r3 = r1
            L_0x0219:
                if (r11 == 0) goto L_0x02de
                r0 = r18
                com.amap.api.mapcore.util.k$h r1 = r0.s     // Catch:{ all -> 0x01d5 }
                javax.microedition.khronos.opengles.GL r1 = r1.c()     // Catch:{ all -> 0x01d5 }
                javax.microedition.khronos.opengles.GL10 r1 = (javax.microedition.khronos.opengles.GL10) r1     // Catch:{ all -> 0x01d5 }
                com.amap.api.mapcore.util.k$j r11 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d5 }
                r11.a(r1)     // Catch:{ all -> 0x01d5 }
                r11 = 0
                r13 = r1
            L_0x022e:
                if (r12 == 0) goto L_0x024a
                r0 = r18
                java.lang.ref.WeakReference<com.amap.api.mapcore.util.k> r1 = r0.t     // Catch:{ all -> 0x01d5 }
                java.lang.Object r1 = r1.get()     // Catch:{ all -> 0x01d5 }
                com.amap.api.mapcore.util.k r1 = (com.amap.api.mapcore.util.k) r1     // Catch:{ all -> 0x01d5 }
                if (r1 == 0) goto L_0x0249
                android.opengl.GLSurfaceView$Renderer r1 = r1.d     // Catch:{ all -> 0x01d5 }
                r0 = r18
                com.amap.api.mapcore.util.k$h r12 = r0.s     // Catch:{ all -> 0x01d5 }
                javax.microedition.khronos.egl.EGLConfig r12 = r12.d     // Catch:{ all -> 0x01d5 }
                r1.onSurfaceCreated(r13, r12)     // Catch:{ all -> 0x01d5 }
            L_0x0249:
                r12 = 0
            L_0x024a:
                if (r9 == 0) goto L_0x0260
                r0 = r18
                java.lang.ref.WeakReference<com.amap.api.mapcore.util.k> r1 = r0.t     // Catch:{ all -> 0x01d5 }
                java.lang.Object r1 = r1.get()     // Catch:{ all -> 0x01d5 }
                com.amap.api.mapcore.util.k r1 = (com.amap.api.mapcore.util.k) r1     // Catch:{ all -> 0x01d5 }
                if (r1 == 0) goto L_0x025f
                android.opengl.GLSurfaceView$Renderer r1 = r1.d     // Catch:{ all -> 0x01d5 }
                r1.onSurfaceChanged(r13, r6, r5)     // Catch:{ all -> 0x01d5 }
            L_0x025f:
                r9 = 0
            L_0x0260:
                r0 = r18
                java.lang.ref.WeakReference<com.amap.api.mapcore.util.k> r1 = r0.t     // Catch:{ all -> 0x01d5 }
                java.lang.Object r1 = r1.get()     // Catch:{ all -> 0x01d5 }
                com.amap.api.mapcore.util.k r1 = (com.amap.api.mapcore.util.k) r1     // Catch:{ all -> 0x01d5 }
                if (r1 == 0) goto L_0x0273
                android.opengl.GLSurfaceView$Renderer r1 = r1.d     // Catch:{ all -> 0x01d5 }
                r1.onDrawFrame(r13)     // Catch:{ all -> 0x01d5 }
            L_0x0273:
                r0 = r18
                com.amap.api.mapcore.util.k$h r1 = r0.s     // Catch:{ all -> 0x01d5 }
                int r1 = r1.d()     // Catch:{ all -> 0x01d5 }
                switch(r1) {
                    case 12288: goto L_0x0297;
                    case 12302: goto L_0x02d6;
                    default: goto L_0x027e;
                }     // Catch:{ all -> 0x01d5 }
            L_0x027e:
                java.lang.String r14 = "GLThread"
                java.lang.String r15 = "eglSwapBuffers"
                com.amap.api.mapcore.util.k.h.a(r14, r15, r1)     // Catch:{ all -> 0x01d5 }
                com.amap.api.mapcore.util.k$j r14 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d5 }
                monitor-enter(r14)     // Catch:{ all -> 0x01d5 }
                r1 = 1
                r0 = r18
                r0.f = r1     // Catch:{ all -> 0x02d8 }
                com.amap.api.mapcore.util.k$j r1 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x02d8 }
                r1.notifyAll()     // Catch:{ all -> 0x02d8 }
                monitor-exit(r14)     // Catch:{ all -> 0x02d8 }
            L_0x0297:
                if (r8 == 0) goto L_0x02f5
                r1 = 1
            L_0x029a:
                r2 = r4
                r14 = r13
                r4 = r6
                r6 = r1
                r17 = r7
                r7 = r8
                r8 = r9
                r9 = r10
                r10 = r11
                r11 = r3
                r3 = r5
                r5 = r17
                goto L_0x0031
            L_0x02aa:
                r1 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x02aa }
                throw r1     // Catch:{ all -> 0x01d5 }
            L_0x02ad:
                com.amap.api.mapcore.util.k$j r3 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x01d5 }
                monitor-enter(r3)     // Catch:{ all -> 0x01d5 }
                r13 = 1
                r0 = r18
                r0.j = r13     // Catch:{ all -> 0x02d3 }
                r13 = 1
                r0 = r18
                r0.f = r13     // Catch:{ all -> 0x02d3 }
                com.amap.api.mapcore.util.k$j r13 = com.amap.api.mapcore.util.k.a     // Catch:{ all -> 0x02d3 }
                r13.notifyAll()     // Catch:{ all -> 0x02d3 }
                monitor-exit(r3)     // Catch:{ all -> 0x02d3 }
                r3 = r5
                r5 = r7
                r7 = r8
                r8 = r9
                r9 = r10
                r10 = r11
                r11 = r1
                r17 = r2
                r2 = r4
                r4 = r6
                r6 = r17
                goto L_0x0031
            L_0x02d3:
                r1 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x02d3 }
                throw r1     // Catch:{ all -> 0x01d5 }
            L_0x02d6:
                r10 = 1
                goto L_0x0297
            L_0x02d8:
                r1 = move-exception
                monitor-exit(r14)     // Catch:{ all -> 0x02d8 }
                throw r1     // Catch:{ all -> 0x01d5 }
            L_0x02db:
                r1 = move-exception
                monitor-exit(r2)     // Catch:{ all -> 0x02db }
                throw r1
            L_0x02de:
                r13 = r14
                goto L_0x022e
            L_0x02e1:
                r3 = r1
                goto L_0x0219
            L_0x02e4:
                r10 = r11
                r17 = r4
                r4 = r7
                r7 = r1
                r1 = r3
                r3 = r17
                goto L_0x0190
            L_0x02ee:
                r1 = r8
                r8 = r10
                goto L_0x0174
            L_0x02f2:
                r13 = r1
                goto L_0x00a4
            L_0x02f5:
                r1 = r2
                goto L_0x029a
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.k.i.l():void");
        }

        public boolean a() {
            return this.h && this.i && m();
        }

        private boolean m() {
            return !this.d && this.e && !this.f && this.l > 0 && this.m > 0 && (this.o || this.n == 1);
        }

        public void a(int i2) {
            if (i2 < 0 || i2 > 1) {
                throw new IllegalArgumentException("renderMode");
            }
            synchronized (k.a) {
                this.n = i2;
                k.a.notifyAll();
            }
        }

        public int b() {
            int i2;
            synchronized (k.a) {
                i2 = this.n;
            }
            return i2;
        }

        public void c() {
            synchronized (k.a) {
                this.o = true;
                k.a.notifyAll();
            }
        }

        public void d() {
            synchronized (k.a) {
                this.e = true;
                this.j = false;
                k.a.notifyAll();
                while (this.g && !this.j && !this.b) {
                    try {
                        k.a.wait();
                    } catch (InterruptedException e2) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void e() {
            synchronized (k.a) {
                this.e = false;
                k.a.notifyAll();
                while (!this.g && !this.b) {
                    try {
                        k.a.wait();
                    } catch (InterruptedException e2) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void f() {
            synchronized (k.a) {
                this.c = true;
                k.a.notifyAll();
                while (!this.b && !this.d) {
                    try {
                        k.a.wait();
                    } catch (InterruptedException e2) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void g() {
            synchronized (k.a) {
                this.c = false;
                this.o = true;
                this.p = false;
                k.a.notifyAll();
                while (!this.b && this.d && !this.p) {
                    try {
                        k.a.wait();
                    } catch (InterruptedException e2) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void a(int i2, int i3) {
            synchronized (k.a) {
                this.l = i2;
                this.m = i3;
                this.r = true;
                this.o = true;
                this.p = false;
                k.a.notifyAll();
                while (!this.b && !this.d && !this.p && a()) {
                    try {
                        k.a.wait();
                    } catch (InterruptedException e2) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void h() {
            synchronized (k.a) {
                this.a = true;
                k.a.notifyAll();
                while (!this.b) {
                    try {
                        k.a.wait();
                    } catch (InterruptedException e2) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void i() {
            this.k = true;
            k.a.notifyAll();
        }

        public void a(Runnable runnable) {
            if (runnable == null) {
                throw new IllegalArgumentException("r must not be null");
            }
            synchronized (k.a) {
                this.q.add(runnable);
                k.a.notifyAll();
            }
        }
    }

    /* compiled from: GLTextureView */
    private static class j {
        private static String a = "GLThreadManager";
        private boolean b;
        private int c;
        private boolean d;
        private boolean e;
        private boolean f;
        private i g;

        private j() {
        }

        public synchronized void a(i iVar) {
            iVar.b = true;
            if (this.g == iVar) {
                this.g = null;
            }
            notifyAll();
        }

        public boolean b(i iVar) {
            if (this.g == iVar || this.g == null) {
                this.g = iVar;
                notifyAll();
                return true;
            }
            c();
            if (this.e) {
                return true;
            }
            if (this.g != null) {
                this.g.i();
            }
            return false;
        }

        public void c(i iVar) {
            if (this.g == iVar) {
                this.g = null;
            }
            notifyAll();
        }

        public synchronized boolean a() {
            return this.f;
        }

        public synchronized boolean b() {
            c();
            return !this.e;
        }

        public synchronized void a(GL10 gl10) {
            boolean z = true;
            synchronized (this) {
                if (!this.d && gl10 != null) {
                    c();
                    String glGetString = gl10.glGetString(7937);
                    if (this.c < 131072) {
                        this.e = !glGetString.startsWith("Q3Dimension MSM7500 ");
                        notifyAll();
                    }
                    if (this.e) {
                        z = false;
                    }
                    this.f = z;
                    this.d = true;
                }
            }
        }

        private void c() {
            if (!this.b) {
                this.c = 131072;
                if (this.c >= 131072) {
                    this.e = true;
                }
                this.b = true;
            }
        }
    }

    /* renamed from: com.amap.api.mapcore.util.k$k reason: collision with other inner class name */
    /* compiled from: GLTextureView */
    public interface C0009k {
        GL a(GL gl);
    }

    /* compiled from: GLTextureView */
    static class l extends Writer {
        private StringBuilder a = new StringBuilder();

        l() {
        }

        public void close() {
            a();
        }

        public void flush() {
            a();
        }

        public void write(char[] cArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                char c = cArr[i + i3];
                if (c == 10) {
                    a();
                } else {
                    this.a.append(c);
                }
            }
        }

        private void a() {
            if (this.a.length() > 0) {
                Log.v("GLSurfaceView", this.a.toString());
                this.a.delete(0, this.a.length());
            }
        }
    }

    /* compiled from: GLTextureView */
    private class m extends b {
        public m(boolean z) {
            int i;
            if (z) {
                i = 16;
            } else {
                i = 0;
            }
            super(8, 8, 8, 0, i, 0);
        }
    }

    public k(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        try {
            if (this.c != null) {
                this.c.h();
            }
        } finally {
            super.finalize();
        }
    }

    private void a() {
        setSurfaceTextureListener(this);
    }

    public void setRenderer(Renderer renderer) {
        e();
        if (this.f == null) {
            this.f = new m(true);
        }
        if (this.g == null) {
            this.g = new c();
        }
        if (this.h == null) {
            this.h = new d();
        }
        this.d = renderer;
        this.c = new i(this.b);
        this.c.start();
    }

    public void a(f fVar) {
        e();
        this.g = fVar;
    }

    public void a(e eVar) {
        e();
        this.f = eVar;
    }

    public void setRenderMode(int i2) {
        this.c.a(i2);
    }

    public void requestRender() {
        this.c.c();
    }

    public int getRenderMode() {
        return this.c.b();
    }

    public void b() {
        this.c.f();
    }

    public void c() {
        this.c.g();
    }

    public void queueEvent(Runnable runnable) {
        this.c.a(runnable);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        int i2;
        super.onAttachedToWindow();
        if (this.e && this.d != null) {
            if (this.c != null) {
                i2 = this.c.b();
            } else {
                i2 = 1;
            }
            this.c = new i(this.b);
            if (i2 != 1) {
                this.c.a(i2);
            }
            this.c.start();
        }
        this.e = false;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        if (this.c != null) {
            this.c.h();
        }
        this.e = true;
        super.onDetachedFromWindow();
    }

    private void e() {
        if (this.c != null) {
            throw new IllegalStateException("setRenderer has already been called for this instance.");
        }
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.c.d();
        onSurfaceTextureSizeChanged(surfaceTexture, i2, i3);
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.c.e();
        return true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.c.a(i2, i3);
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        onSurfaceTextureSizeChanged(getSurfaceTexture(), i4 - i2, i5 - i3);
        super.onLayout(z, i2, i3, i4, i5);
    }
}
