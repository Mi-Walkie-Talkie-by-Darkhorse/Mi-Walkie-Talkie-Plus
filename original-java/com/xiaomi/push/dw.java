package com.xiaomi.push;

/* loaded from: classes2.dex */
public final class dw {

    /* loaded from: classes2.dex */
    public static final class a extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f231a;

        /* renamed from: b  reason: collision with other field name */
        private boolean f233b;

        /* renamed from: c  reason: collision with other field name */
        private boolean f235c;

        /* renamed from: d  reason: collision with other field name */
        private boolean f237d;

        /* renamed from: e  reason: collision with other field name */
        private boolean f239e;

        /* renamed from: f  reason: collision with other field name */
        private boolean f240f;
        private boolean g;
        private boolean h;
        private boolean i;
        private boolean j;
        private boolean k;

        /* renamed from: a  reason: collision with root package name */
        private int f8863a = 0;

        /* renamed from: a  reason: collision with other field name */
        private long f229a = 0;

        /* renamed from: a  reason: collision with other field name */
        private String f230a = "";

        /* renamed from: b  reason: collision with other field name */
        private String f232b = "";

        /* renamed from: c  reason: collision with other field name */
        private String f234c = "";

        /* renamed from: d  reason: collision with other field name */
        private String f236d = "";

        /* renamed from: e  reason: collision with other field name */
        private String f238e = "";

        /* renamed from: b  reason: collision with root package name */
        private int f8864b = 1;

        /* renamed from: c  reason: collision with root package name */
        private int f8865c = 0;
        private int d = 0;
        private String f = "";
        private int e = -1;

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.e < 0) {
                mo225b();
            }
            return this.e;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public long mo223a() {
            return this.f229a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public a mo223a() {
            this.f240f = false;
            this.f236d = "";
            return this;
        }

        public a a(int i) {
            this.f231a = true;
            this.f8863a = i;
            return this;
        }

        public a a(long j) {
            this.f233b = true;
            this.f229a = j;
            return this;
        }

        @Override // com.xiaomi.push.e
        public a a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                switch (a2) {
                    case 0:
                        return this;
                    case 8:
                        a(bVar.m84b());
                        break;
                    case 16:
                        a(bVar.m85b());
                        break;
                    case 26:
                        a(bVar.m78a());
                        break;
                    case 34:
                        b(bVar.m78a());
                        break;
                    case 42:
                        c(bVar.m78a());
                        break;
                    case 50:
                        d(bVar.m78a());
                        break;
                    case 58:
                        e(bVar.m78a());
                        break;
                    case 64:
                        b(bVar.m84b());
                        break;
                    case 72:
                        c(bVar.m84b());
                        break;
                    case 80:
                        d(bVar.m84b());
                        break;
                    case 90:
                        f(bVar.m78a());
                        break;
                    default:
                        if (a(bVar, a2)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public a a(String str) {
            this.f235c = true;
            this.f230a = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public String mo223a() {
            return this.f230a;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo223a()) {
                cVar.m116a(1, c());
            }
            if (mo225b()) {
                cVar.m130b(2, mo223a());
            }
            if (m179c()) {
                cVar.m120a(3, mo223a());
            }
            if (m181d()) {
                cVar.m120a(4, mo225b());
            }
            if (m183e()) {
                cVar.m120a(5, m178c());
            }
            if (m185f()) {
                cVar.m120a(6, m180d());
            }
            if (g()) {
                cVar.m120a(7, m182e());
            }
            if (h()) {
                cVar.m116a(8, d());
            }
            if (i()) {
                cVar.m116a(9, e());
            }
            if (j()) {
                cVar.m116a(10, f());
            }
            if (k()) {
                cVar.m120a(11, m184f());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public boolean mo223a() {
            return this.f231a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo223a()) {
                i = 0 + c.a(1, c());
            }
            if (mo225b()) {
                i += c.b(2, mo223a());
            }
            if (m179c()) {
                i += c.a(3, mo223a());
            }
            if (m181d()) {
                i += c.a(4, mo225b());
            }
            if (m183e()) {
                i += c.a(5, m178c());
            }
            if (m185f()) {
                i += c.a(6, m180d());
            }
            if (g()) {
                i += c.a(7, m182e());
            }
            if (h()) {
                i += c.a(8, d());
            }
            if (i()) {
                i += c.a(9, e());
            }
            if (j()) {
                i += c.a(10, f());
            }
            if (k()) {
                i += c.a(11, m184f());
            }
            this.e = i;
            return i;
        }

        public a b(int i) {
            this.h = true;
            this.f8864b = i;
            return this;
        }

        public a b(String str) {
            this.f237d = true;
            this.f232b = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public String mo225b() {
            return this.f232b;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public boolean mo225b() {
            return this.f233b;
        }

        public int c() {
            return this.f8863a;
        }

        public a c(int i) {
            this.i = true;
            this.f8865c = i;
            return this;
        }

        public a c(String str) {
            this.f239e = true;
            this.f234c = str;
            return this;
        }

        /* renamed from: c  reason: collision with other method in class */
        public String m178c() {
            return this.f234c;
        }

        /* renamed from: c  reason: collision with other method in class */
        public boolean m179c() {
            return this.f235c;
        }

        public int d() {
            return this.f8864b;
        }

        public a d(int i) {
            this.j = true;
            this.d = i;
            return this;
        }

        public a d(String str) {
            this.f240f = true;
            this.f236d = str;
            return this;
        }

        /* renamed from: d  reason: collision with other method in class */
        public String m180d() {
            return this.f236d;
        }

        /* renamed from: d  reason: collision with other method in class */
        public boolean m181d() {
            return this.f237d;
        }

        public int e() {
            return this.f8865c;
        }

        public a e(String str) {
            this.g = true;
            this.f238e = str;
            return this;
        }

        /* renamed from: e  reason: collision with other method in class */
        public String m182e() {
            return this.f238e;
        }

        /* renamed from: e  reason: collision with other method in class */
        public boolean m183e() {
            return this.f239e;
        }

        public int f() {
            return this.d;
        }

        public a f(String str) {
            this.k = true;
            this.f = str;
            return this;
        }

        /* renamed from: f  reason: collision with other method in class */
        public String m184f() {
            return this.f;
        }

        /* renamed from: f  reason: collision with other method in class */
        public boolean m185f() {
            return this.f240f;
        }

        public boolean g() {
            return this.g;
        }

        public boolean h() {
            return this.h;
        }

        public boolean i() {
            return this.i;
        }

        public boolean j() {
            return this.j;
        }

        public boolean k() {
            return this.k;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f241a;

        /* renamed from: c  reason: collision with other field name */
        private boolean f243c;

        /* renamed from: d  reason: collision with other field name */
        private boolean f244d;
        private boolean e;

        /* renamed from: b  reason: collision with other field name */
        private boolean f242b = false;

        /* renamed from: a  reason: collision with root package name */
        private int f8866a = 0;

        /* renamed from: b  reason: collision with root package name */
        private int f8867b = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f8868c = 0;
        private int d = -1;

        public static b a(byte[] bArr) {
            return (b) new b().a(bArr);
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.d < 0) {
                mo225b();
            }
            return this.d;
        }

        public b a(int i) {
            this.f243c = true;
            this.f8866a = i;
            return this;
        }

        @Override // com.xiaomi.push.e
        public b a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 8) {
                    a(bVar.m81a());
                } else if (a2 == 24) {
                    a(bVar.m84b());
                } else if (a2 == 32) {
                    b(bVar.m84b());
                } else if (a2 == 40) {
                    c(bVar.m84b());
                } else if (!a(bVar, a2)) {
                    return this;
                }
            }
        }

        public b a(boolean z) {
            this.f241a = true;
            this.f242b = z;
            return this;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo225b()) {
                cVar.m121a(1, mo223a());
            }
            if (m188c()) {
                cVar.m116a(3, c());
            }
            if (m189d()) {
                cVar.m116a(4, d());
            }
            if (m190e()) {
                cVar.m116a(5, e());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public boolean mo223a() {
            return this.f242b;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo225b()) {
                i = 0 + c.a(1, mo223a());
            }
            if (m188c()) {
                i += c.a(3, c());
            }
            if (m189d()) {
                i += c.a(4, d());
            }
            if (m190e()) {
                i += c.a(5, e());
            }
            this.d = i;
            return i;
        }

        public b b(int i) {
            this.f244d = true;
            this.f8867b = i;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public boolean mo225b() {
            return this.f241a;
        }

        public int c() {
            return this.f8866a;
        }

        public b c(int i) {
            this.e = true;
            this.f8868c = i;
            return this;
        }

        /* renamed from: c  reason: collision with other method in class */
        public boolean m188c() {
            return this.f243c;
        }

        public int d() {
            return this.f8867b;
        }

        /* renamed from: d  reason: collision with other method in class */
        public boolean m189d() {
            return this.f244d;
        }

        public int e() {
            return this.f8868c;
        }

        /* renamed from: e  reason: collision with other method in class */
        public boolean m190e() {
            return this.e;
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f246a;

        /* renamed from: b  reason: collision with other field name */
        private boolean f247b;

        /* renamed from: c  reason: collision with other field name */
        private boolean f248c;

        /* renamed from: d  reason: collision with other field name */
        private boolean f249d;

        /* renamed from: e  reason: collision with other field name */
        private boolean f250e;

        /* renamed from: f  reason: collision with other field name */
        private boolean f251f;

        /* renamed from: a  reason: collision with other field name */
        private String f245a = "";

        /* renamed from: b  reason: collision with root package name */
        private String f8870b = "";

        /* renamed from: c  reason: collision with root package name */
        private String f8871c = "";
        private String d = "";
        private String e = "";
        private String f = "";

        /* renamed from: a  reason: collision with root package name */
        private int f8869a = -1;

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.f8869a < 0) {
                mo225b();
            }
            return this.f8869a;
        }

        @Override // com.xiaomi.push.e
        public c a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 10) {
                    a(bVar.m78a());
                } else if (a2 == 18) {
                    b(bVar.m78a());
                } else if (a2 == 26) {
                    c(bVar.m78a());
                } else if (a2 == 34) {
                    d(bVar.m78a());
                } else if (a2 == 42) {
                    e(bVar.m78a());
                } else if (a2 == 50) {
                    f(bVar.m78a());
                } else if (!a(bVar, a2)) {
                    return this;
                }
            }
        }

        public c a(String str) {
            this.f246a = true;
            this.f245a = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public String mo223a() {
            return this.f245a;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo223a()) {
                cVar.m120a(1, mo223a());
            }
            if (mo225b()) {
                cVar.m120a(2, mo225b());
            }
            if (m193c()) {
                cVar.m120a(3, c());
            }
            if (m194d()) {
                cVar.m120a(4, d());
            }
            if (m195e()) {
                cVar.m120a(5, e());
            }
            if (m196f()) {
                cVar.m120a(6, f());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public boolean mo223a() {
            return this.f246a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo223a()) {
                i = 0 + c.a(1, mo223a());
            }
            if (mo225b()) {
                i += c.a(2, mo225b());
            }
            if (m193c()) {
                i += c.a(3, c());
            }
            if (m194d()) {
                i += c.a(4, d());
            }
            if (m195e()) {
                i += c.a(5, e());
            }
            if (m196f()) {
                i += c.a(6, f());
            }
            this.f8869a = i;
            return i;
        }

        public c b(String str) {
            this.f247b = true;
            this.f8870b = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public String mo225b() {
            return this.f8870b;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public boolean mo225b() {
            return this.f247b;
        }

        public c c(String str) {
            this.f248c = true;
            this.f8871c = str;
            return this;
        }

        public String c() {
            return this.f8871c;
        }

        /* renamed from: c  reason: collision with other method in class */
        public boolean m193c() {
            return this.f248c;
        }

        public c d(String str) {
            this.f249d = true;
            this.d = str;
            return this;
        }

        public String d() {
            return this.d;
        }

        /* renamed from: d  reason: collision with other method in class */
        public boolean m194d() {
            return this.f249d;
        }

        public c e(String str) {
            this.f250e = true;
            this.e = str;
            return this;
        }

        public String e() {
            return this.e;
        }

        /* renamed from: e  reason: collision with other method in class */
        public boolean m195e() {
            return this.f250e;
        }

        public c f(String str) {
            this.f251f = true;
            this.f = str;
            return this;
        }

        public String f() {
            return this.f;
        }

        /* renamed from: f  reason: collision with other method in class */
        public boolean m196f() {
            return this.f251f;
        }
    }

    /* loaded from: classes2.dex */
    public static final class d extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f253a;

        /* renamed from: c  reason: collision with other field name */
        private boolean f255c;
        private boolean d;
        private boolean e;

        /* renamed from: b  reason: collision with other field name */
        private boolean f254b = false;

        /* renamed from: a  reason: collision with other field name */
        private String f252a = "";

        /* renamed from: b  reason: collision with root package name */
        private String f8873b = "";

        /* renamed from: c  reason: collision with root package name */
        private String f8874c = "";

        /* renamed from: a  reason: collision with root package name */
        private int f8872a = -1;

        public static d a(byte[] bArr) {
            return (d) new d().a(bArr);
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.f8872a < 0) {
                mo225b();
            }
            return this.f8872a;
        }

        @Override // com.xiaomi.push.e
        public d a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 8) {
                    a(bVar.m81a());
                } else if (a2 == 18) {
                    a(bVar.m78a());
                } else if (a2 == 26) {
                    b(bVar.m78a());
                } else if (a2 == 34) {
                    c(bVar.m78a());
                } else if (!a(bVar, a2)) {
                    return this;
                }
            }
        }

        public d a(String str) {
            this.f255c = true;
            this.f252a = str;
            return this;
        }

        public d a(boolean z) {
            this.f253a = true;
            this.f254b = z;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public String mo223a() {
            return this.f252a;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo225b()) {
                cVar.m121a(1, mo223a());
            }
            if (m199c()) {
                cVar.m120a(2, mo223a());
            }
            if (d()) {
                cVar.m120a(3, mo225b());
            }
            if (e()) {
                cVar.m120a(4, c());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public boolean mo223a() {
            return this.f254b;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo225b()) {
                i = 0 + c.a(1, mo223a());
            }
            if (m199c()) {
                i += c.a(2, mo223a());
            }
            if (d()) {
                i += c.a(3, mo225b());
            }
            if (e()) {
                i += c.a(4, c());
            }
            this.f8872a = i;
            return i;
        }

        public d b(String str) {
            this.d = true;
            this.f8873b = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public String mo225b() {
            return this.f8873b;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public boolean mo225b() {
            return this.f253a;
        }

        public d c(String str) {
            this.e = true;
            this.f8874c = str;
            return this;
        }

        public String c() {
            return this.f8874c;
        }

        /* renamed from: c  reason: collision with other method in class */
        public boolean m199c() {
            return this.f255c;
        }

        public boolean d() {
            return this.d;
        }

        public boolean e() {
            return this.e;
        }
    }

    /* loaded from: classes2.dex */
    public static final class e extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f258a;

        /* renamed from: b  reason: collision with other field name */
        private boolean f260b;

        /* renamed from: c  reason: collision with other field name */
        private boolean f262c;

        /* renamed from: d  reason: collision with other field name */
        private boolean f264d;

        /* renamed from: e  reason: collision with other field name */
        private boolean f265e;

        /* renamed from: f  reason: collision with other field name */
        private boolean f266f;
        private boolean g;
        private boolean h;
        private boolean i;
        private boolean j;

        /* renamed from: a  reason: collision with root package name */
        private int f8875a = 0;

        /* renamed from: a  reason: collision with other field name */
        private String f257a = "";

        /* renamed from: b  reason: collision with other field name */
        private String f259b = "";

        /* renamed from: c  reason: collision with other field name */
        private String f261c = "";

        /* renamed from: b  reason: collision with root package name */
        private int f8876b = 0;

        /* renamed from: d  reason: collision with other field name */
        private String f263d = "";
        private String e = "";
        private String f = "";

        /* renamed from: a  reason: collision with other field name */
        private b f256a = null;

        /* renamed from: c  reason: collision with root package name */
        private int f8877c = 0;
        private int d = -1;

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.d < 0) {
                mo225b();
            }
            return this.d;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public b mo223a() {
            return this.f256a;
        }

        public e a(int i) {
            this.f258a = true;
            this.f8875a = i;
            return this;
        }

        @Override // com.xiaomi.push.e
        public e a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                switch (a2) {
                    case 0:
                        return this;
                    case 8:
                        a(bVar.c());
                        break;
                    case 18:
                        a(bVar.m78a());
                        break;
                    case 26:
                        b(bVar.m78a());
                        break;
                    case 34:
                        c(bVar.m78a());
                        break;
                    case 40:
                        b(bVar.m84b());
                        break;
                    case 50:
                        d(bVar.m78a());
                        break;
                    case 58:
                        e(bVar.m78a());
                        break;
                    case 66:
                        f(bVar.m78a());
                        break;
                    case 74:
                        b bVar2 = new b();
                        bVar.a(bVar2);
                        a(bVar2);
                        break;
                    case 80:
                        c(bVar.m84b());
                        break;
                    default:
                        if (a(bVar, a2)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public e a(b bVar) {
            if (bVar != null) {
                this.i = true;
                this.f256a = bVar;
                return this;
            }
            throw null;
        }

        public e a(String str) {
            this.f260b = true;
            this.f257a = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public String mo223a() {
            return this.f257a;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo223a()) {
                cVar.m129b(1, c());
            }
            if (mo225b()) {
                cVar.m120a(2, mo223a());
            }
            if (m204c()) {
                cVar.m120a(3, mo225b());
            }
            if (m206d()) {
                cVar.m120a(4, m203c());
            }
            if (m208e()) {
                cVar.m116a(5, d());
            }
            if (m209f()) {
                cVar.m120a(6, m205d());
            }
            if (g()) {
                cVar.m120a(7, m207e());
            }
            if (h()) {
                cVar.m120a(8, f());
            }
            if (i()) {
                cVar.m119a(9, (e) mo223a());
            }
            if (j()) {
                cVar.m116a(10, e());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public boolean mo223a() {
            return this.f258a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo223a()) {
                i = 0 + c.b(1, c());
            }
            if (mo225b()) {
                i += c.a(2, mo223a());
            }
            if (m204c()) {
                i += c.a(3, mo225b());
            }
            if (m206d()) {
                i += c.a(4, m203c());
            }
            if (m208e()) {
                i += c.a(5, d());
            }
            if (m209f()) {
                i += c.a(6, m205d());
            }
            if (g()) {
                i += c.a(7, m207e());
            }
            if (h()) {
                i += c.a(8, f());
            }
            if (i()) {
                i += c.a(9, (e) mo223a());
            }
            if (j()) {
                i += c.a(10, e());
            }
            this.d = i;
            return i;
        }

        public e b(int i) {
            this.f265e = true;
            this.f8876b = i;
            return this;
        }

        public e b(String str) {
            this.f262c = true;
            this.f259b = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public String mo225b() {
            return this.f259b;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public boolean mo225b() {
            return this.f260b;
        }

        public int c() {
            return this.f8875a;
        }

        public e c(int i) {
            this.j = true;
            this.f8877c = i;
            return this;
        }

        public e c(String str) {
            this.f264d = true;
            this.f261c = str;
            return this;
        }

        /* renamed from: c  reason: collision with other method in class */
        public String m203c() {
            return this.f261c;
        }

        /* renamed from: c  reason: collision with other method in class */
        public boolean m204c() {
            return this.f262c;
        }

        public int d() {
            return this.f8876b;
        }

        public e d(String str) {
            this.f266f = true;
            this.f263d = str;
            return this;
        }

        /* renamed from: d  reason: collision with other method in class */
        public String m205d() {
            return this.f263d;
        }

        /* renamed from: d  reason: collision with other method in class */
        public boolean m206d() {
            return this.f264d;
        }

        public int e() {
            return this.f8877c;
        }

        public e e(String str) {
            this.g = true;
            this.e = str;
            return this;
        }

        /* renamed from: e  reason: collision with other method in class */
        public String m207e() {
            return this.e;
        }

        /* renamed from: e  reason: collision with other method in class */
        public boolean m208e() {
            return this.f265e;
        }

        public e f(String str) {
            this.h = true;
            this.f = str;
            return this;
        }

        public String f() {
            return this.f;
        }

        /* renamed from: f  reason: collision with other method in class */
        public boolean m209f() {
            return this.f266f;
        }

        public boolean g() {
            return this.g;
        }

        public boolean h() {
            return this.h;
        }

        public boolean i() {
            return this.i;
        }

        public boolean j() {
            return this.j;
        }
    }

    /* loaded from: classes2.dex */
    public static final class f extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f269a;

        /* renamed from: b  reason: collision with other field name */
        private boolean f270b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f8880c;

        /* renamed from: a  reason: collision with other field name */
        private String f268a = "";

        /* renamed from: b  reason: collision with root package name */
        private String f8879b = "";

        /* renamed from: a  reason: collision with other field name */
        private b f267a = null;

        /* renamed from: a  reason: collision with root package name */
        private int f8878a = -1;

        public static f a(byte[] bArr) {
            return (f) new f().a(bArr);
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.f8878a < 0) {
                mo225b();
            }
            return this.f8878a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public b mo223a() {
            return this.f267a;
        }

        @Override // com.xiaomi.push.e
        public f a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 10) {
                    a(bVar.m78a());
                } else if (a2 == 18) {
                    b(bVar.m78a());
                } else if (a2 == 26) {
                    b bVar2 = new b();
                    bVar.a(bVar2);
                    a(bVar2);
                } else if (!a(bVar, a2)) {
                    return this;
                }
            }
        }

        public f a(b bVar) {
            if (bVar != null) {
                this.f8880c = true;
                this.f267a = bVar;
                return this;
            }
            throw null;
        }

        public f a(String str) {
            this.f269a = true;
            this.f268a = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public String mo223a() {
            return this.f268a;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo223a()) {
                cVar.m120a(1, mo223a());
            }
            if (mo225b()) {
                cVar.m120a(2, mo225b());
            }
            if (c()) {
                cVar.m119a(3, (e) mo223a());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public boolean mo223a() {
            return this.f269a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo223a()) {
                i = 0 + c.a(1, mo223a());
            }
            if (mo225b()) {
                i += c.a(2, mo225b());
            }
            if (c()) {
                i += c.a(3, (e) mo223a());
            }
            this.f8878a = i;
            return i;
        }

        public f b(String str) {
            this.f270b = true;
            this.f8879b = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public String mo225b() {
            return this.f8879b;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public boolean mo225b() {
            return this.f270b;
        }

        public boolean c() {
            return this.f8880c;
        }
    }

    /* loaded from: classes2.dex */
    public static final class g extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f272a;

        /* renamed from: b  reason: collision with other field name */
        private boolean f273b;

        /* renamed from: c  reason: collision with other field name */
        private boolean f274c;

        /* renamed from: a  reason: collision with other field name */
        private String f271a = "";

        /* renamed from: b  reason: collision with root package name */
        private String f8882b = "";

        /* renamed from: c  reason: collision with root package name */
        private String f8883c = "";

        /* renamed from: a  reason: collision with root package name */
        private int f8881a = -1;

        public static g a(byte[] bArr) {
            return (g) new g().a(bArr);
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.f8881a < 0) {
                mo225b();
            }
            return this.f8881a;
        }

        @Override // com.xiaomi.push.e
        public g a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 10) {
                    a(bVar.m78a());
                } else if (a2 == 18) {
                    b(bVar.m78a());
                } else if (a2 == 26) {
                    c(bVar.m78a());
                } else if (!a(bVar, a2)) {
                    return this;
                }
            }
        }

        public g a(String str) {
            this.f272a = true;
            this.f271a = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public String mo223a() {
            return this.f271a;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo223a()) {
                cVar.m120a(1, mo223a());
            }
            if (mo225b()) {
                cVar.m120a(2, mo225b());
            }
            if (m215c()) {
                cVar.m120a(3, c());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public boolean mo223a() {
            return this.f272a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo223a()) {
                i = 0 + c.a(1, mo223a());
            }
            if (mo225b()) {
                i += c.a(2, mo225b());
            }
            if (m215c()) {
                i += c.a(3, c());
            }
            this.f8881a = i;
            return i;
        }

        public g b(String str) {
            this.f273b = true;
            this.f8882b = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public String mo225b() {
            return this.f8882b;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public boolean mo225b() {
            return this.f273b;
        }

        public g c(String str) {
            this.f274c = true;
            this.f8883c = str;
            return this;
        }

        public String c() {
            return this.f8883c;
        }

        /* renamed from: c  reason: collision with other method in class */
        public boolean m215c() {
            return this.f274c;
        }
    }

    /* loaded from: classes2.dex */
    public static final class h extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f276a;

        /* renamed from: b  reason: collision with other field name */
        private boolean f277b;

        /* renamed from: a  reason: collision with root package name */
        private int f8884a = 0;

        /* renamed from: a  reason: collision with other field name */
        private String f275a = "";

        /* renamed from: b  reason: collision with root package name */
        private int f8885b = -1;

        public static h a(byte[] bArr) {
            return (h) new h().a(bArr);
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.f8885b < 0) {
                mo225b();
            }
            return this.f8885b;
        }

        public h a(int i) {
            this.f276a = true;
            this.f8884a = i;
            return this;
        }

        @Override // com.xiaomi.push.e
        public h a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 8) {
                    a(bVar.m84b());
                } else if (a2 == 18) {
                    a(bVar.m78a());
                } else if (!a(bVar, a2)) {
                    return this;
                }
            }
        }

        public h a(String str) {
            this.f277b = true;
            this.f275a = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public String mo223a() {
            return this.f275a;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo223a()) {
                cVar.m116a(1, c());
            }
            if (mo225b()) {
                cVar.m120a(2, mo223a());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public boolean mo223a() {
            return this.f276a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo223a()) {
                i = 0 + c.a(1, c());
            }
            if (mo225b()) {
                i += c.a(2, mo223a());
            }
            this.f8885b = i;
            return i;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public boolean mo225b() {
            return this.f277b;
        }

        public int c() {
            return this.f8884a;
        }
    }

    /* loaded from: classes2.dex */
    public static final class i extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f279a;

        /* renamed from: a  reason: collision with other field name */
        private a f278a = a.f8730a;

        /* renamed from: a  reason: collision with root package name */
        private int f8886a = -1;

        public static i a(byte[] bArr) {
            return (i) new i().a(bArr);
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.f8886a < 0) {
                mo225b();
            }
            return this.f8886a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public a mo223a() {
            return this.f278a;
        }

        public i a(a aVar) {
            this.f279a = true;
            this.f278a = aVar;
            return this;
        }

        @Override // com.xiaomi.push.e
        public i a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 10) {
                    a(bVar.m77a());
                } else if (!a(bVar, a2)) {
                    return this;
                }
            }
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo223a()) {
                cVar.m118a(1, mo223a());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public boolean mo223a() {
            return this.f279a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo223a()) {
                i = 0 + c.a(1, mo223a());
            }
            this.f8886a = i;
            return i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class j extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f282a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f8888b;

        /* renamed from: a  reason: collision with other field name */
        private a f280a = a.f8730a;

        /* renamed from: a  reason: collision with other field name */
        private b f281a = null;

        /* renamed from: a  reason: collision with root package name */
        private int f8887a = -1;

        public static j a(byte[] bArr) {
            return (j) new j().a(bArr);
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.f8887a < 0) {
                mo225b();
            }
            return this.f8887a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public a mo223a() {
            return this.f280a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public b mo223a() {
            return this.f281a;
        }

        public j a(a aVar) {
            this.f282a = true;
            this.f280a = aVar;
            return this;
        }

        @Override // com.xiaomi.push.e
        public j a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 10) {
                    a(bVar.m77a());
                } else if (a2 == 18) {
                    b bVar2 = new b();
                    bVar.a(bVar2);
                    a(bVar2);
                } else if (!a(bVar, a2)) {
                    return this;
                }
            }
        }

        public j a(b bVar) {
            if (bVar != null) {
                this.f8888b = true;
                this.f281a = bVar;
                return this;
            }
            throw null;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo223a()) {
                cVar.m118a(1, mo223a());
            }
            if (mo225b()) {
                cVar.m119a(2, (e) mo223a());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public boolean mo223a() {
            return this.f282a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo223a()) {
                i = 0 + c.a(1, mo223a());
            }
            if (mo225b()) {
                i += c.a(2, (e) mo223a());
            }
            this.f8887a = i;
            return i;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public boolean mo225b() {
            return this.f8888b;
        }
    }

    /* loaded from: classes2.dex */
    public static final class k extends e {

        /* renamed from: a  reason: collision with other field name */
        private boolean f285a;

        /* renamed from: b  reason: collision with other field name */
        private boolean f288b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f8891c;
        private boolean d;
        private boolean e;
        private boolean g;

        /* renamed from: a  reason: collision with other field name */
        private String f284a = "";

        /* renamed from: b  reason: collision with other field name */
        private String f287b = "";

        /* renamed from: a  reason: collision with other field name */
        private long f283a = 0;

        /* renamed from: b  reason: collision with other field name */
        private long f286b = 0;
        private boolean f = false;

        /* renamed from: a  reason: collision with root package name */
        private int f8889a = 0;

        /* renamed from: b  reason: collision with root package name */
        private int f8890b = -1;

        public static k a(byte[] bArr) {
            return (k) new k().a(bArr);
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public int mo223a() {
            if (this.f8890b < 0) {
                mo225b();
            }
            return this.f8890b;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public long mo223a() {
            return this.f283a;
        }

        public k a(int i) {
            this.g = true;
            this.f8889a = i;
            return this;
        }

        public k a(long j) {
            this.f8891c = true;
            this.f283a = j;
            return this;
        }

        @Override // com.xiaomi.push.e
        public k a(b bVar) {
            while (true) {
                int a2 = bVar.m75a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 10) {
                    a(bVar.m78a());
                } else if (a2 == 18) {
                    b(bVar.m78a());
                } else if (a2 == 24) {
                    a(bVar.m76a());
                } else if (a2 == 32) {
                    b(bVar.m76a());
                } else if (a2 == 40) {
                    a(bVar.m81a());
                } else if (a2 == 48) {
                    a(bVar.m84b());
                } else if (!a(bVar, a2)) {
                    return this;
                }
            }
        }

        public k a(String str) {
            this.f285a = true;
            this.f284a = str;
            return this;
        }

        public k a(boolean z) {
            this.e = true;
            this.f = z;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a */
        public String mo223a() {
            return this.f284a;
        }

        @Override // com.xiaomi.push.e
        public void a(c cVar) {
            if (mo223a()) {
                cVar.m120a(1, mo223a());
            }
            if (mo225b()) {
                cVar.m120a(2, mo225b());
            }
            if (m226c()) {
                cVar.m117a(3, mo223a());
            }
            if (d()) {
                cVar.m117a(4, mo225b());
            }
            if (f()) {
                cVar.m121a(5, e());
            }
            if (g()) {
                cVar.m116a(6, c());
            }
        }

        @Override // com.xiaomi.push.e
        /* renamed from: a  reason: collision with other method in class */
        public boolean mo223a() {
            return this.f285a;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public int mo225b() {
            int i = 0;
            if (mo223a()) {
                i = 0 + c.a(1, mo223a());
            }
            if (mo225b()) {
                i += c.a(2, mo225b());
            }
            if (m226c()) {
                i += c.a(3, mo223a());
            }
            if (d()) {
                i += c.a(4, mo225b());
            }
            if (f()) {
                i += c.a(5, e());
            }
            if (g()) {
                i += c.a(6, c());
            }
            this.f8890b = i;
            return i;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public long mo225b() {
            return this.f286b;
        }

        public k b(long j) {
            this.d = true;
            this.f286b = j;
            return this;
        }

        public k b(String str) {
            this.f288b = true;
            this.f287b = str;
            return this;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b */
        public String mo225b() {
            return this.f287b;
        }

        @Override // com.xiaomi.push.e
        /* renamed from: b  reason: collision with other method in class */
        public boolean mo225b() {
            return this.f288b;
        }

        public int c() {
            return this.f8889a;
        }

        /* renamed from: c  reason: collision with other method in class */
        public boolean m226c() {
            return this.f8891c;
        }

        public boolean d() {
            return this.d;
        }

        public boolean e() {
            return this.f;
        }

        public boolean f() {
            return this.e;
        }

        public boolean g() {
            return this.g;
        }
    }
}
