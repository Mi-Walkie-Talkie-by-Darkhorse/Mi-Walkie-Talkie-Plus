package com.amap.api.col.sl;

import android.content.Context;
import android.content.ContextWrapper;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: DB */
public final class ct extends SQLiteOpenHelper {
    /* access modifiers changed from: private */
    public static boolean b = true;
    /* access modifiers changed from: private */
    public static boolean c = false;
    private cp a;

    /* compiled from: DB */
    public static class a extends ContextWrapper {
        private String a;
        private Context b;

        public a(Context context, String str) {
            super(context);
            this.a = str;
            this.b = context;
        }

        /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final java.io.File getDatabasePath(java.lang.String r7) {
            /*
                r6 = this;
                boolean r0 = com.amap.api.col.sl.ct.b     // Catch:{ Throwable -> 0x00a3 }
                if (r0 == 0) goto L_0x0010
                android.content.Context r0 = r6.b     // Catch:{ Throwable -> 0x00a3 }
                java.lang.String r1 = "android.permission.WRITE_EXTERNAL_STORAGE"
                boolean r0 = com.amap.api.col.sl.ca.a(r0, r1)     // Catch:{ Throwable -> 0x00a3 }
                if (r0 != 0) goto L_0x0015
            L_0x0010:
                java.io.File r0 = super.getDatabasePath(r7)     // Catch:{ Throwable -> 0x00a3 }
            L_0x0014:
                return r0
            L_0x0015:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00a3 }
                r0.<init>()     // Catch:{ Throwable -> 0x00a3 }
                java.lang.String r1 = r6.a     // Catch:{ Throwable -> 0x00a3 }
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Throwable -> 0x00a3 }
                java.lang.String r1 = "/"
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Throwable -> 0x00a3 }
                java.lang.StringBuilder r0 = r0.append(r7)     // Catch:{ Throwable -> 0x00a3 }
                java.lang.String r2 = r0.toString()     // Catch:{ Throwable -> 0x00a3 }
                java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x00a3 }
                java.lang.String r1 = r6.a     // Catch:{ Throwable -> 0x00a3 }
                r0.<init>(r1)     // Catch:{ Throwable -> 0x00a3 }
                boolean r1 = r0.exists()     // Catch:{ Throwable -> 0x00a3 }
                if (r1 != 0) goto L_0x003e
                r0.mkdirs()     // Catch:{ Throwable -> 0x00a3 }
            L_0x003e:
                boolean r0 = com.amap.api.col.sl.ct.c     // Catch:{ Throwable -> 0x00a3 }
                if (r0 == 0) goto L_0x004a
                boolean r0 = com.amap.api.col.sl.ct.b     // Catch:{ Throwable -> 0x00a3 }
                if (r0 != 0) goto L_0x007e
            L_0x004a:
                com.amap.api.col.sl.ct.c = true     // Catch:{ Throwable -> 0x00a3 }
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00a3 }
                r0.<init>()     // Catch:{ Throwable -> 0x00a3 }
                java.lang.String r1 = r6.a     // Catch:{ Throwable -> 0x00a3 }
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Throwable -> 0x00a3 }
                java.lang.String r1 = java.io.File.separator     // Catch:{ Throwable -> 0x00a3 }
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Throwable -> 0x00a3 }
                long r4 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x00a3 }
                java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x00a3 }
                java.lang.String r1 = ".db"
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Throwable -> 0x00a3 }
                java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x00a3 }
                java.io.File r1 = new java.io.File     // Catch:{ Throwable -> 0x00a3 }
                r1.<init>(r0)     // Catch:{ Throwable -> 0x00a3 }
                boolean r0 = r1.createNewFile()     // Catch:{ Throwable -> 0x00a3 }
                if (r0 == 0) goto L_0x0095
                r1.delete()     // Catch:{ Throwable -> 0x00a3 }
            L_0x007e:
                r1 = 0
                java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x00a3 }
                r0.<init>(r2)     // Catch:{ Throwable -> 0x00a3 }
                boolean r2 = r0.exists()     // Catch:{ Throwable -> 0x00a3 }
                if (r2 != 0) goto L_0x00ad
                boolean r1 = r0.createNewFile()     // Catch:{ IOException -> 0x009e }
            L_0x008e:
                if (r1 != 0) goto L_0x0014
                java.io.File r0 = super.getDatabasePath(r7)     // Catch:{ Throwable -> 0x00a3 }
                goto L_0x0014
            L_0x0095:
                com.amap.api.col.sl.ct.b = false     // Catch:{ Throwable -> 0x00a3 }
                java.io.File r0 = super.getDatabasePath(r7)     // Catch:{ Throwable -> 0x00a3 }
                goto L_0x0014
            L_0x009e:
                r2 = move-exception
                com.amap.api.col.sl.ct.b = false     // Catch:{ Throwable -> 0x00a3 }
                goto L_0x008e
            L_0x00a3:
                r0 = move-exception
                com.amap.api.col.sl.ct.b = false
                java.io.File r0 = super.getDatabasePath(r7)
                goto L_0x0014
            L_0x00ad:
                r1 = 1
                goto L_0x008e
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.ct.a.getDatabasePath(java.lang.String):java.io.File");
        }

        public final SQLiteDatabase openOrCreateDatabase(String str, int i, CursorFactory cursorFactory) {
            SQLiteDatabase sQLiteDatabase;
            if (getDatabasePath(str) != null) {
                try {
                    sQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str), null);
                } catch (Throwable th) {
                    sQLiteDatabase = null;
                }
                if (sQLiteDatabase != null) {
                    return sQLiteDatabase;
                }
            }
            return SQLiteDatabase.openOrCreateDatabase(this.b.getApplicationContext().getDatabasePath(str), null);
        }

        public final SQLiteDatabase openOrCreateDatabase(String str, int i, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
            SQLiteDatabase sQLiteDatabase;
            if (getDatabasePath(str) != null) {
                try {
                    sQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str), null);
                } catch (Throwable th) {
                    sQLiteDatabase = null;
                }
                if (sQLiteDatabase != null) {
                    return sQLiteDatabase;
                }
            }
            return SQLiteDatabase.openOrCreateDatabase(this.b.getApplicationContext().getDatabasePath(str), null);
        }
    }

    public ct(Context context, String str, cp cpVar) {
        super(context, str, null, 1);
        this.a = cpVar;
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.a.a(sQLiteDatabase);
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        cp cpVar = this.a;
    }
}
