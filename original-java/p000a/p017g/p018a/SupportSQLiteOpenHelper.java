package p000a.p017g.p018a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.List;

/* renamed from: a.g.a.c */
/* loaded from: classes.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* compiled from: SupportSQLiteOpenHelper.java */
    /* renamed from: a.g.a.c$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0024a {

        /* renamed from: a */
        public final int f174a;

        public AbstractC0024a(int i) {
            this.f174a = i;
        }

        /* renamed from: a */
        private void m26382a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    SQLiteDatabase.deleteDatabase(new File(str));
                } else {
                    try {
                        if (!new File(str).delete()) {
                            Log.e("SupportSQLite", "Could not delete the database file " + str);
                        }
                    } catch (Exception e) {
                        Log.e("SupportSQLite", "error while deleting corrupted database file", e);
                    }
                }
            } catch (Exception e2) {
                Log.w("SupportSQLite", "delete failed: ", e2);
            }
        }

        /* renamed from: b */
        public void mo21841b(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        /* renamed from: c */
        public void m26381c(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + supportSQLiteDatabase.getPath());
            if (!supportSQLiteDatabase.isOpen()) {
                m26382a(supportSQLiteDatabase.getPath());
                return;
            }
            List<Pair<String, String>> list = null;
            try {
                try {
                    list = supportSQLiteDatabase.mo21772o();
                } finally {
                    if (list != null) {
                        for (Pair<String, String> next : list) {
                            m26382a((String) next.second);
                        }
                    } else {
                        m26382a(supportSQLiteDatabase.getPath());
                    }
                }
            } catch (SQLiteException unused) {
            }
            try {
                supportSQLiteDatabase.close();
            } catch (IOException unused2) {
            }
        }

        /* renamed from: d */
        public abstract void mo21822d(@NonNull SupportSQLiteDatabase supportSQLiteDatabase);

        /* renamed from: e */
        public void mo21840e(@NonNull SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2) {
            throw new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
        }

        /* renamed from: f */
        public void mo21839f(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        /* renamed from: g */
        public abstract void mo21821g(@NonNull SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2);
    }

    /* compiled from: SupportSQLiteOpenHelper.java */
    /* renamed from: a.g.a.c$b */
    /* loaded from: classes.dex */
    public static class C0025b {
        @NonNull

        /* renamed from: a */
        public final Context f175a;
        @Nullable

        /* renamed from: b */
        public final String f176b;
        @NonNull

        /* renamed from: c */
        public final AbstractC0024a f177c;

        /* renamed from: d */
        public final boolean f178d;

        /* compiled from: SupportSQLiteOpenHelper.java */
        /* renamed from: a.g.a.c$b$a */
        /* loaded from: classes.dex */
        public static class C0026a {

            /* renamed from: a */
            Context f179a;

            /* renamed from: b */
            String f180b;

            /* renamed from: c */
            AbstractC0024a f181c;

            /* renamed from: d */
            boolean f182d;

            C0026a(@NonNull Context context) {
                this.f179a = context;
            }

            @NonNull
            /* renamed from: a */
            public C0025b m26379a() {
                if (this.f181c != null) {
                    if (this.f179a != null) {
                        if (this.f182d && TextUtils.isEmpty(this.f180b)) {
                            throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                        }
                        return new C0025b(this.f179a, this.f180b, this.f181c, this.f182d);
                    }
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }

            @NonNull
            /* renamed from: b */
            public C0026a m26378b(@NonNull AbstractC0024a abstractC0024a) {
                this.f181c = abstractC0024a;
                return this;
            }

            @NonNull
            /* renamed from: c */
            public C0026a m26377c(@Nullable String str) {
                this.f180b = str;
                return this;
            }
        }

        C0025b(@NonNull Context context, @Nullable String str, @NonNull AbstractC0024a abstractC0024a, boolean z) {
            this.f175a = context;
            this.f176b = str;
            this.f177c = abstractC0024a;
            this.f178d = z;
        }

        @NonNull
        /* renamed from: a */
        public static C0026a m26380a(@NonNull Context context) {
            return new C0026a(context);
        }
    }

    /* compiled from: SupportSQLiteOpenHelper.java */
    /* renamed from: a.g.a.c$c */
    /* loaded from: classes.dex */
    public interface InterfaceC0027c {
        @NonNull
        /* renamed from: a */
        SupportSQLiteOpenHelper mo21751a(@NonNull C0025b c0025b);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    @Nullable
    String getDatabaseName();

    @RequiresApi(api = 16)
    void setWriteAheadLoggingEnabled(boolean z);

    /* renamed from: v */
    SupportSQLiteDatabase mo21781v();

    /* renamed from: w */
    SupportSQLiteDatabase mo21780w();
}
