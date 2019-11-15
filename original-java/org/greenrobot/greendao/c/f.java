package org.greenrobot.greendao.c;

import java.util.List;

/* compiled from: Query */
public class f<T> extends c<T> {
    private final a<T> h;

    /* compiled from: Query */
    private static final class a<T2> extends b<T2, f<T2>> {
        private final int e;
        private final int f;

        a(org.greenrobot.greendao.a<T2, ?> aVar, String str, String[] strArr, int i, int i2) {
            super(aVar, str, strArr);
            this.e = i;
            this.f = i2;
        }

        /* access modifiers changed from: protected */
        /* renamed from: d */
        public f<T2> b() {
            return new f<>(this, this.b, this.a, (String[]) this.c.clone(), this.e, this.f);
        }
    }

    public static <T2> f<T2> a(org.greenrobot.greendao.a<T2, ?> aVar, String str, Object[] objArr) {
        return a(aVar, str, objArr, -1, -1);
    }

    static <T2> f<T2> a(org.greenrobot.greendao.a<T2, ?> aVar, String str, Object[] objArr, int i, int i2) {
        return (f) new a(aVar, str, a(objArr), i, i2).a();
    }

    private f(a<T> aVar, org.greenrobot.greendao.a<T, ?> aVar2, String str, String[] strArr, int i, int i2) {
        super(aVar2, str, strArr, i, i2);
        this.h = aVar;
    }

    public f<T> b() {
        return (f) this.h.a(this);
    }

    public List<T> c() {
        a();
        return this.b.a(this.a.getDatabase().a(this.c, this.d));
    }

    public T d() {
        a();
        return this.b.b(this.a.getDatabase().a(this.c, this.d));
    }
}
