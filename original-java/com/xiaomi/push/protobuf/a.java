package com.xiaomi.push.protobuf;

import com.google.protobuf.micro.b;
import com.google.protobuf.micro.c;
import com.google.protobuf.micro.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class a {

    /* renamed from: com.xiaomi.push.protobuf.a$a reason: collision with other inner class name */
    public static final class C0069a extends e {
        private boolean a;
        private int b = 0;
        private boolean c;
        private boolean d = false;
        private boolean e;
        private int f = 0;
        private boolean g;
        private boolean h = false;
        private List<String> i = Collections.emptyList();
        private int j = -1;

        public static C0069a b(byte[] bArr) {
            return (C0069a) new C0069a().a(bArr);
        }

        public static C0069a c(b bVar) {
            return new C0069a().a(bVar);
        }

        public int a() {
            if (this.j < 0) {
                b();
            }
            return this.j;
        }

        public C0069a a(int i2) {
            this.a = true;
            this.b = i2;
            return this;
        }

        public C0069a a(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            if (this.i.isEmpty()) {
                this.i = new ArrayList();
            }
            this.i.add(str);
            return this;
        }

        public C0069a a(boolean z) {
            this.c = true;
            this.d = z;
            return this;
        }

        public void a(c cVar) {
            if (e()) {
                cVar.b(1, d());
            }
            if (g()) {
                cVar.a(2, f());
            }
            if (i()) {
                cVar.a(3, h());
            }
            if (k()) {
                cVar.a(4, j());
            }
            for (String a2 : l()) {
                cVar.a(5, a2);
            }
        }

        public int b() {
            int i2 = 0;
            int i3 = e() ? c.d(1, d()) + 0 : 0;
            if (g()) {
                i3 += c.b(2, f());
            }
            if (i()) {
                i3 += c.c(3, h());
            }
            int i4 = k() ? i3 + c.b(4, j()) : i3;
            for (String b2 : l()) {
                i2 += c.b(b2);
            }
            int size = i4 + i2 + (l().size() * 1);
            this.j = size;
            return size;
        }

        public C0069a b(int i2) {
            this.e = true;
            this.f = i2;
            return this;
        }

        /* renamed from: b */
        public C0069a a(b bVar) {
            while (true) {
                int a2 = bVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 8:
                        a(bVar.i());
                        continue;
                    case 16:
                        a(bVar.f());
                        continue;
                    case 24:
                        b(bVar.e());
                        continue;
                    case 32:
                        b(bVar.f());
                        continue;
                    case 42:
                        a(bVar.g());
                        continue;
                    default:
                        if (!a(bVar, a2)) {
                            break;
                        } else {
                            continue;
                        }
                }
            }
            return this;
        }

        public C0069a b(boolean z) {
            this.g = true;
            this.h = z;
            return this;
        }

        public int d() {
            return this.b;
        }

        public boolean e() {
            return this.a;
        }

        public boolean f() {
            return this.d;
        }

        public boolean g() {
            return this.c;
        }

        public int h() {
            return this.f;
        }

        public boolean i() {
            return this.e;
        }

        public boolean j() {
            return this.h;
        }

        public boolean k() {
            return this.g;
        }

        public List<String> l() {
            return this.i;
        }

        public int m() {
            return this.i.size();
        }
    }
}
