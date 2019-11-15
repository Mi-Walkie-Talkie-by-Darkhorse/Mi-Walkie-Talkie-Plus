package com.amap.api.mapcore.util;

/* compiled from: RectPacker */
public class ek {
    b a;

    /* compiled from: RectPacker */
    enum a {
        FAIL,
        PERFECT,
        FIT
    }

    /* compiled from: RectPacker */
    class b {
        static final /* synthetic */ boolean e = (!ek.class.desiredAssertionStatus());
        String a;
        c b;
        b c = null;
        b d = null;

        b(c cVar) {
            this.b = cVar;
        }

        /* access modifiers changed from: 0000 */
        public b a(int i, int i2, String str) {
            if (!a()) {
                b a2 = this.c.a(i, i2, str);
                return a2 == null ? this.d.a(i, i2, str) : a2;
            } else if (this.a != null) {
                return null;
            } else {
                switch (b(i, i2)) {
                    case FAIL:
                        return null;
                    case PERFECT:
                        this.a = str;
                        return this;
                    case FIT:
                        a(i, i2);
                        break;
                }
                return this.c.a(i, i2, str);
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean a() {
            return this.c == null;
        }

        /* access modifiers changed from: 0000 */
        public boolean b() {
            return this.a != null || !a();
        }

        /* access modifiers changed from: 0000 */
        public boolean a(String str) {
            if (!a()) {
                boolean a2 = this.c.a(str);
                if (!a2) {
                    a2 = this.d.a(str);
                }
                if (!a2 || this.c.b() || this.d.b()) {
                    return a2;
                }
                this.c = null;
                this.d = null;
                return a2;
            } else if (!str.equals(this.a)) {
                return false;
            } else {
                this.a = null;
                return true;
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(int i, int i2) {
            c cVar;
            c cVar2;
            int i3 = this.b.c - i;
            int i4 = this.b.d - i2;
            if (!e && i3 < 0) {
                throw new AssertionError();
            } else if (e || i4 >= 0) {
                if (i3 > i4) {
                    cVar = new c(this.b.a, this.b.b, i, this.b.d);
                    cVar2 = new c(cVar.a + i, this.b.b, this.b.c - i, this.b.d);
                } else {
                    cVar = new c(this.b.a, this.b.b, this.b.c, i2);
                    cVar2 = new c(this.b.a, cVar.b + i2, this.b.c, this.b.d - i2);
                }
                this.c = new b(cVar);
                this.d = new b(cVar2);
            } else {
                throw new AssertionError();
            }
        }

        /* access modifiers changed from: 0000 */
        public a b(int i, int i2) {
            if (i > this.b.c || i2 > this.b.d) {
                return a.FAIL;
            }
            if (i == this.b.c && i2 == this.b.d) {
                return a.PERFECT;
            }
            return a.FIT;
        }
    }

    /* compiled from: RectPacker */
    public class c {
        public int a;
        public int b;
        public int c;
        public int d;

        c(int i, int i2, int i3, int i4) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
        }

        public String toString() {
            return "[ x: " + this.a + ", y: " + this.b + ", w: " + this.c + ", h: " + this.d + " ]";
        }
    }

    public ek(int i, int i2) {
        this.a = new b(new c(0, 0, i, i2));
    }

    public c a(int i, int i2, String str) {
        b a2 = this.a.a(i, i2, str);
        if (a2 == null) {
            return null;
        }
        return new c(a2.b.a, a2.b.b, a2.b.c, a2.b.d);
    }

    public boolean a(String str) {
        return this.a.a(str);
    }

    public int a() {
        return this.a.b.c;
    }

    public int b() {
        return this.a.b.d;
    }
}
