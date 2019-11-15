package com.amap.api.mapcore.util;

import android.opengl.GLES20;

/* compiled from: GLShader */
public class cw {
    private boolean a;
    public int d;
    public int e;
    public int f;

    /* access modifiers changed from: protected */
    public boolean a(String str, String str2) {
        this.d = b(str, str2);
        return this.d != 0;
    }

    /* access modifiers changed from: protected */
    public boolean a(String str) {
        this.d = d(str);
        return this.d != 0;
    }

    /* access modifiers changed from: protected */
    public int b(String str) {
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.d, str);
        if (glGetAttribLocation < 0) {
        }
        return glGetAttribLocation;
    }

    /* access modifiers changed from: protected */
    public int c(String str) {
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.d, str);
        if (glGetUniformLocation < 0) {
        }
        return glGetUniformLocation;
    }

    public void a() {
        GLES20.glUseProgram(this.d);
    }

    public int d(String str) {
        String str2 = "amap_sdk_shaders/" + str;
        String a2 = di.a(str2);
        if (a2 == null) {
            throw new IllegalArgumentException("shader file not found: " + str2);
        }
        int indexOf = a2.indexOf(36);
        if (indexOf < 0 || a2.charAt(indexOf + 1) != '$') {
            throw new IllegalArgumentException("not a shader file " + str2);
        }
        return b(a2.substring(0, indexOf), a2.substring(indexOf + 2));
    }

    public int b(String str, String str2) {
        this.e = a(35633, str);
        this.f = a(35632, str2);
        int glCreateProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(glCreateProgram, this.e);
        GLES20.glAttachShader(glCreateProgram, this.f);
        GLES20.glLinkProgram(glCreateProgram);
        return glCreateProgram;
    }

    public int a(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        return glCreateShader;
    }

    public void b() {
        if (this.d >= 0) {
            GLES20.glDeleteProgram(this.d);
        }
        if (this.e >= 0) {
            GLES20.glDeleteShader(this.e);
        }
        if (this.f >= 0) {
            GLES20.glDeleteShader(this.f);
        }
        this.a = true;
    }

    public boolean c() {
        return this.a;
    }
}
