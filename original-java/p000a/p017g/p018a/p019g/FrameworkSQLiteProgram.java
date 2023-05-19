package p000a.p017g.p018a.p019g;

import android.database.sqlite.SQLiteProgram;
import p000a.p017g.p018a.SupportSQLiteProgram;

/* renamed from: a.g.a.g.d */
/* loaded from: classes.dex */
class FrameworkSQLiteProgram implements SupportSQLiteProgram {

    /* renamed from: a */
    private final SQLiteProgram f199a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteProgram(SQLiteProgram sQLiteProgram) {
        this.f199a = sQLiteProgram;
    }

    @Override // p000a.p017g.p018a.SupportSQLiteProgram
    /* renamed from: a */
    public void mo21762a(int i, String str) {
        this.f199a.bindString(i, str);
    }

    @Override // p000a.p017g.p018a.SupportSQLiteProgram
    /* renamed from: b */
    public void mo21761b(int i, double d) {
        this.f199a.bindDouble(i, d);
    }

    @Override // p000a.p017g.p018a.SupportSQLiteProgram
    /* renamed from: c */
    public void mo21760c(int i, long j) {
        this.f199a.bindLong(i, j);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f199a.close();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteProgram
    /* renamed from: d */
    public void mo21759d(int i, byte[] bArr) {
        this.f199a.bindBlob(i, bArr);
    }

    @Override // p000a.p017g.p018a.SupportSQLiteProgram
    /* renamed from: e */
    public void mo21758e(int i) {
        this.f199a.bindNull(i);
    }
}
