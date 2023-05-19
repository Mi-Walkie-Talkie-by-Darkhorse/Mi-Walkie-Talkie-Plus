package p000a.p017g.p018a.p019g;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.util.List;
import p000a.p017g.p018a.SimpleSQLiteQuery;
import p000a.p017g.p018a.SupportSQLiteDatabase;
import p000a.p017g.p018a.SupportSQLiteQuery;
import p000a.p017g.p018a.SupportSQLiteStatement;

/* renamed from: a.g.a.g.a */
/* loaded from: classes.dex */
class FrameworkSQLiteDatabase implements SupportSQLiteDatabase {

    /* renamed from: b */
    private static final String[] f183b = new String[0];

    /* renamed from: a */
    private final SQLiteDatabase f184a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FrameworkSQLiteDatabase.java */
    /* renamed from: a.g.a.g.a$a */
    /* loaded from: classes.dex */
    public class C0028a implements SQLiteDatabase.CursorFactory {

        /* renamed from: a */
        final /* synthetic */ SupportSQLiteQuery f185a;

        C0028a(FrameworkSQLiteDatabase frameworkSQLiteDatabase, SupportSQLiteQuery supportSQLiteQuery) {
            this.f185a = supportSQLiteQuery;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f185a.mo21832g(new FrameworkSQLiteProgram(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    /* compiled from: FrameworkSQLiteDatabase.java */
    /* renamed from: a.g.a.g.a$b */
    /* loaded from: classes.dex */
    class C0029b implements SQLiteDatabase.CursorFactory {

        /* renamed from: a */
        final /* synthetic */ SupportSQLiteQuery f186a;

        C0029b(FrameworkSQLiteDatabase frameworkSQLiteDatabase, SupportSQLiteQuery supportSQLiteQuery) {
            this.f186a = supportSQLiteQuery;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f186a.mo21832g(new FrameworkSQLiteProgram(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteDatabase(SQLiteDatabase sQLiteDatabase) {
        this.f184a = sQLiteDatabase;
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    /* renamed from: A */
    public boolean mo21779A() {
        return this.f184a.inTransaction();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    @RequiresApi(api = 16)
    /* renamed from: B */
    public boolean mo21778B() {
        return this.f184a.isWriteAheadLoggingEnabled();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f184a.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public boolean m26376f(SQLiteDatabase sQLiteDatabase) {
        return this.f184a == sQLiteDatabase;
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    public String getPath() {
        return this.f184a.getPath();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    public boolean isOpen() {
        return this.f184a.isOpen();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    /* renamed from: n */
    public void mo21773n() {
        this.f184a.beginTransaction();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    /* renamed from: o */
    public List<Pair<String, String>> mo21772o() {
        return this.f184a.getAttachedDbs();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    /* renamed from: p */
    public void mo21771p(String str) throws SQLException {
        this.f184a.execSQL(str);
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    /* renamed from: r */
    public SupportSQLiteStatement mo21770r(String str) {
        return new FrameworkSQLiteStatement(this.f184a.compileStatement(str));
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    @RequiresApi(api = 16)
    /* renamed from: s */
    public Cursor mo21769s(SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal) {
        return this.f184a.rawQueryWithFactory(new C0029b(this, supportSQLiteQuery), supportSQLiteQuery.mo21833f(), f183b, null, cancellationSignal);
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    /* renamed from: t */
    public void mo21768t() {
        this.f184a.setTransactionSuccessful();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    /* renamed from: u */
    public void mo21767u() {
        this.f184a.beginTransactionNonExclusive();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    /* renamed from: x */
    public Cursor mo21766x(String str) {
        return mo21764z(new SimpleSQLiteQuery(str));
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    /* renamed from: y */
    public void mo21765y() {
        this.f184a.endTransaction();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteDatabase
    /* renamed from: z */
    public Cursor mo21764z(SupportSQLiteQuery supportSQLiteQuery) {
        return this.f184a.rawQueryWithFactory(new C0028a(this, supportSQLiteQuery), supportSQLiteQuery.mo21833f(), f183b, null);
    }
}
