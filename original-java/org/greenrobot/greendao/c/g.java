package org.greenrobot.greendao.c;

import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.b.d;
import org.greenrobot.greendao.f;

/* compiled from: QueryBuilder */
public class g<T> {
    public static boolean a;
    public static boolean b;
    private final h<T> c;
    private StringBuilder d;
    private final List<Object> e;
    private final List<e<T, ?>> f;
    private final a<T, ?> g;
    private final String h;
    private Integer i;
    private Integer j;
    private boolean k;
    private String l;

    public static <T2> g<T2> a(a<T2, ?> aVar) {
        return new g<>(aVar);
    }

    protected g(a<T, ?> aVar) {
        this(aVar, "T");
    }

    protected g(a<T, ?> aVar, String str) {
        this.g = aVar;
        this.h = str;
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.c = new h<>(aVar, str);
        this.l = " COLLATE NOCASE";
    }

    private void e() {
        if (this.d == null) {
            this.d = new StringBuilder();
        } else if (this.d.length() > 0) {
            this.d.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
        }
    }

    public g<T> a(i iVar, i... iVarArr) {
        this.c.a(iVar, iVarArr);
        return this;
    }

    public g<T> a(f... fVarArr) {
        a(" ASC", fVarArr);
        return this;
    }

    public g<T> b(f... fVarArr) {
        a(" DESC", fVarArr);
        return this;
    }

    private void a(String str, f... fVarArr) {
        for (f fVar : fVarArr) {
            e();
            a(this.d, fVar);
            if (String.class.equals(fVar.b) && this.l != null) {
                this.d.append(this.l);
            }
            this.d.append(str);
        }
    }

    /* access modifiers changed from: protected */
    public StringBuilder a(StringBuilder sb, f fVar) {
        this.c.a(fVar);
        sb.append(this.h).append('.').append('\'').append(fVar.e).append('\'');
        return sb;
    }

    public g<T> a(int i2) {
        this.i = Integer.valueOf(i2);
        return this;
    }

    public f<T> a() {
        StringBuilder f2 = f();
        int a2 = a(f2);
        int b2 = b(f2);
        String sb = f2.toString();
        a(sb);
        return f.a(this.g, sb, this.e.toArray(), a2, b2);
    }

    private StringBuilder f() {
        StringBuilder sb = new StringBuilder(d.a(this.g.getTablename(), this.h, this.g.getAllColumns(), this.k));
        a(sb, this.h);
        if (this.d != null && this.d.length() > 0) {
            sb.append(" ORDER BY ").append(this.d);
        }
        return sb;
    }

    private int a(StringBuilder sb) {
        if (this.i == null) {
            return -1;
        }
        sb.append(" LIMIT ?");
        this.e.add(this.i);
        return this.e.size() - 1;
    }

    private int b(StringBuilder sb) {
        if (this.j == null) {
            return -1;
        }
        if (this.i == null) {
            throw new IllegalStateException("Offset cannot be set without limit");
        }
        sb.append(" OFFSET ?");
        this.e.add(this.j);
        return this.e.size() - 1;
    }

    public d<T> b() {
        if (!this.f.isEmpty()) {
            throw new DaoException("JOINs are not supported for DELETE queries");
        }
        String tablename = this.g.getTablename();
        StringBuilder sb = new StringBuilder(d.a(tablename, (String[]) null));
        a(sb, this.h);
        String replace = sb.toString().replace(this.h + ".\"", '\"' + tablename + "\".\"");
        a(replace);
        return d.a(this.g, replace, this.e.toArray());
    }

    private void a(String str) {
        if (a) {
            org.greenrobot.greendao.d.a("Built SQL for query: " + str);
        }
        if (b) {
            org.greenrobot.greendao.d.a("Values for query: " + this.e);
        }
    }

    private void a(StringBuilder sb, String str) {
        this.e.clear();
        for (e eVar : this.f) {
            sb.append(" JOIN ").append(eVar.b.getTablename()).append(' ');
            sb.append(eVar.e).append(" ON ");
            d.a(sb, eVar.a, eVar.c).append('=');
            d.a(sb, eVar.e, eVar.d);
        }
        boolean z = !this.c.a();
        if (z) {
            sb.append(" WHERE ");
            this.c.a(sb, str, this.e);
        }
        Iterator it = this.f.iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                e eVar2 = (e) it.next();
                if (!eVar2.f.a()) {
                    if (!z2) {
                        sb.append(" WHERE ");
                        z2 = true;
                    } else {
                        sb.append(" AND ");
                    }
                    eVar2.f.a(sb, eVar2.e, this.e);
                }
                z = z2;
            } else {
                return;
            }
        }
    }

    public List<T> c() {
        return a().c();
    }

    public T d() {
        return a().d();
    }
}
