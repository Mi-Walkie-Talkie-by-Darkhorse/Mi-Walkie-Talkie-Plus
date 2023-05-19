package com.xiaomi.push;

import java.util.Objects;

/* renamed from: com.xiaomi.push.dw */
/* loaded from: classes2.dex */
public final class C6099dw {

    /* renamed from: com.xiaomi.push.dw$a */
    /* loaded from: classes2.dex */
    public static final class C6100a extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21306a;

        /* renamed from: b */
        private boolean f21309b;

        /* renamed from: c */
        private boolean f21312c;

        /* renamed from: d */
        private boolean f21315d;

        /* renamed from: e */
        private boolean f21318e;

        /* renamed from: f */
        private boolean f21320f;

        /* renamed from: g */
        private boolean f21321g;

        /* renamed from: h */
        private boolean f21322h;

        /* renamed from: i */
        private boolean f21323i;

        /* renamed from: j */
        private boolean f21324j;

        /* renamed from: k */
        private boolean f21325k;

        /* renamed from: a */
        private int f21303a = 0;

        /* renamed from: a */
        private long f21304a = 0;

        /* renamed from: a */
        private String f21305a = "";

        /* renamed from: b */
        private String f21308b = "";

        /* renamed from: c */
        private String f21311c = "";

        /* renamed from: d */
        private String f21314d = "";

        /* renamed from: e */
        private String f21317e = "";

        /* renamed from: b */
        private int f21307b = 1;

        /* renamed from: c */
        private int f21310c = 0;

        /* renamed from: d */
        private int f21313d = 0;

        /* renamed from: f */
        private String f21319f = "";

        /* renamed from: e */
        private int f21316e = -1;

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21316e < 0) {
                mo3137b();
            }
            return this.f21316e;
        }

        /* renamed from: a */
        public long m3321a() {
            return this.f21304a;
        }

        /* renamed from: a */
        public C6100a m3320a() {
            this.f21320f = false;
            this.f21314d = "";
            return this;
        }

        /* renamed from: a */
        public C6100a m3317a(int i) {
            this.f21306a = true;
            this.f21303a = i;
            return this;
        }

        /* renamed from: a */
        public C6100a m3316a(long j) {
            this.f21309b = true;
            this.f21304a = j;
            return this;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6100a mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                switch (m3722a) {
                    case 0:
                        return this;
                    case 8:
                        m3317a(c6001b.m3708b());
                        break;
                    case 16:
                        m3316a(c6001b.m3707b());
                        break;
                    case 26:
                        m3315a(c6001b.m3719a());
                        break;
                    case 34:
                        m3311b(c6001b.m3719a());
                        break;
                    case 42:
                        m3306c(c6001b.m3719a());
                        break;
                    case 50:
                        m3301d(c6001b.m3719a());
                        break;
                    case 58:
                        m3297e(c6001b.m3719a());
                        break;
                    case 64:
                        m3312b(c6001b.m3708b());
                        break;
                    case 72:
                        m3307c(c6001b.m3708b());
                        break;
                    case 80:
                        m3302d(c6001b.m3708b());
                        break;
                    case 90:
                        m3293f(c6001b.m3719a());
                        break;
                    default:
                        if (m3142a(c6001b, m3722a)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        /* renamed from: a */
        public C6100a m3315a(String str) {
            this.f21312c = true;
            this.f21305a = str;
            return this;
        }

        /* renamed from: a */
        public String m3319a() {
            return this.f21305a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3318a()) {
                c6035c.m3570a(1, m3310c());
            }
            if (m3313b()) {
                c6035c.m3538b(2, m3321a());
            }
            if (m3308c()) {
                c6035c.m3562a(3, m3319a());
            }
            if (m3303d()) {
                c6035c.m3562a(4, m3314b());
            }
            if (m3298e()) {
                c6035c.m3562a(5, m3309c());
            }
            if (m3294f()) {
                c6035c.m3562a(6, m3304d());
            }
            if (m3292g()) {
                c6035c.m3562a(7, m3299e());
            }
            if (m3291h()) {
                c6035c.m3570a(8, m3305d());
            }
            if (m3290i()) {
                c6035c.m3570a(9, m3300e());
            }
            if (m3289j()) {
                c6035c.m3570a(10, m3296f());
            }
            if (m3288k()) {
                c6035c.m3562a(11, m3295f());
            }
        }

        /* renamed from: a */
        public boolean m3318a() {
            return this.f21306a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3571a = m3318a() ? 0 + C6035c.m3571a(1, m3310c()) : 0;
            if (m3313b()) {
                m3571a += C6035c.m3539b(2, m3321a());
            }
            if (m3308c()) {
                m3571a += C6035c.m3563a(3, m3319a());
            }
            if (m3303d()) {
                m3571a += C6035c.m3563a(4, m3314b());
            }
            if (m3298e()) {
                m3571a += C6035c.m3563a(5, m3309c());
            }
            if (m3294f()) {
                m3571a += C6035c.m3563a(6, m3304d());
            }
            if (m3292g()) {
                m3571a += C6035c.m3563a(7, m3299e());
            }
            if (m3291h()) {
                m3571a += C6035c.m3571a(8, m3305d());
            }
            if (m3290i()) {
                m3571a += C6035c.m3571a(9, m3300e());
            }
            if (m3289j()) {
                m3571a += C6035c.m3571a(10, m3296f());
            }
            if (m3288k()) {
                m3571a += C6035c.m3563a(11, m3295f());
            }
            this.f21316e = m3571a;
            return m3571a;
        }

        /* renamed from: b */
        public C6100a m3312b(int i) {
            this.f21322h = true;
            this.f21307b = i;
            return this;
        }

        /* renamed from: b */
        public C6100a m3311b(String str) {
            this.f21315d = true;
            this.f21308b = str;
            return this;
        }

        /* renamed from: b */
        public String m3314b() {
            return this.f21308b;
        }

        /* renamed from: b */
        public boolean m3313b() {
            return this.f21309b;
        }

        /* renamed from: c */
        public int m3310c() {
            return this.f21303a;
        }

        /* renamed from: c */
        public C6100a m3307c(int i) {
            this.f21323i = true;
            this.f21310c = i;
            return this;
        }

        /* renamed from: c */
        public C6100a m3306c(String str) {
            this.f21318e = true;
            this.f21311c = str;
            return this;
        }

        /* renamed from: c */
        public String m3309c() {
            return this.f21311c;
        }

        /* renamed from: c */
        public boolean m3308c() {
            return this.f21312c;
        }

        /* renamed from: d */
        public int m3305d() {
            return this.f21307b;
        }

        /* renamed from: d */
        public C6100a m3302d(int i) {
            this.f21324j = true;
            this.f21313d = i;
            return this;
        }

        /* renamed from: d */
        public C6100a m3301d(String str) {
            this.f21320f = true;
            this.f21314d = str;
            return this;
        }

        /* renamed from: d */
        public String m3304d() {
            return this.f21314d;
        }

        /* renamed from: d */
        public boolean m3303d() {
            return this.f21315d;
        }

        /* renamed from: e */
        public int m3300e() {
            return this.f21310c;
        }

        /* renamed from: e */
        public C6100a m3297e(String str) {
            this.f21321g = true;
            this.f21317e = str;
            return this;
        }

        /* renamed from: e */
        public String m3299e() {
            return this.f21317e;
        }

        /* renamed from: e */
        public boolean m3298e() {
            return this.f21318e;
        }

        /* renamed from: f */
        public int m3296f() {
            return this.f21313d;
        }

        /* renamed from: f */
        public C6100a m3293f(String str) {
            this.f21325k = true;
            this.f21319f = str;
            return this;
        }

        /* renamed from: f */
        public String m3295f() {
            return this.f21319f;
        }

        /* renamed from: f */
        public boolean m3294f() {
            return this.f21320f;
        }

        /* renamed from: g */
        public boolean m3292g() {
            return this.f21321g;
        }

        /* renamed from: h */
        public boolean m3291h() {
            return this.f21322h;
        }

        /* renamed from: i */
        public boolean m3290i() {
            return this.f21323i;
        }

        /* renamed from: j */
        public boolean m3289j() {
            return this.f21324j;
        }

        /* renamed from: k */
        public boolean m3288k() {
            return this.f21325k;
        }
    }

    /* renamed from: com.xiaomi.push.dw$b */
    /* loaded from: classes2.dex */
    public static final class C6101b extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21327a;

        /* renamed from: c */
        private boolean f21331c;

        /* renamed from: d */
        private boolean f21333d;

        /* renamed from: e */
        private boolean f21334e;

        /* renamed from: b */
        private boolean f21329b = false;

        /* renamed from: a */
        private int f21326a = 0;

        /* renamed from: b */
        private int f21328b = 0;

        /* renamed from: c */
        private int f21330c = 0;

        /* renamed from: d */
        private int f21332d = -1;

        /* renamed from: a */
        public static C6101b m3284a(byte[] bArr) {
            return (C6101b) new C6101b().m3140a(bArr);
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21332d < 0) {
                mo3137b();
            }
            return this.f21332d;
        }

        /* renamed from: a */
        public C6101b m3286a(int i) {
            this.f21331c = true;
            this.f21326a = i;
            return this;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6101b mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                if (m3722a == 0) {
                    return this;
                }
                if (m3722a == 8) {
                    m3285a(c6001b.m3717a());
                } else if (m3722a == 24) {
                    m3286a(c6001b.m3708b());
                } else if (m3722a == 32) {
                    m3282b(c6001b.m3708b());
                } else if (m3722a == 40) {
                    m3279c(c6001b.m3708b());
                } else if (!m3142a(c6001b, m3722a)) {
                    return this;
                }
            }
        }

        /* renamed from: a */
        public C6101b m3285a(boolean z) {
            this.f21327a = true;
            this.f21329b = z;
            return this;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3283b()) {
                c6035c.m3560a(1, m3287a());
            }
            if (m3280c()) {
                c6035c.m3570a(3, m3281c());
            }
            if (m3277d()) {
                c6035c.m3570a(4, m3278d());
            }
            if (m3275e()) {
                c6035c.m3570a(5, m3276e());
            }
        }

        /* renamed from: a */
        public boolean m3287a() {
            return this.f21329b;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3561a = m3283b() ? 0 + C6035c.m3561a(1, m3287a()) : 0;
            if (m3280c()) {
                m3561a += C6035c.m3571a(3, m3281c());
            }
            if (m3277d()) {
                m3561a += C6035c.m3571a(4, m3278d());
            }
            if (m3275e()) {
                m3561a += C6035c.m3571a(5, m3276e());
            }
            this.f21332d = m3561a;
            return m3561a;
        }

        /* renamed from: b */
        public C6101b m3282b(int i) {
            this.f21333d = true;
            this.f21328b = i;
            return this;
        }

        /* renamed from: b */
        public boolean m3283b() {
            return this.f21327a;
        }

        /* renamed from: c */
        public int m3281c() {
            return this.f21326a;
        }

        /* renamed from: c */
        public C6101b m3279c(int i) {
            this.f21334e = true;
            this.f21330c = i;
            return this;
        }

        /* renamed from: c */
        public boolean m3280c() {
            return this.f21331c;
        }

        /* renamed from: d */
        public int m3278d() {
            return this.f21328b;
        }

        /* renamed from: d */
        public boolean m3277d() {
            return this.f21333d;
        }

        /* renamed from: e */
        public int m3276e() {
            return this.f21330c;
        }

        /* renamed from: e */
        public boolean m3275e() {
            return this.f21334e;
        }
    }

    /* renamed from: com.xiaomi.push.dw$c */
    /* loaded from: classes2.dex */
    public static final class C6102c extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21337a;

        /* renamed from: b */
        private boolean f21339b;

        /* renamed from: c */
        private boolean f21341c;

        /* renamed from: d */
        private boolean f21343d;

        /* renamed from: e */
        private boolean f21345e;

        /* renamed from: f */
        private boolean f21347f;

        /* renamed from: a */
        private String f21336a = "";

        /* renamed from: b */
        private String f21338b = "";

        /* renamed from: c */
        private String f21340c = "";

        /* renamed from: d */
        private String f21342d = "";

        /* renamed from: e */
        private String f21344e = "";

        /* renamed from: f */
        private String f21346f = "";

        /* renamed from: a */
        private int f21335a = -1;

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21335a < 0) {
                mo3137b();
            }
            return this.f21335a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6102c mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                if (m3722a == 0) {
                    return this;
                }
                if (m3722a == 10) {
                    m3272a(c6001b.m3719a());
                } else if (m3722a == 18) {
                    m3269b(c6001b.m3719a());
                } else if (m3722a == 26) {
                    m3266c(c6001b.m3719a());
                } else if (m3722a == 34) {
                    m3263d(c6001b.m3719a());
                } else if (m3722a == 42) {
                    m3260e(c6001b.m3719a());
                } else if (m3722a == 50) {
                    m3257f(c6001b.m3719a());
                } else if (!m3142a(c6001b, m3722a)) {
                    return this;
                }
            }
        }

        /* renamed from: a */
        public C6102c m3272a(String str) {
            this.f21337a = true;
            this.f21336a = str;
            return this;
        }

        /* renamed from: a */
        public String m3274a() {
            return this.f21336a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3273a()) {
                c6035c.m3562a(1, m3274a());
            }
            if (m3270b()) {
                c6035c.m3562a(2, m3271b());
            }
            if (m3267c()) {
                c6035c.m3562a(3, m3268c());
            }
            if (m3264d()) {
                c6035c.m3562a(4, m3265d());
            }
            if (m3261e()) {
                c6035c.m3562a(5, m3262e());
            }
            if (m3258f()) {
                c6035c.m3562a(6, m3259f());
            }
        }

        /* renamed from: a */
        public boolean m3273a() {
            return this.f21337a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3563a = m3273a() ? 0 + C6035c.m3563a(1, m3274a()) : 0;
            if (m3270b()) {
                m3563a += C6035c.m3563a(2, m3271b());
            }
            if (m3267c()) {
                m3563a += C6035c.m3563a(3, m3268c());
            }
            if (m3264d()) {
                m3563a += C6035c.m3563a(4, m3265d());
            }
            if (m3261e()) {
                m3563a += C6035c.m3563a(5, m3262e());
            }
            if (m3258f()) {
                m3563a += C6035c.m3563a(6, m3259f());
            }
            this.f21335a = m3563a;
            return m3563a;
        }

        /* renamed from: b */
        public C6102c m3269b(String str) {
            this.f21339b = true;
            this.f21338b = str;
            return this;
        }

        /* renamed from: b */
        public String m3271b() {
            return this.f21338b;
        }

        /* renamed from: b */
        public boolean m3270b() {
            return this.f21339b;
        }

        /* renamed from: c */
        public C6102c m3266c(String str) {
            this.f21341c = true;
            this.f21340c = str;
            return this;
        }

        /* renamed from: c */
        public String m3268c() {
            return this.f21340c;
        }

        /* renamed from: c */
        public boolean m3267c() {
            return this.f21341c;
        }

        /* renamed from: d */
        public C6102c m3263d(String str) {
            this.f21343d = true;
            this.f21342d = str;
            return this;
        }

        /* renamed from: d */
        public String m3265d() {
            return this.f21342d;
        }

        /* renamed from: d */
        public boolean m3264d() {
            return this.f21343d;
        }

        /* renamed from: e */
        public C6102c m3260e(String str) {
            this.f21345e = true;
            this.f21344e = str;
            return this;
        }

        /* renamed from: e */
        public String m3262e() {
            return this.f21344e;
        }

        /* renamed from: e */
        public boolean m3261e() {
            return this.f21345e;
        }

        /* renamed from: f */
        public C6102c m3257f(String str) {
            this.f21347f = true;
            this.f21346f = str;
            return this;
        }

        /* renamed from: f */
        public String m3259f() {
            return this.f21346f;
        }

        /* renamed from: f */
        public boolean m3258f() {
            return this.f21347f;
        }
    }

    /* renamed from: com.xiaomi.push.dw$d */
    /* loaded from: classes2.dex */
    public static final class C6103d extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21350a;

        /* renamed from: c */
        private boolean f21354c;

        /* renamed from: d */
        private boolean f21355d;

        /* renamed from: e */
        private boolean f21356e;

        /* renamed from: b */
        private boolean f21352b = false;

        /* renamed from: a */
        private String f21349a = "";

        /* renamed from: b */
        private String f21351b = "";

        /* renamed from: c */
        private String f21353c = "";

        /* renamed from: a */
        private int f21348a = -1;

        /* renamed from: a */
        public static C6103d m3252a(byte[] bArr) {
            return (C6103d) new C6103d().m3140a(bArr);
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21348a < 0) {
                mo3137b();
            }
            return this.f21348a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6103d mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                if (m3722a == 0) {
                    return this;
                }
                if (m3722a == 8) {
                    m3253a(c6001b.m3717a());
                } else if (m3722a == 18) {
                    m3254a(c6001b.m3719a());
                } else if (m3722a == 26) {
                    m3249b(c6001b.m3719a());
                } else if (m3722a == 34) {
                    m3246c(c6001b.m3719a());
                } else if (!m3142a(c6001b, m3722a)) {
                    return this;
                }
            }
        }

        /* renamed from: a */
        public C6103d m3254a(String str) {
            this.f21354c = true;
            this.f21349a = str;
            return this;
        }

        /* renamed from: a */
        public C6103d m3253a(boolean z) {
            this.f21350a = true;
            this.f21352b = z;
            return this;
        }

        /* renamed from: a */
        public String m3256a() {
            return this.f21349a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3250b()) {
                c6035c.m3560a(1, m3255a());
            }
            if (m3247c()) {
                c6035c.m3562a(2, m3256a());
            }
            if (m3245d()) {
                c6035c.m3562a(3, m3251b());
            }
            if (m3244e()) {
                c6035c.m3562a(4, m3248c());
            }
        }

        /* renamed from: a */
        public boolean m3255a() {
            return this.f21352b;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3561a = m3250b() ? 0 + C6035c.m3561a(1, m3255a()) : 0;
            if (m3247c()) {
                m3561a += C6035c.m3563a(2, m3256a());
            }
            if (m3245d()) {
                m3561a += C6035c.m3563a(3, m3251b());
            }
            if (m3244e()) {
                m3561a += C6035c.m3563a(4, m3248c());
            }
            this.f21348a = m3561a;
            return m3561a;
        }

        /* renamed from: b */
        public C6103d m3249b(String str) {
            this.f21355d = true;
            this.f21351b = str;
            return this;
        }

        /* renamed from: b */
        public String m3251b() {
            return this.f21351b;
        }

        /* renamed from: b */
        public boolean m3250b() {
            return this.f21350a;
        }

        /* renamed from: c */
        public C6103d m3246c(String str) {
            this.f21356e = true;
            this.f21353c = str;
            return this;
        }

        /* renamed from: c */
        public String m3248c() {
            return this.f21353c;
        }

        /* renamed from: c */
        public boolean m3247c() {
            return this.f21354c;
        }

        /* renamed from: d */
        public boolean m3245d() {
            return this.f21355d;
        }

        /* renamed from: e */
        public boolean m3244e() {
            return this.f21356e;
        }
    }

    /* renamed from: com.xiaomi.push.dw$e */
    /* loaded from: classes2.dex */
    public static final class C6104e extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21360a;

        /* renamed from: b */
        private boolean f21363b;

        /* renamed from: c */
        private boolean f21366c;

        /* renamed from: d */
        private boolean f21369d;

        /* renamed from: e */
        private boolean f21371e;

        /* renamed from: f */
        private boolean f21373f;

        /* renamed from: g */
        private boolean f21374g;

        /* renamed from: h */
        private boolean f21375h;

        /* renamed from: i */
        private boolean f21376i;

        /* renamed from: j */
        private boolean f21377j;

        /* renamed from: a */
        private int f21357a = 0;

        /* renamed from: a */
        private String f21359a = "";

        /* renamed from: b */
        private String f21362b = "";

        /* renamed from: c */
        private String f21365c = "";

        /* renamed from: b */
        private int f21361b = 0;

        /* renamed from: d */
        private String f21368d = "";

        /* renamed from: e */
        private String f21370e = "";

        /* renamed from: f */
        private String f21372f = "";

        /* renamed from: a */
        private C6101b f21358a = null;

        /* renamed from: c */
        private int f21364c = 0;

        /* renamed from: d */
        private int f21367d = -1;

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21367d < 0) {
                mo3137b();
            }
            return this.f21367d;
        }

        /* renamed from: a */
        public C6101b m3243a() {
            return this.f21358a;
        }

        /* renamed from: a */
        public C6104e m3240a(int i) {
            this.f21360a = true;
            this.f21357a = i;
            return this;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6104e mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                switch (m3722a) {
                    case 0:
                        return this;
                    case 8:
                        m3240a(c6001b.m3703c());
                        break;
                    case 18:
                        m3238a(c6001b.m3719a());
                        break;
                    case 26:
                        m3234b(c6001b.m3719a());
                        break;
                    case 34:
                        m3229c(c6001b.m3719a());
                        break;
                    case 40:
                        m3235b(c6001b.m3708b());
                        break;
                    case 50:
                        m3225d(c6001b.m3719a());
                        break;
                    case 58:
                        m3221e(c6001b.m3719a());
                        break;
                    case 66:
                        m3218f(c6001b.m3719a());
                        break;
                    case 74:
                        C6101b c6101b = new C6101b();
                        c6001b.m3712a(c6101b);
                        m3239a(c6101b);
                        break;
                    case 80:
                        m3230c(c6001b.m3708b());
                        break;
                    default:
                        if (m3142a(c6001b, m3722a)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        /* renamed from: a */
        public C6104e m3239a(C6101b c6101b) {
            Objects.requireNonNull(c6101b);
            this.f21376i = true;
            this.f21358a = c6101b;
            return this;
        }

        /* renamed from: a */
        public C6104e m3238a(String str) {
            this.f21363b = true;
            this.f21359a = str;
            return this;
        }

        /* renamed from: a */
        public String m3242a() {
            return this.f21359a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3241a()) {
                c6035c.m3540b(1, m3233c());
            }
            if (m3236b()) {
                c6035c.m3562a(2, m3242a());
            }
            if (m3231c()) {
                c6035c.m3562a(3, m3237b());
            }
            if (m3226d()) {
                c6035c.m3562a(4, m3232c());
            }
            if (m3222e()) {
                c6035c.m3570a(5, m3228d());
            }
            if (m3219f()) {
                c6035c.m3562a(6, m3227d());
            }
            if (m3217g()) {
                c6035c.m3562a(7, m3223e());
            }
            if (m3216h()) {
                c6035c.m3562a(8, m3220f());
            }
            if (m3215i()) {
                c6035c.m3564a(9, (AbstractC6114e) m3243a());
            }
            if (m3214j()) {
                c6035c.m3570a(10, m3224e());
            }
        }

        /* renamed from: a */
        public boolean m3241a() {
            return this.f21360a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3541b = m3241a() ? 0 + C6035c.m3541b(1, m3233c()) : 0;
            if (m3236b()) {
                m3541b += C6035c.m3563a(2, m3242a());
            }
            if (m3231c()) {
                m3541b += C6035c.m3563a(3, m3237b());
            }
            if (m3226d()) {
                m3541b += C6035c.m3563a(4, m3232c());
            }
            if (m3222e()) {
                m3541b += C6035c.m3571a(5, m3228d());
            }
            if (m3219f()) {
                m3541b += C6035c.m3563a(6, m3227d());
            }
            if (m3217g()) {
                m3541b += C6035c.m3563a(7, m3223e());
            }
            if (m3216h()) {
                m3541b += C6035c.m3563a(8, m3220f());
            }
            if (m3215i()) {
                m3541b += C6035c.m3565a(9, (AbstractC6114e) m3243a());
            }
            if (m3214j()) {
                m3541b += C6035c.m3571a(10, m3224e());
            }
            this.f21367d = m3541b;
            return m3541b;
        }

        /* renamed from: b */
        public C6104e m3235b(int i) {
            this.f21371e = true;
            this.f21361b = i;
            return this;
        }

        /* renamed from: b */
        public C6104e m3234b(String str) {
            this.f21366c = true;
            this.f21362b = str;
            return this;
        }

        /* renamed from: b */
        public String m3237b() {
            return this.f21362b;
        }

        /* renamed from: b */
        public boolean m3236b() {
            return this.f21363b;
        }

        /* renamed from: c */
        public int m3233c() {
            return this.f21357a;
        }

        /* renamed from: c */
        public C6104e m3230c(int i) {
            this.f21377j = true;
            this.f21364c = i;
            return this;
        }

        /* renamed from: c */
        public C6104e m3229c(String str) {
            this.f21369d = true;
            this.f21365c = str;
            return this;
        }

        /* renamed from: c */
        public String m3232c() {
            return this.f21365c;
        }

        /* renamed from: c */
        public boolean m3231c() {
            return this.f21366c;
        }

        /* renamed from: d */
        public int m3228d() {
            return this.f21361b;
        }

        /* renamed from: d */
        public C6104e m3225d(String str) {
            this.f21373f = true;
            this.f21368d = str;
            return this;
        }

        /* renamed from: d */
        public String m3227d() {
            return this.f21368d;
        }

        /* renamed from: d */
        public boolean m3226d() {
            return this.f21369d;
        }

        /* renamed from: e */
        public int m3224e() {
            return this.f21364c;
        }

        /* renamed from: e */
        public C6104e m3221e(String str) {
            this.f21374g = true;
            this.f21370e = str;
            return this;
        }

        /* renamed from: e */
        public String m3223e() {
            return this.f21370e;
        }

        /* renamed from: e */
        public boolean m3222e() {
            return this.f21371e;
        }

        /* renamed from: f */
        public C6104e m3218f(String str) {
            this.f21375h = true;
            this.f21372f = str;
            return this;
        }

        /* renamed from: f */
        public String m3220f() {
            return this.f21372f;
        }

        /* renamed from: f */
        public boolean m3219f() {
            return this.f21373f;
        }

        /* renamed from: g */
        public boolean m3217g() {
            return this.f21374g;
        }

        /* renamed from: h */
        public boolean m3216h() {
            return this.f21375h;
        }

        /* renamed from: i */
        public boolean m3215i() {
            return this.f21376i;
        }

        /* renamed from: j */
        public boolean m3214j() {
            return this.f21377j;
        }
    }

    /* renamed from: com.xiaomi.push.dw$f */
    /* loaded from: classes2.dex */
    public static final class C6105f extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21381a;

        /* renamed from: b */
        private boolean f21383b;

        /* renamed from: c */
        private boolean f21384c;

        /* renamed from: a */
        private String f21380a = "";

        /* renamed from: b */
        private String f21382b = "";

        /* renamed from: a */
        private C6101b f21379a = null;

        /* renamed from: a */
        private int f21378a = -1;

        /* renamed from: a */
        public static C6105f m3208a(byte[] bArr) {
            return (C6105f) new C6105f().m3140a(bArr);
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21378a < 0) {
                mo3137b();
            }
            return this.f21378a;
        }

        /* renamed from: a */
        public C6101b m3213a() {
            return this.f21379a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6105f mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                if (m3722a == 0) {
                    return this;
                }
                if (m3722a == 10) {
                    m3209a(c6001b.m3719a());
                } else if (m3722a == 18) {
                    m3205b(c6001b.m3719a());
                } else if (m3722a == 26) {
                    C6101b c6101b = new C6101b();
                    c6001b.m3712a(c6101b);
                    m3210a(c6101b);
                } else if (!m3142a(c6001b, m3722a)) {
                    return this;
                }
            }
        }

        /* renamed from: a */
        public C6105f m3210a(C6101b c6101b) {
            Objects.requireNonNull(c6101b);
            this.f21384c = true;
            this.f21379a = c6101b;
            return this;
        }

        /* renamed from: a */
        public C6105f m3209a(String str) {
            this.f21381a = true;
            this.f21380a = str;
            return this;
        }

        /* renamed from: a */
        public String m3212a() {
            return this.f21380a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3211a()) {
                c6035c.m3562a(1, m3212a());
            }
            if (m3206b()) {
                c6035c.m3562a(2, m3207b());
            }
            if (m3204c()) {
                c6035c.m3564a(3, (AbstractC6114e) m3213a());
            }
        }

        /* renamed from: a */
        public boolean m3211a() {
            return this.f21381a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3563a = m3211a() ? 0 + C6035c.m3563a(1, m3212a()) : 0;
            if (m3206b()) {
                m3563a += C6035c.m3563a(2, m3207b());
            }
            if (m3204c()) {
                m3563a += C6035c.m3565a(3, (AbstractC6114e) m3213a());
            }
            this.f21378a = m3563a;
            return m3563a;
        }

        /* renamed from: b */
        public C6105f m3205b(String str) {
            this.f21383b = true;
            this.f21382b = str;
            return this;
        }

        /* renamed from: b */
        public String m3207b() {
            return this.f21382b;
        }

        /* renamed from: b */
        public boolean m3206b() {
            return this.f21383b;
        }

        /* renamed from: c */
        public boolean m3204c() {
            return this.f21384c;
        }
    }

    /* renamed from: com.xiaomi.push.dw$g */
    /* loaded from: classes2.dex */
    public static final class C6106g extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21387a;

        /* renamed from: b */
        private boolean f21389b;

        /* renamed from: c */
        private boolean f21391c;

        /* renamed from: a */
        private String f21386a = "";

        /* renamed from: b */
        private String f21388b = "";

        /* renamed from: c */
        private String f21390c = "";

        /* renamed from: a */
        private int f21385a = -1;

        /* renamed from: a */
        public static C6106g m3200a(byte[] bArr) {
            return (C6106g) new C6106g().m3140a(bArr);
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21385a < 0) {
                mo3137b();
            }
            return this.f21385a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6106g mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                if (m3722a == 0) {
                    return this;
                }
                if (m3722a == 10) {
                    m3201a(c6001b.m3719a());
                } else if (m3722a == 18) {
                    m3197b(c6001b.m3719a());
                } else if (m3722a == 26) {
                    m3194c(c6001b.m3719a());
                } else if (!m3142a(c6001b, m3722a)) {
                    return this;
                }
            }
        }

        /* renamed from: a */
        public C6106g m3201a(String str) {
            this.f21387a = true;
            this.f21386a = str;
            return this;
        }

        /* renamed from: a */
        public String m3203a() {
            return this.f21386a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3202a()) {
                c6035c.m3562a(1, m3203a());
            }
            if (m3198b()) {
                c6035c.m3562a(2, m3199b());
            }
            if (m3195c()) {
                c6035c.m3562a(3, m3196c());
            }
        }

        /* renamed from: a */
        public boolean m3202a() {
            return this.f21387a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3563a = m3202a() ? 0 + C6035c.m3563a(1, m3203a()) : 0;
            if (m3198b()) {
                m3563a += C6035c.m3563a(2, m3199b());
            }
            if (m3195c()) {
                m3563a += C6035c.m3563a(3, m3196c());
            }
            this.f21385a = m3563a;
            return m3563a;
        }

        /* renamed from: b */
        public C6106g m3197b(String str) {
            this.f21389b = true;
            this.f21388b = str;
            return this;
        }

        /* renamed from: b */
        public String m3199b() {
            return this.f21388b;
        }

        /* renamed from: b */
        public boolean m3198b() {
            return this.f21389b;
        }

        /* renamed from: c */
        public C6106g m3194c(String str) {
            this.f21391c = true;
            this.f21390c = str;
            return this;
        }

        /* renamed from: c */
        public String m3196c() {
            return this.f21390c;
        }

        /* renamed from: c */
        public boolean m3195c() {
            return this.f21391c;
        }
    }

    /* renamed from: com.xiaomi.push.dw$h */
    /* loaded from: classes2.dex */
    public static final class C6107h extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21394a;

        /* renamed from: b */
        private boolean f21396b;

        /* renamed from: a */
        private int f21392a = 0;

        /* renamed from: a */
        private String f21393a = "";

        /* renamed from: b */
        private int f21395b = -1;

        /* renamed from: a */
        public static C6107h m3189a(byte[] bArr) {
            return (C6107h) new C6107h().m3140a(bArr);
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21395b < 0) {
                mo3137b();
            }
            return this.f21395b;
        }

        /* renamed from: a */
        public C6107h m3191a(int i) {
            this.f21394a = true;
            this.f21392a = i;
            return this;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6107h mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                if (m3722a == 0) {
                    return this;
                }
                if (m3722a == 8) {
                    m3191a(c6001b.m3708b());
                } else if (m3722a == 18) {
                    m3190a(c6001b.m3719a());
                } else if (!m3142a(c6001b, m3722a)) {
                    return this;
                }
            }
        }

        /* renamed from: a */
        public C6107h m3190a(String str) {
            this.f21396b = true;
            this.f21393a = str;
            return this;
        }

        /* renamed from: a */
        public String m3193a() {
            return this.f21393a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3192a()) {
                c6035c.m3570a(1, m3187c());
            }
            if (m3188b()) {
                c6035c.m3562a(2, m3193a());
            }
        }

        /* renamed from: a */
        public boolean m3192a() {
            return this.f21394a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3571a = m3192a() ? 0 + C6035c.m3571a(1, m3187c()) : 0;
            if (m3188b()) {
                m3571a += C6035c.m3563a(2, m3193a());
            }
            this.f21395b = m3571a;
            return m3571a;
        }

        /* renamed from: b */
        public boolean m3188b() {
            return this.f21396b;
        }

        /* renamed from: c */
        public int m3187c() {
            return this.f21392a;
        }
    }

    /* renamed from: com.xiaomi.push.dw$i */
    /* loaded from: classes2.dex */
    public static final class C6108i extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21399a;

        /* renamed from: a */
        private C5967a f21398a = C5967a.f20985a;

        /* renamed from: a */
        private int f21397a = -1;

        /* renamed from: a */
        public static C6108i m3183a(byte[] bArr) {
            return (C6108i) new C6108i().m3140a(bArr);
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21397a < 0) {
                mo3137b();
            }
            return this.f21397a;
        }

        /* renamed from: a */
        public C5967a m3186a() {
            return this.f21398a;
        }

        /* renamed from: a */
        public C6108i m3184a(C5967a c5967a) {
            this.f21399a = true;
            this.f21398a = c5967a;
            return this;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6108i mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                if (m3722a == 0) {
                    return this;
                }
                if (m3722a == 10) {
                    m3184a(c6001b.m3720a());
                } else if (!m3142a(c6001b, m3722a)) {
                    return this;
                }
            }
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3185a()) {
                c6035c.m3566a(1, m3186a());
            }
        }

        /* renamed from: a */
        public boolean m3185a() {
            return this.f21399a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3567a = m3185a() ? 0 + C6035c.m3567a(1, m3186a()) : 0;
            this.f21397a = m3567a;
            return m3567a;
        }
    }

    /* renamed from: com.xiaomi.push.dw$j */
    /* loaded from: classes2.dex */
    public static final class C6109j extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21403a;

        /* renamed from: b */
        private boolean f21404b;

        /* renamed from: a */
        private C5967a f21401a = C5967a.f20985a;

        /* renamed from: a */
        private C6101b f21402a = null;

        /* renamed from: a */
        private int f21400a = -1;

        /* renamed from: a */
        public static C6109j m3177a(byte[] bArr) {
            return (C6109j) new C6109j().m3140a(bArr);
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21400a < 0) {
                mo3137b();
            }
            return this.f21400a;
        }

        /* renamed from: a */
        public C5967a m3182a() {
            return this.f21401a;
        }

        /* renamed from: a */
        public C6101b m3181a() {
            return this.f21402a;
        }

        /* renamed from: a */
        public C6109j m3179a(C5967a c5967a) {
            this.f21403a = true;
            this.f21401a = c5967a;
            return this;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6109j mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                if (m3722a == 0) {
                    return this;
                }
                if (m3722a == 10) {
                    m3179a(c6001b.m3720a());
                } else if (m3722a == 18) {
                    C6101b c6101b = new C6101b();
                    c6001b.m3712a(c6101b);
                    m3178a(c6101b);
                } else if (!m3142a(c6001b, m3722a)) {
                    return this;
                }
            }
        }

        /* renamed from: a */
        public C6109j m3178a(C6101b c6101b) {
            Objects.requireNonNull(c6101b);
            this.f21404b = true;
            this.f21402a = c6101b;
            return this;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3180a()) {
                c6035c.m3566a(1, m3182a());
            }
            if (m3176b()) {
                c6035c.m3564a(2, (AbstractC6114e) m3181a());
            }
        }

        /* renamed from: a */
        public boolean m3180a() {
            return this.f21403a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3567a = m3180a() ? 0 + C6035c.m3567a(1, m3182a()) : 0;
            if (m3176b()) {
                m3567a += C6035c.m3565a(2, (AbstractC6114e) m3181a());
            }
            this.f21400a = m3567a;
            return m3567a;
        }

        /* renamed from: b */
        public boolean m3176b() {
            return this.f21404b;
        }
    }

    /* renamed from: com.xiaomi.push.dw$k */
    /* loaded from: classes2.dex */
    public static final class C6110k extends AbstractC6114e {

        /* renamed from: a */
        private boolean f21408a;

        /* renamed from: b */
        private boolean f21412b;

        /* renamed from: c */
        private boolean f21413c;

        /* renamed from: d */
        private boolean f21414d;

        /* renamed from: e */
        private boolean f21415e;

        /* renamed from: g */
        private boolean f21417g;

        /* renamed from: a */
        private String f21407a = "";

        /* renamed from: b */
        private String f21411b = "";

        /* renamed from: a */
        private long f21406a = 0;

        /* renamed from: b */
        private long f21410b = 0;

        /* renamed from: f */
        private boolean f21416f = false;

        /* renamed from: a */
        private int f21405a = 0;

        /* renamed from: b */
        private int f21409b = -1;

        /* renamed from: a */
        public static C6110k m3168a(byte[] bArr) {
            return (C6110k) new C6110k().m3140a(bArr);
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public int mo3145a() {
            if (this.f21409b < 0) {
                mo3137b();
            }
            return this.f21409b;
        }

        /* renamed from: a */
        public long m3175a() {
            return this.f21406a;
        }

        /* renamed from: a */
        public C6110k m3172a(int i) {
            this.f21417g = true;
            this.f21405a = i;
            return this;
        }

        /* renamed from: a */
        public C6110k m3171a(long j) {
            this.f21413c = true;
            this.f21406a = j;
            return this;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public C6110k mo3143a(C6001b c6001b) {
            while (true) {
                int m3722a = c6001b.m3722a();
                if (m3722a == 0) {
                    return this;
                }
                if (m3722a == 10) {
                    m3170a(c6001b.m3719a());
                } else if (m3722a == 18) {
                    m3163b(c6001b.m3719a());
                } else if (m3722a == 24) {
                    m3171a(c6001b.m3721a());
                } else if (m3722a == 32) {
                    m3164b(c6001b.m3721a());
                } else if (m3722a == 40) {
                    m3169a(c6001b.m3717a());
                } else if (m3722a == 48) {
                    m3172a(c6001b.m3708b());
                } else if (!m3142a(c6001b, m3722a)) {
                    return this;
                }
            }
        }

        /* renamed from: a */
        public C6110k m3170a(String str) {
            this.f21408a = true;
            this.f21407a = str;
            return this;
        }

        /* renamed from: a */
        public C6110k m3169a(boolean z) {
            this.f21415e = true;
            this.f21416f = z;
            return this;
        }

        /* renamed from: a */
        public String m3174a() {
            return this.f21407a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: a */
        public void mo3141a(C6035c c6035c) {
            if (m3173a()) {
                c6035c.m3562a(1, m3174a());
            }
            if (m3165b()) {
                c6035c.m3562a(2, m3166b());
            }
            if (m3161c()) {
                c6035c.m3568a(3, m3175a());
            }
            if (m3160d()) {
                c6035c.m3568a(4, m3167b());
            }
            if (m3158f()) {
                c6035c.m3560a(5, m3159e());
            }
            if (m3157g()) {
                c6035c.m3570a(6, m3162c());
            }
        }

        /* renamed from: a */
        public boolean m3173a() {
            return this.f21408a;
        }

        @Override // com.xiaomi.push.AbstractC6114e
        /* renamed from: b */
        public int mo3137b() {
            int m3563a = m3173a() ? 0 + C6035c.m3563a(1, m3174a()) : 0;
            if (m3165b()) {
                m3563a += C6035c.m3563a(2, m3166b());
            }
            if (m3161c()) {
                m3563a += C6035c.m3569a(3, m3175a());
            }
            if (m3160d()) {
                m3563a += C6035c.m3569a(4, m3167b());
            }
            if (m3158f()) {
                m3563a += C6035c.m3561a(5, m3159e());
            }
            if (m3157g()) {
                m3563a += C6035c.m3571a(6, m3162c());
            }
            this.f21409b = m3563a;
            return m3563a;
        }

        /* renamed from: b */
        public long m3167b() {
            return this.f21410b;
        }

        /* renamed from: b */
        public C6110k m3164b(long j) {
            this.f21414d = true;
            this.f21410b = j;
            return this;
        }

        /* renamed from: b */
        public C6110k m3163b(String str) {
            this.f21412b = true;
            this.f21411b = str;
            return this;
        }

        /* renamed from: b */
        public String m3166b() {
            return this.f21411b;
        }

        /* renamed from: b */
        public boolean m3165b() {
            return this.f21412b;
        }

        /* renamed from: c */
        public int m3162c() {
            return this.f21405a;
        }

        /* renamed from: c */
        public boolean m3161c() {
            return this.f21413c;
        }

        /* renamed from: d */
        public boolean m3160d() {
            return this.f21414d;
        }

        /* renamed from: e */
        public boolean m3159e() {
            return this.f21416f;
        }

        /* renamed from: f */
        public boolean m3158f() {
            return this.f21415e;
        }

        /* renamed from: g */
        public boolean m3157g() {
            return this.f21417g;
        }
    }
}
