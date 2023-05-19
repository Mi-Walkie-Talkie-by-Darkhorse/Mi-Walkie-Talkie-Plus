package p048b.p065c.p066a.p070e;

import android.content.ContentValues;
import android.database.Cursor;
import com.lzy.okgo.cache.CacheEntity;
import java.util.List;

/* renamed from: b.c.a.e.b */
/* loaded from: classes2.dex */
public class CacheManager extends BaseDao<CacheEntity<?>> {

    /* compiled from: CacheManager.java */
    /* renamed from: b.c.a.e.b$b */
    /* loaded from: classes2.dex */
    private static class C1136b {

        /* renamed from: a */
        private static final CacheManager f5338a = new CacheManager();
    }

    /* renamed from: l */
    public static CacheManager m21082l() {
        return C1136b.f5338a;
    }

    @Override // p048b.p065c.p066a.p070e.BaseDao
    /* renamed from: d */
    public String mo21086d() {
        return "cache";
    }

    /* renamed from: j */
    public CacheEntity<?> m21084j(String str) {
        if (str == null) {
            return null;
        }
        List<CacheEntity<?>> m21090g = m21090g("key=?", new String[]{str});
        if (m21090g.size() > 0) {
            return m21090g.get(0);
        }
        return null;
    }

    @Override // p048b.p065c.p066a.p070e.BaseDao
    /* renamed from: k */
    public ContentValues mo21087c(CacheEntity<?> cacheEntity) {
        return CacheEntity.m8296b(cacheEntity);
    }

    @Override // p048b.p065c.p066a.p070e.BaseDao
    /* renamed from: m */
    public CacheEntity<?> mo21085f(Cursor cursor) {
        return CacheEntity.m8290h(cursor);
    }

    /* renamed from: n */
    public boolean m21080n(String str) {
        if (str == null) {
            return false;
        }
        return m21092b("key=?", new String[]{str});
    }

    /* renamed from: o */
    public <T> CacheEntity<T> m21079o(String str, CacheEntity<T> cacheEntity) {
        cacheEntity.m8287k(str);
        m21088i(cacheEntity);
        return cacheEntity;
    }

    private CacheManager() {
        super(new DBHelper());
    }
}
