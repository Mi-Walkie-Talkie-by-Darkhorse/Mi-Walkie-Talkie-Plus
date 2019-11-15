package io.agora.rtc.internal;

import java.util.ArrayList;

/* compiled from: RtcEngineMessage */
public class f {
    public static short a = 0;

    /* compiled from: RtcEngineMessage */
    public static class a extends e {
        b a;

        public /* bridge */ /* synthetic */ void a(int i) {
            super.a(i);
        }

        public /* bridge */ /* synthetic */ void a(ArrayList arrayList) {
            super.a(arrayList);
        }

        public /* bridge */ /* synthetic */ void a(short s) {
            super.a(s);
        }

        public /* bridge */ /* synthetic */ void a(byte[] bArr) {
            super.a(bArr);
        }

        public byte[] a() {
            if (this.a != null) {
                this.a.a((e) this);
            }
            return super.a();
        }
    }

    /* compiled from: RtcEngineMessage */
    public static class b extends e {
        String a = "";
        String b = "";
        String c = "";
        String d = "";
        int e;
        int f;
        int g;
        int h;
        int i;
        String j = "";
        String k = "";
        ArrayList<String> l = null;

        public /* bridge */ /* synthetic */ void a(int i2) {
            super.a(i2);
        }

        public /* bridge */ /* synthetic */ void a(ArrayList arrayList) {
            super.a(arrayList);
        }

        public /* bridge */ /* synthetic */ void a(short s) {
            super.a(s);
        }

        public /* bridge */ /* synthetic */ void a(byte[] bArr) {
            super.a(bArr);
        }

        public void a(e eVar) {
            eVar.a(this.a.getBytes());
            eVar.a(this.b.getBytes());
            eVar.a(this.c.getBytes());
            eVar.a(this.d.getBytes());
            eVar.a(this.e);
            eVar.a(this.f);
            eVar.a(this.g);
            eVar.a(this.h);
            eVar.a(this.i);
            if (this.j != null) {
                eVar.a(this.j.getBytes());
            } else {
                eVar.a("".getBytes());
            }
            if (this.k != null) {
                eVar.a(this.k.getBytes());
            } else {
                eVar.a("".getBytes());
            }
            if (this.l != null) {
                eVar.a(this.l);
            } else {
                eVar.a(new ArrayList<>());
            }
        }

        public byte[] a() {
            a((e) this);
            return super.a();
        }
    }
}
