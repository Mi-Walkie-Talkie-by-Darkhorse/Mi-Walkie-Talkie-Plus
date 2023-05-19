package p000a.p017g.p018a.p019g;

import android.database.sqlite.SQLiteStatement;
import p000a.p017g.p018a.SupportSQLiteStatement;

/* renamed from: a.g.a.g.e */
/* loaded from: classes.dex */
class FrameworkSQLiteStatement extends FrameworkSQLiteProgram implements SupportSQLiteStatement {

    /* renamed from: b */
    private final SQLiteStatement f200b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteStatement(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f200b = sQLiteStatement;
    }

    @Override // p000a.p017g.p018a.SupportSQLiteStatement
    /* renamed from: C */
    public long mo21763C() {
        return this.f200b.executeInsert();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteStatement
    /* renamed from: q */
    public int mo21752q() {
        return this.f200b.executeUpdateDelete();
    }
}
