package com.amap.api.mapcore.util;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

/* compiled from: NativeBufferPool */
public class du extends em<a> {
    private a b;

    /* compiled from: NativeBufferPool */
    static final class a extends el<a> {
        ByteBuffer a;
        ShortBuffer b;
        FloatBuffer c;
        IntBuffer d;
        int e;

        a() {
        }

        /* access modifiers changed from: 0000 */
        public void a(int i) {
            if (i < 32768) {
                i = 32768;
            }
            this.a = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
            this.e = i;
            this.b = null;
            this.d = null;
            this.c = null;
        }
    }

    public a a(int i) {
        a aVar;
        a aVar2 = (a) this.a;
        if (aVar2 == null) {
            aVar = new a();
        } else {
            this.a = aVar2.f;
            aVar2.f = null;
            aVar = aVar2;
        }
        if (aVar.e < i) {
            aVar.a(i);
        }
        this.b = (a) el.a(this.b, aVar);
        return aVar;
    }

    public void a() {
        this.b = (a) b(this.b);
    }

    public ShortBuffer b(int i) {
        a a2 = a(i * 2);
        if (a2.b == null) {
            a2.a.clear();
            a2.b = a2.a.asShortBuffer();
        } else {
            a2.b.clear();
        }
        return a2.b;
    }

    public FloatBuffer c(int i) {
        a a2 = a(i * 4);
        if (a2.c == null) {
            a2.a.clear();
            a2.c = a2.a.asFloatBuffer();
        } else {
            a2.c.clear();
        }
        a2.c.clear();
        return a2.c;
    }
}
