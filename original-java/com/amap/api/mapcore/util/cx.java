package com.amap.api.mapcore.util;

/* compiled from: GLShaderManager */
public class cx {
    private c a;
    private e b;
    private b c;
    private d d;
    private a e;

    /* compiled from: GLShaderManager */
    public class a extends cw {
        String a = ("precision highp float;\n        attribute vec4 aVertex;\n        attribute vec2 aTexture;\n        uniform vec4 aMapAttribute;\n        uniform mat4 aMVPMatrix;\n        uniform mat4 aProjection;\n        uniform vec3 aInstanceOffset[" + ah.a + "];\n" + "        varying vec2 texture;\n" + "        mat4 rotationMatrix(vec3 axis, float angle)\n" + "        {\n" + "           axis = normalize(axis);\n" + "           float s = sin(angle);\n" + "           float c = cos(angle);\n" + "           float oc = 1.0 - c;\n" + "           return mat4(oc * axis.x * axis.x + c,           oc * axis.x * axis.y - axis.z * s,  oc * axis.z * axis.x + axis.y * s,  0.0,\n" + "                 oc * axis.x * axis.y + axis.z * s,  oc * axis.y * axis.y + c,           oc * axis.y * axis.z - axis.x * s,  0.0,\n" + "                 oc * axis.z * axis.x - axis.y * s,  oc * axis.y * axis.z + axis.x * s,  oc * axis.z * axis.z + c,           0.0,\n" + "                 0.0,                                0.0,                                0.0,                                1.0);\n" + "        }\n" + "        void main(){\n" + "            int instance = int(aVertex.w);\n" + "            vec3 offset_value = aInstanceOffset[instance];\n" + "            mat4 marker_rotate_mat4 = rotationMatrix(vec3(0,0,1.0), offset_value.z * 0.01745);\n" + "            float map_rotate = -aMapAttribute.z * 0.01745;\n" + "            float map_tilt = aMapAttribute.w * 0.01745;\n" + "            //tilt旋转矩阵\n" + "            mat4 map_tilt_mat4 = rotationMatrix(vec3(1,0,0), map_tilt);\n" + "            //bearing旋转矩阵\n" + "            mat4 map_rotate_mat4 = rotationMatrix(vec3(0,0,1), map_rotate);\n" + "                 \n" + "            //旋转图片\n" + "            vec4 pos_1 = marker_rotate_mat4 * vec4(aVertex.xy * aMapAttribute.xy, 0,1);\n" + "                  \n" + "            //让marker站立，tilt旋转之后z轴值有可能不是0\n" + "            vec4 pos_2 =  map_tilt_mat4 * pos_1;\n" + "                  \n" + "            //旋转 bearing\n" + "            vec4 pos_3 =  map_rotate_mat4 * pos_2;\n" + "            gl_Position = aProjection * aMVPMatrix * vec4(pos_3.xy + offset_value.xy, pos_3.z, 1.0);\n" + "            texture = aTexture;\n" + "        }");
        String b = "        precision highp float;\n        varying vec2 texture;\n        uniform sampler2D aTextureUnit0;\n        void main(){\n            vec4 tempColor = texture2D(aTextureUnit0, texture);\n            gl_FragColor = tempColor;\n        }";
        public int c;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;

        public a() {
            if (a(this.a, this.b)) {
                this.g = c("aMVPMatrix");
                this.k = c("aProjection");
                this.i = c("aInstanceOffset");
                this.j = c("aMapAttribute");
                this.c = b("aVertex");
                this.h = b("aTexture");
            }
        }
    }

    /* compiled from: GLShaderManager */
    public class b extends cw {
        public int a;
        public int b;
        public int c;
        public int g;
        public int h;

        b(String str) {
            if (a(str)) {
                this.a = c("aMVP");
                this.b = b("aVertex");
                this.c = b("aTextureCoord");
                this.g = c("aTransform");
                this.h = c("aColor");
            }
        }
    }

    /* compiled from: GLShaderManager */
    public class c extends cw {
        public int a;
        public int b;
        public int c;
        public int g;
        public int h;

        c(String str) {
            if (a(str)) {
                this.a = c("aMVP");
                Cdo.a("getUniform");
                this.h = c("aMapBearing");
                this.b = b("aVertex");
                this.c = b("aTextureCoord");
                this.g = b("aBearingTiltAlpha");
            }
        }
    }

    /* compiled from: GLShaderManager */
    public class d extends cw {
        public int a;
        public int b;
        public int c;

        d(String str) {
            if (a(str)) {
                this.a = c("aMVPMatrix");
                this.c = c("aColor");
                this.b = b("aVertex");
            }
        }
    }

    /* compiled from: GLShaderManager */
    public class e extends cw {
        public int a;
        public int b;
        public int c;

        e(String str) {
            if (a(str)) {
                this.a = c("aMVP");
                this.b = b("aVertex");
                this.c = b("aTextureCoord");
            }
        }
    }

    private synchronized cw b() {
        if (this.a == null) {
            this.a = new c("texture_normal.glsl");
        }
        return this.a;
    }

    private synchronized cw c() {
        if (this.b == null) {
            this.b = new e("texture.glsl");
        }
        return this.b;
    }

    private synchronized cw d() {
        if (this.c == null) {
            this.c = new b("texture_layer.glsl");
        }
        return this.c;
    }

    private synchronized cw e() {
        if (this.d == null) {
            this.d = new d("point.glsl");
        }
        return this.d;
    }

    private synchronized a f() {
        if (this.e == null) {
            this.e = new a();
        }
        return this.e;
    }

    public cw a(int i) {
        switch (i) {
            case 0:
                return c();
            case 1:
                return b();
            case 2:
                return d();
            case 3:
                return e();
            case 4:
                return f();
            default:
                return null;
        }
    }

    public synchronized void a() {
        if (this.a != null) {
            this.a.b();
            this.a = null;
        }
        if (this.b != null) {
            this.b.b();
            this.b = null;
        }
        if (this.c != null) {
            this.c.b();
            this.c = null;
        }
        if (this.d != null) {
            this.d.b();
            this.d = null;
        }
    }
}
