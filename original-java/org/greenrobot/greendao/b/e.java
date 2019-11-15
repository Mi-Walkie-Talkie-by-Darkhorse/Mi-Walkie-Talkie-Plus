package org.greenrobot.greendao.b;

import org.greenrobot.greendao.a.a;
import org.greenrobot.greendao.a.c;

/* compiled from: TableStatements */
public class e {
    private final a a;
    private final String b;
    private final String[] c;
    private final String[] d;
    private c e;
    private c f;
    private c g;
    private c h;
    private c i;
    private volatile String j;
    private volatile String k;
    private volatile String l;

    public e(a aVar, String str, String[] strArr, String[] strArr2) {
        this.a = aVar;
        this.b = str;
        this.c = strArr;
        this.d = strArr2;
    }

    public c a() {
        if (this.e == null) {
            c b2 = this.a.b(d.a("INSERT INTO ", this.b, this.c));
            synchronized (this) {
                if (this.e == null) {
                    this.e = b2;
                }
            }
            if (this.e != b2) {
                b2.e();
            }
        }
        return this.e;
    }

    public c b() {
        if (this.f == null) {
            c b2 = this.a.b(d.a("INSERT OR REPLACE INTO ", this.b, this.c));
            synchronized (this) {
                if (this.f == null) {
                    this.f = b2;
                }
            }
            if (this.f != b2) {
                b2.e();
            }
        }
        return this.f;
    }

    public c c() {
        if (this.h == null) {
            c b2 = this.a.b(d.a(this.b, this.d));
            synchronized (this) {
                if (this.h == null) {
                    this.h = b2;
                }
            }
            if (this.h != b2) {
                b2.e();
            }
        }
        return this.h;
    }

    public c d() {
        if (this.g == null) {
            c b2 = this.a.b(d.a(this.b, this.c, this.d));
            synchronized (this) {
                if (this.g == null) {
                    this.g = b2;
                }
            }
            if (this.g != b2) {
                b2.e();
            }
        }
        return this.g;
    }

    public c e() {
        if (this.i == null) {
            this.i = this.a.b(d.a(this.b));
        }
        return this.i;
    }

    public String f() {
        if (this.j == null) {
            this.j = d.a(this.b, "T", this.c, false);
        }
        return this.j;
    }

    public String g() {
        if (this.k == null) {
            StringBuilder sb = new StringBuilder(f());
            sb.append("WHERE ");
            d.b(sb, "T", this.d);
            this.k = sb.toString();
        }
        return this.k;
    }

    public String h() {
        if (this.l == null) {
            this.l = f() + "WHERE ROWID=?";
        }
        return this.l;
    }
}
