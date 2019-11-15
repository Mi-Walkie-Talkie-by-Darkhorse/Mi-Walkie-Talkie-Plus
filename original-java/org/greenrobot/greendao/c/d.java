package org.greenrobot.greendao.c;

/* compiled from: DeleteQuery */
public class d<T> extends a<T> {
    private final a<T> f;

    /* compiled from: DeleteQuery */
    private static final class a<T2> extends b<T2, d<T2>> {
        private a(org.greenrobot.greendao.a<T2, ?> aVar, String str, String[] strArr) {
            super(aVar, str, strArr);
        }

        /* access modifiers changed from: protected */
        /* renamed from: d */
        public d<T2> b() {
            return new d<>(this, this.b, this.a, (String[]) this.c.clone());
        }
    }

    static <T2> d<T2> a(org.greenrobot.greendao.a<T2, ?> aVar, String str, Object[] objArr) {
        return (d) new a(aVar, str, a(objArr)).a();
    }

    private d(a<T> aVar, org.greenrobot.greendao.a<T, ?> aVar2, String str, String[] strArr) {
        super(aVar2, str, strArr);
        this.f = aVar;
    }

    public void b() {
        a();
        org.greenrobot.greendao.a.a database = this.a.getDatabase();
        if (database.d()) {
            this.a.getDatabase().a(this.c, (Object[]) this.d);
            return;
        }
        database.a();
        try {
            this.a.getDatabase().a(this.c, (Object[]) this.d);
            database.c();
        } finally {
            database.b();
        }
    }
}
