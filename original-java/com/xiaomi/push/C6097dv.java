package com.xiaomi.push;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* renamed from: com.xiaomi.push.dv */
/* loaded from: classes2.dex */
public final class C6097dv {

    /* renamed from: com.xiaomi.push.dv$a */
    /* loaded from: classes2.dex */
    public static final class C6098a extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21295a;

        /* renamed from: b */
        private boolean f21297b;

        /* renamed from: d */
        private boolean f21300d;

        /* renamed from: e */
        private boolean f21301e;

        /* renamed from: a */
        private int f21293a = 0;

        /* renamed from: c */
        private boolean f21299c = false;

        /* renamed from: b */
        private int f21296b = 0;

        /* renamed from: f */
        private boolean f21302f = false;

        /* renamed from: a */
        private List<String> f21294a = Collections.emptyList();

        /* renamed from: c */
        private int f21298c = -1;

        /* renamed from: a */
        public static C6098a m3333a(byte[] bArr) {
            return (C6098a) new C6098a().m3140a(bArr);
        }

        /* renamed from: b */
        public static C6098a m3330b(C6001b c6001b) {
            return new C6098a().mo3143a(c6001b);
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21298c < 0) {
                mo3137b();
            }
            return this.f21298c;
        }

        /* renamed from: a */
        public C6098a m3336a(int i) {
            this.f21295a = true;
            this.f21293a = i;
            return this;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6098a mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                if (m3722a == 0) {
                    return this;
                }
                if (m3722a == 8) {
                    m3336a(c6001b.m3703c());
                } else if (m3722a == 16) {
                    m3334a(c6001b.m3717a());
                } else if (m3722a == 24) {
                    m3331b(c6001b.m3708b());
                } else if (m3722a == 32) {
                    m3329b(c6001b.m3717a());
                } else if (m3722a == 42) {
                    m3335a(c6001b.m3719a());
                } else if (!m3142a(c6001b, m3722a)) {
                    return this;
                }
            }
        }

        /* renamed from: a */
        public C6098a m3335a(String str) {
            Objects.requireNonNull(str);
            if (this.f21294a.isEmpty()) {
                this.f21294a = new ArrayList();
            }
            this.f21294a.add(str);
            return this;
        }

        /* renamed from: a */
        public C6098a m3334a(boolean z) {
            this.f21297b = true;
            this.f21299c = z;
            return this;
        }

        /* renamed from: a */
        public List<String> m3338a() {
            return this.f21294a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3337a()) {
                c6035c.m3540b(1, m3328c());
            }
            if (m3327c()) {
                c6035c.m3560a(2, m3332b());
            }
            if (m3325d()) {
                c6035c.m3570a(3, m3326d());
            }
            if (m3322f()) {
                c6035c.m3560a(4, m3323e());
            }
            for (String str : m3338a()) {
                c6035c.m3562a(5, str);
            }
        }

        /* renamed from: a */
        public boolean m3337a() {
            return this.f21295a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int i = 0;
            int m3541b = m3337a() ? C6035c.m3541b(1, m3328c()) + 0 : 0;
            if (m3327c()) {
                m3541b += C6035c.m3561a(2, m3332b());
            }
            if (m3325d()) {
                m3541b += C6035c.m3571a(3, m3326d());
            }
            if (m3322f()) {
                m3541b += C6035c.m3561a(4, m3323e());
            }
            for (String str : m3338a()) {
                i += C6035c.m3551a(str);
            }
            int size = m3541b + i + (m3338a().size() * 1);
            this.f21298c = size;
            return size;
        }

        /* renamed from: b */
        public C6098a m3331b(int i) {
            this.f21300d = true;
            this.f21296b = i;
            return this;
        }

        /* renamed from: b */
        public C6098a m3329b(boolean z) {
            this.f21301e = true;
            this.f21302f = z;
            return this;
        }

        /* renamed from: b */
        public boolean m3332b() {
            return this.f21299c;
        }

        /* renamed from: c */
        public int m3328c() {
            return this.f21293a;
        }

        /* renamed from: c */
        public boolean m3327c() {
            return this.f21297b;
        }

        /* renamed from: d */
        public int m3326d() {
            return this.f21296b;
        }

        /* renamed from: d */
        public boolean m3325d() {
            return this.f21300d;
        }

        /* renamed from: e */
        public int m3324e() {
            return this.f21294a.size();
        }

        /* renamed from: e */
        public boolean m3323e() {
            return this.f21302f;
        }

        /* renamed from: f */
        public boolean m3322f() {
            return this.f21301e;
        }
    }
}
