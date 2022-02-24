package com.xiaomi.push;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class dv {

    /* loaded from: classes2.dex */
    public static final class a extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f226a;

        /* renamed from: b  reason: collision with other field name */
        private boolean f227b;
        private boolean d;
        private boolean e;

        /* renamed from: a  reason: collision with root package name */
        private int f8860a = 0;

        /* renamed from: c  reason: collision with other field name */
        private boolean f228c = false;

        /* renamed from: b  reason: collision with root package name */
        private int f8861b = 0;
        private boolean f = false;

        /* renamed from: a  reason: collision with other field name */
        private List<String> f225a = Collections.emptyList();

        /* renamed from: c  reason: collision with root package name */
        private int f8862c = -1;

        public static a a(byte[] bArr) {
            return (a) new a().a(bArr);
        }

        public static a b(b bVar) {
            return new a().a(bVar);
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.f8862c < 0) {
                mo225b();
            }
            return this.f8862c;
        }

        public a a(int i) {
            this.f226a = true;
            this.f8860a = i;
            return this;
        }

        @Override // com.xiaomi.push.e
        public a a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 8) {
                    a(bVar.c());
                } else if (a2 == 16) {
                    a(bVar.m81a());
                } else if (a2 == 24) {
                    b(bVar.m84b());
                } else if (a2 == 32) {
                    b(bVar.m81a());
                } else if (a2 == 42) {
                    a(bVar.m78a());
                } else if (!a(bVar, a2)) {
                    return this;
                }
            }
        }

        public a a(String str) {
            if (str != null) {
                if (this.f225a.isEmpty()) {
                    this.f225a = new ArrayList();
                }
                this.f225a.add(str);
                return this;
            }
            throw null;
        }

        public a a(boolean z) {
            this.f227b = true;
            this.f228c = z;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public List<String> mo223a() {
            return this.f225a;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo223a()) {
                cVar.m129b(1, c());
            }
            if (m172c()) {
                cVar.m121a(2, mo225b());
            }
            if (m173d()) {
                cVar.m116a(3, d());
            }
            if (f()) {
                cVar.m121a(4, m174e());
            }
            for (String str : mo223a()) {
                cVar.m120a(5, str);
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public boolean mo223a() {
            return this.f226a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            int b2 = mo223a() ? c.b(1, c()) + 0 : 0;
            if (m172c()) {
                b2 += c.a(2, mo225b());
            }
            if (m173d()) {
                b2 += c.a(3, d());
            }
            if (f()) {
                b2 += c.a(4, m174e());
            }
            for (String str : mo223a()) {
                i += c.a(str);
            }
            int size = b2 + i + (mo223a().size() * 1);
            this.f8862c = size;
            return size;
        }

        public a b(int i) {
            this.d = true;
            this.f8861b = i;
            return this;
        }

        public a b(boolean z) {
            this.e = true;
            this.f = z;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public boolean mo225b() {
            return this.f228c;
        }

        public int c() {
            return this.f8860a;
        }

        /* renamed from: c  reason: collision with other method in class */
        public boolean m172c() {
            return this.f227b;
        }

        public int d() {
            return this.f8861b;
        }

        /* renamed from: d  reason: collision with other method in class */
        public boolean m173d() {
            return this.d;
        }

        public int e() {
            return this.f225a.size();
        }

        /* renamed from: e  reason: collision with other method in class */
        public boolean m174e() {
            return this.f;
        }

        public boolean f() {
            return this.e;
        }
    }
}
