package p000a.p017g.p018a.p019g;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import androidx.annotation.RequiresApi;
import java.io.File;
import p000a.p017g.p018a.SupportSQLiteDatabase;
import p000a.p017g.p018a.SupportSQLiteOpenHelper;

/* renamed from: a.g.a.g.b */
/* loaded from: classes.dex */
class FrameworkSQLiteOpenHelper implements SupportSQLiteOpenHelper {

    /* renamed from: a */
    private final Context f187a;

    /* renamed from: b */
    private final String f188b;

    /* renamed from: c */
    private final SupportSQLiteOpenHelper.AbstractC0024a f189c;

    /* renamed from: d */
    private final boolean f190d;

    /* renamed from: e */
    private final Object f191e = new Object();

    /* renamed from: f */
    private C0030a f192f;

    /* renamed from: g */
    private boolean f193g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FrameworkSQLiteOpenHelper.java */
    /* renamed from: a.g.a.g.b$a */
    /* loaded from: classes.dex */
    public static class C0030a extends SQLiteOpenHelper {

        /* renamed from: a */
        final FrameworkSQLiteDatabase[] f194a;

        /* renamed from: b */
        final SupportSQLiteOpenHelper.AbstractC0024a f195b;

        /* renamed from: c */
        private boolean f196c;

        /* compiled from: FrameworkSQLiteOpenHelper.java */
        /* renamed from: a.g.a.g.b$a$a */
        /* loaded from: classes.dex */
        class C0031a implements DatabaseErrorHandler {

            /* renamed from: a */
            final /* synthetic */ SupportSQLiteOpenHelper.AbstractC0024a f197a;

            /* renamed from: b */
            final /* synthetic */ FrameworkSQLiteDatabase[] f198b;

            C0031a(SupportSQLiteOpenHelper.AbstractC0024a abstractC0024a, FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr) {
                this.f197a = abstractC0024a;
                this.f198b = frameworkSQLiteDatabaseArr;
            }

            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                this.f197a.m26381c(C0030a.m26372h(this.f198b, sQLiteDatabase));
            }
        }

        C0030a(Context context, String str, FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr, SupportSQLiteOpenHelper.AbstractC0024a abstractC0024a) {
            super(context, str, null, abstractC0024a.f174a, new C0031a(abstractC0024a, frameworkSQLiteDatabaseArr));
            this.f195b = abstractC0024a;
            this.f194a = frameworkSQLiteDatabaseArr;
        }

        /* renamed from: h */
        static FrameworkSQLiteDatabase m26372h(FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr, SQLiteDatabase sQLiteDatabase) {
            FrameworkSQLiteDatabase frameworkSQLiteDatabase = frameworkSQLiteDatabaseArr[0];
            if (frameworkSQLiteDatabase == null || !frameworkSQLiteDatabase.m26376f(sQLiteDatabase)) {
                frameworkSQLiteDatabaseArr[0] = new FrameworkSQLiteDatabase(sQLiteDatabase);
            }
            return frameworkSQLiteDatabaseArr[0];
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public synchronized void close() {
            super.close();
            this.f194a[0] = null;
        }

        /* renamed from: f */
        synchronized SupportSQLiteDatabase m26374f() {
            this.f196c = false;
            SQLiteDatabase readableDatabase = super.getReadableDatabase();
            if (this.f196c) {
                close();
                return m26374f();
            }
            return m26373g(readableDatabase);
        }

        /* renamed from: g */
        FrameworkSQLiteDatabase m26373g(SQLiteDatabase sQLiteDatabase) {
            return m26372h(this.f194a, sQLiteDatabase);
        }

        /* renamed from: i */
        synchronized SupportSQLiteDatabase m26371i() {
            this.f196c = false;
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            if (this.f196c) {
                close();
                return m26371i();
            }
            return m26373g(writableDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f195b.mo21841b(m26373g(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f195b.mo21822d(m26373g(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f196c = true;
            this.f195b.mo21840e(m26373g(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (this.f196c) {
                return;
            }
            this.f195b.mo21839f(m26373g(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f196c = true;
            this.f195b.mo21821g(m26373g(sQLiteDatabase), i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.AbstractC0024a abstractC0024a, boolean z) {
        this.f187a = context;
        this.f188b = str;
        this.f189c = abstractC0024a;
        this.f190d = z;
    }

    /* renamed from: f */
    private C0030a m26375f() {
        C0030a c0030a;
        synchronized (this.f191e) {
            if (this.f192f == null) {
                FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr = new FrameworkSQLiteDatabase[1];
                int i = Build.VERSION.SDK_INT;
                if (i >= 23 && this.f188b != null && this.f190d) {
                    this.f192f = new C0030a(this.f187a, new File(this.f187a.getNoBackupFilesDir(), this.f188b).getAbsolutePath(), frameworkSQLiteDatabaseArr, this.f189c);
                } else {
                    this.f192f = new C0030a(this.f187a, this.f188b, frameworkSQLiteDatabaseArr, this.f189c);
                }
                if (i >= 16) {
                    this.f192f.setWriteAheadLoggingEnabled(this.f193g);
                }
            }
            c0030a = this.f192f;
        }
        return c0030a;
    }

    @Override // p000a.p017g.p018a.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m26375f().close();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteOpenHelper
    public String getDatabaseName() {
        return this.f188b;
    }

    @Override // p000a.p017g.p018a.SupportSQLiteOpenHelper
    @RequiresApi(api = 16)
    public void setWriteAheadLoggingEnabled(boolean z) {
        synchronized (this.f191e) {
            C0030a c0030a = this.f192f;
            if (c0030a != null) {
                c0030a.setWriteAheadLoggingEnabled(z);
            }
            this.f193g = z;
        }
    }

    @Override // p000a.p017g.p018a.SupportSQLiteOpenHelper
    /* renamed from: v */
    public SupportSQLiteDatabase mo21781v() {
        return m26375f().m26374f();
    }

    @Override // p000a.p017g.p018a.SupportSQLiteOpenHelper
    /* renamed from: w */
    public SupportSQLiteDatabase mo21780w() {
        return m26375f().m26371i();
    }
}
