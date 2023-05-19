package p000a.p017g.p018a;

import androidx.annotation.Nullable;

/* renamed from: a.g.a.a */
/* loaded from: classes.dex */
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {

    /* renamed from: a */
    private final String f172a;
    @Nullable

    /* renamed from: b */
    private final Object[] f173b;

    public SimpleSQLiteQuery(String str, @Nullable Object[] objArr) {
        this.f172a = str;
        this.f173b = objArr;
    }

    /* renamed from: a */
    private static void m26384a(SupportSQLiteProgram supportSQLiteProgram, int i, Object obj) {
        if (obj == null) {
            supportSQLiteProgram.mo21758e(i);
        } else if (obj instanceof byte[]) {
            supportSQLiteProgram.mo21759d(i, (byte[]) obj);
        } else if (obj instanceof Float) {
            supportSQLiteProgram.mo21761b(i, ((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            supportSQLiteProgram.mo21761b(i, ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            supportSQLiteProgram.mo21760c(i, ((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            supportSQLiteProgram.mo21760c(i, ((Integer) obj).intValue());
        } else if (obj instanceof Short) {
            supportSQLiteProgram.mo21760c(i, ((Short) obj).shortValue());
        } else if (obj instanceof Byte) {
            supportSQLiteProgram.mo21760c(i, ((Byte) obj).byteValue());
        } else if (obj instanceof String) {
            supportSQLiteProgram.mo21762a(i, (String) obj);
        } else if (obj instanceof Boolean) {
            supportSQLiteProgram.mo21760c(i, ((Boolean) obj).booleanValue() ? 1L : 0L);
        } else {
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
        }
    }

    /* renamed from: b */
    public static void m26383b(SupportSQLiteProgram supportSQLiteProgram, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            i++;
            m26384a(supportSQLiteProgram, i, obj);
        }
    }

    @Override // p000a.p017g.p018a.SupportSQLiteQuery
    /* renamed from: f */
    public String mo21833f() {
        return this.f172a;
    }

    @Override // p000a.p017g.p018a.SupportSQLiteQuery
    /* renamed from: g */
    public void mo21832g(SupportSQLiteProgram supportSQLiteProgram) {
        m26383b(supportSQLiteProgram, this.f173b);
    }

    public SimpleSQLiteQuery(String str) {
        this(str, null);
    }
}
