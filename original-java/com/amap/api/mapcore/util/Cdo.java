package com.amap.api.mapcore.util;

import android.graphics.Color;
import android.opengl.GLES20;
import android.util.Log;
import android.view.SurfaceHolder;
import com.amap.api.mapcore.util.cx.d;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.protobuf.IMBaseDefine.MessageCmdID;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* renamed from: com.amap.api.mapcore.util.do reason: invalid class name */
/* compiled from: GLESUtility */
public class Cdo {

    /* renamed from: com.amap.api.mapcore.util.do$a */
    /* compiled from: GLESUtility */
    public static class a extends dp {
        private static int g = 4;
        protected int a;
        protected int b;
        protected int c;
        protected int d;
        protected int e;
        protected int f;
        private int[] h = new int[1];

        public a(int i, int i2, int i3, int i4, int i5, int i6) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
        }

        private int[] a(int i, boolean z) {
            int i2 = 1;
            if (i == 2) {
                int[] iArr = new int[17];
                iArr[0] = 12324;
                iArr[1] = this.a;
                iArr[2] = 12323;
                iArr[3] = this.b;
                iArr[4] = 12322;
                iArr[5] = this.c;
                iArr[6] = 12321;
                iArr[7] = this.d;
                iArr[8] = 12325;
                iArr[9] = this.e;
                iArr[10] = 12326;
                iArr[11] = this.f;
                iArr[12] = 12338;
                if (!z) {
                    i2 = 0;
                }
                iArr[13] = i2;
                iArr[14] = 12352;
                iArr[15] = g;
                iArr[16] = 12344;
                return iArr;
            } else if (z) {
                return new int[]{12324, this.a, 12323, this.b, 12322, this.c, 12338, 1, 12344};
            } else {
                return new int[]{12324, this.a, 12323, this.b, 12322, this.c, 12344};
            }
        }

        private c a(EGL10 egl10, EGLDisplay eGLDisplay) {
            c cVar = new c();
            cVar.a = a(2, true);
            egl10.eglChooseConfig(eGLDisplay, cVar.a, null, 0, cVar.b);
            if (cVar.b[0] <= 0) {
                cVar.a = a(2, false);
                egl10.eglChooseConfig(eGLDisplay, cVar.a, null, 0, cVar.b);
                if (cVar.b[0] <= 0) {
                    return null;
                }
            }
            return cVar;
        }

        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            c a2 = a(egl10, eGLDisplay);
            if (a2 == null || a2.a == null) {
                return null;
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[a2.b[0]];
            egl10.eglChooseConfig(eGLDisplay, a2.a, eGLConfigArr, a2.b[0], a2.b);
            EGLConfig a3 = a(egl10, eGLDisplay, eGLConfigArr);
            if (a3 != null) {
                return a3;
            }
            this.a = 8;
            this.b = 8;
            this.c = 8;
            c a4 = a(egl10, eGLDisplay);
            if (a4 == null || a4.a == null) {
                return a3;
            }
            EGLConfig[] eGLConfigArr2 = new EGLConfig[a4.b[0]];
            egl10.eglChooseConfig(eGLDisplay, a4.a, eGLConfigArr2, a4.b[0], a4.b);
            return a(egl10, eGLDisplay, eGLConfigArr2);
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

        private int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
            if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.h)) {
                return this.h[0];
            }
            return i2;
        }
    }

    /* renamed from: com.amap.api.mapcore.util.do$b */
    /* compiled from: GLESUtility */
    public static class b extends dq {
        private static int a = 12440;

        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            try {
                return egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{a, 2, 12344});
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return null;
            }
        }

        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            egl10.eglDestroyContext(eGLDisplay, eGLContext);
        }
    }

    /* renamed from: com.amap.api.mapcore.util.do$c */
    /* compiled from: GLESUtility */
    private static class c {
        public int[] a;
        public int[] b;

        private c() {
            this.a = null;
            this.b = new int[1];
        }
    }

    public static void a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            Log.e("amap", str + ": glError " + glGetError);
            throw new RuntimeException(str + ": glError " + glGetError);
        }
    }

    public static void a(d dVar, int i, int i2, FloatBuffer floatBuffer, float f, FloatBuffer floatBuffer2, int i3, int i4, float[] fArr) {
        b(dVar, 4, i, floatBuffer2, 1.0f, i4, fArr);
        b(dVar, 2, i2, floatBuffer, f, i3, fArr);
    }

    public static void a(d dVar, int i, FloatBuffer floatBuffer, float f, int i2, float[] fArr) {
        b(dVar, 3, i, floatBuffer, f, i2, fArr);
    }

    public static void a(d dVar, int i, int i2, FloatBuffer floatBuffer, float f, int i3, float[] fArr, int i4, int i5) {
        b(dVar, 6, i, floatBuffer, 1.0f, i3, fArr);
        a(dVar, 2, i2, floatBuffer, f, 1, i3 - 1, fArr);
    }

    public static void b(d dVar, int i, int i2, FloatBuffer floatBuffer, float f, FloatBuffer floatBuffer2, int i3, int i4, float[] fArr) {
        b(dVar, 2, i2, floatBuffer, f, i3, fArr);
    }

    public static void a(d dVar, int i, int i2, FloatBuffer floatBuffer, float f, int i3, float[] fArr) {
        a(dVar, 2, i2, floatBuffer, f, 1, i3 - 1, fArr);
    }

    private static void b(d dVar, int i, int i2, FloatBuffer floatBuffer, float f, int i3, float[] fArr) {
        a(dVar, i, i2, floatBuffer, f, 0, i3, fArr);
    }

    private static void a(d dVar, int i, int i2, FloatBuffer floatBuffer, float f, int i3, int i4, float[] fArr) {
        if (f != 0.0f && dVar != null) {
            dVar.a();
            GLES20.glEnable(3042);
            GLES20.glDisable(2929);
            GLES20.glBlendFunc(MessageCmdID.CID_MSG_DATA_ACK_VALUE, MessageCmdID.CID_MSG_READ_ACK_VALUE);
            float red = ((float) Color.red(i2)) / 255.0f;
            float green = ((float) Color.green(i2)) / 255.0f;
            float blue = ((float) Color.blue(i2)) / 255.0f;
            float[] fArr2 = {red, green, blue, ((float) Color.alpha(i2)) / 255.0f};
            GLES20.glLineWidth(f);
            GLES20.glEnableVertexAttribArray(dVar.b);
            GLES20.glVertexAttribPointer(dVar.b, 3, 5126, false, 0, floatBuffer);
            GLES20.glUniform4fv(dVar.c, 1, fArr2, 0);
            GLES20.glUniformMatrix4fv(dVar.a, 1, false, fArr, 0);
            GLES20.glDrawArrays(i, i3, i4);
            GLES20.glDisableVertexAttribArray(dVar.b);
            GLES20.glDisable(3042);
            GLES20.glUseProgram(0);
        }
    }

    public static void a(m mVar, int i, int i2, int i3, int i4, int i5, int i6) {
        if (i4 > 0) {
            SurfaceHolder holder = mVar.getHolder();
            if (holder != null) {
                holder.setFormat(-3);
            }
        }
        mVar.a((dq) new b());
        mVar.a((dp) new a(i, i2, i3, i4, i5, i6));
    }
}
