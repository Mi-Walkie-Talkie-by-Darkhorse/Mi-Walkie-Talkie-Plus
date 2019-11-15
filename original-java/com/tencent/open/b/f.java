package com.tencent.open.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.tencent.open.utils.d;

/* compiled from: ProGuard */
public class f extends SQLiteOpenHelper {
    protected static final String[] a = {"key"};
    protected static f b;

    public static synchronized f a() {
        f fVar;
        synchronized (f.class) {
            if (b == null) {
                b = new f(d.a());
            }
            fVar = b;
        }
        return fVar;
    }

    public f(Context context) {
        super(context, "sdk_report.db", null, 2);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS via_cgi_report( _id INTEGER PRIMARY KEY,key TEXT,type TEXT,blob BLOB);");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS via_cgi_report");
        onCreate(sQLiteDatabase);
    }

    /* JADX WARNING: Removed duplicated region for block: B:112:0x0067 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x005e A[SYNTHETIC, Splitter:B:31:0x005e] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0069 A[SYNTHETIC, Splitter:B:36:0x0069] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x006e A[SYNTHETIC, Splitter:B:39:0x006e] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0073 A[SYNTHETIC, Splitter:B:42:0x0073] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x007c A[SYNTHETIC, Splitter:B:48:0x007c] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x008b A[SYNTHETIC, Splitter:B:58:0x008b] */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x00a7 A[SYNTHETIC, Splitter:B:76:0x00a7] */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x00bc A[Catch:{ IOException -> 0x00ae }] */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x00c1 A[SYNTHETIC, Splitter:B:91:0x00c1] */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x00c6 A[SYNTHETIC, Splitter:B:94:0x00c6] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized java.util.List<java.io.Serializable> a(java.lang.String r12) {
        /*
            r11 = this;
            r9 = 0
            monitor-enter(r11)
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ all -> 0x00ab }
            r0.<init>()     // Catch:{ all -> 0x00ab }
            java.util.List r8 = java.util.Collections.synchronizedList(r0)     // Catch:{ all -> 0x00ab }
            boolean r0 = android.text.TextUtils.isEmpty(r12)     // Catch:{ all -> 0x00ab }
            if (r0 == 0) goto L_0x0014
            r0 = r8
        L_0x0012:
            monitor-exit(r11)
            return r0
        L_0x0014:
            android.database.sqlite.SQLiteDatabase r0 = r11.getReadableDatabase()     // Catch:{ all -> 0x00ab }
            if (r0 != 0) goto L_0x001c
            r0 = r8
            goto L_0x0012
        L_0x001c:
            r10 = 0
            java.lang.String r1 = "via_cgi_report"
            r2 = 0
            java.lang.String r3 = "type = ?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ Exception -> 0x00de, all -> 0x00b8 }
            r5 = 0
            r4[r5] = r12     // Catch:{ Exception -> 0x00de, all -> 0x00b8 }
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r3 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ Exception -> 0x00de, all -> 0x00b8 }
            if (r3 == 0) goto L_0x0067
            int r1 = r3.getCount()     // Catch:{ Exception -> 0x0092, all -> 0x00d9 }
            if (r1 <= 0) goto L_0x0067
            r3.moveToFirst()     // Catch:{ Exception -> 0x0092, all -> 0x00d9 }
        L_0x003a:
            java.lang.String r1 = "blob"
            int r1 = r3.getColumnIndex(r1)     // Catch:{ Exception -> 0x0092, all -> 0x00d9 }
            byte[] r1 = r3.getBlob(r1)     // Catch:{ Exception -> 0x0092, all -> 0x00d9 }
            java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream     // Catch:{ Exception -> 0x0092, all -> 0x00d9 }
            r4.<init>(r1)     // Catch:{ Exception -> 0x0092, all -> 0x00d9 }
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch:{ Exception -> 0x0078, all -> 0x0087 }
            r2.<init>(r4)     // Catch:{ Exception -> 0x0078, all -> 0x0087 }
            java.lang.Object r1 = r2.readObject()     // Catch:{ Exception -> 0x00e3, all -> 0x00e1 }
            java.io.Serializable r1 = (java.io.Serializable) r1     // Catch:{ Exception -> 0x00e3, all -> 0x00e1 }
            if (r2 == 0) goto L_0x0059
            r2.close()     // Catch:{ IOException -> 0x00cf }
        L_0x0059:
            r4.close()     // Catch:{ IOException -> 0x00d1 }
        L_0x005c:
            if (r1 == 0) goto L_0x0061
            r8.add(r1)     // Catch:{ Exception -> 0x0092, all -> 0x00d9 }
        L_0x0061:
            boolean r1 = r3.moveToNext()     // Catch:{ Exception -> 0x0092, all -> 0x00d9 }
            if (r1 != 0) goto L_0x003a
        L_0x0067:
            if (r3 == 0) goto L_0x006c
            r3.close()     // Catch:{ all -> 0x00ab }
        L_0x006c:
            if (r9 == 0) goto L_0x0071
            r10.close()     // Catch:{ IOException -> 0x00ae }
        L_0x0071:
            if (r0 == 0) goto L_0x0076
            r0.close()     // Catch:{ all -> 0x00ab }
        L_0x0076:
            r0 = r8
            goto L_0x0012
        L_0x0078:
            r1 = move-exception
            r1 = r9
        L_0x007a:
            if (r1 == 0) goto L_0x007f
            r1.close()     // Catch:{ IOException -> 0x00d3 }
        L_0x007f:
            r4.close()     // Catch:{ IOException -> 0x0084 }
            r1 = r9
            goto L_0x005c
        L_0x0084:
            r1 = move-exception
            r1 = r9
            goto L_0x005c
        L_0x0087:
            r1 = move-exception
            r2 = r9
        L_0x0089:
            if (r2 == 0) goto L_0x008e
            r2.close()     // Catch:{ IOException -> 0x00d5 }
        L_0x008e:
            r4.close()     // Catch:{ IOException -> 0x00d7 }
        L_0x0091:
            throw r1     // Catch:{ Exception -> 0x0092, all -> 0x00d9 }
        L_0x0092:
            r1 = move-exception
            r2 = r3
        L_0x0094:
            java.lang.String r3 = "openSDK_LOG.ReportDatabaseHelper"
            java.lang.String r4 = "getReportItemFromDB has exception."
            com.tencent.open.a.f.b(r3, r4, r1)     // Catch:{ all -> 0x00db }
            if (r2 == 0) goto L_0x00a0
            r2.close()     // Catch:{ all -> 0x00ab }
        L_0x00a0:
            if (r9 == 0) goto L_0x00a5
            r10.close()     // Catch:{ IOException -> 0x00b3 }
        L_0x00a5:
            if (r0 == 0) goto L_0x0076
            r0.close()     // Catch:{ all -> 0x00ab }
            goto L_0x0076
        L_0x00ab:
            r0 = move-exception
            monitor-exit(r11)
            throw r0
        L_0x00ae:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x00ab }
            goto L_0x0071
        L_0x00b3:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x00ab }
            goto L_0x00a5
        L_0x00b8:
            r1 = move-exception
            r3 = r9
        L_0x00ba:
            if (r3 == 0) goto L_0x00bf
            r3.close()     // Catch:{ all -> 0x00ab }
        L_0x00bf:
            if (r9 == 0) goto L_0x00c4
            r10.close()     // Catch:{ IOException -> 0x00ca }
        L_0x00c4:
            if (r0 == 0) goto L_0x00c9
            r0.close()     // Catch:{ all -> 0x00ab }
        L_0x00c9:
            throw r1     // Catch:{ all -> 0x00ab }
        L_0x00ca:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)     // Catch:{ all -> 0x00ab }
            goto L_0x00c4
        L_0x00cf:
            r2 = move-exception
            goto L_0x0059
        L_0x00d1:
            r2 = move-exception
            goto L_0x005c
        L_0x00d3:
            r1 = move-exception
            goto L_0x007f
        L_0x00d5:
            r2 = move-exception
            goto L_0x008e
        L_0x00d7:
            r2 = move-exception
            goto L_0x0091
        L_0x00d9:
            r1 = move-exception
            goto L_0x00ba
        L_0x00db:
            r1 = move-exception
            r3 = r2
            goto L_0x00ba
        L_0x00de:
            r1 = move-exception
            r2 = r9
            goto L_0x0094
        L_0x00e1:
            r1 = move-exception
            goto L_0x0089
        L_0x00e3:
            r1 = move-exception
            r1 = r2
            goto L_0x007a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.f.a(java.lang.String):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x006a A[SYNTHETIC, Splitter:B:39:0x006a] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0076 A[SYNTHETIC, Splitter:B:46:0x0076] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a(java.lang.String r9, java.util.List<java.io.Serializable> r10) {
        /*
            r8 = this;
            r2 = 0
            r1 = 20
            monitor-enter(r8)
            int r0 = r10.size()     // Catch:{ all -> 0x008f }
            if (r0 != 0) goto L_0x000c
        L_0x000a:
            monitor-exit(r8)
            return
        L_0x000c:
            if (r0 > r1) goto L_0x0064
            r4 = r0
        L_0x000f:
            boolean r0 = android.text.TextUtils.isEmpty(r9)     // Catch:{ all -> 0x008f }
            if (r0 != 0) goto L_0x000a
            r8.b(r9)     // Catch:{ all -> 0x008f }
            android.database.sqlite.SQLiteDatabase r5 = r8.getWritableDatabase()     // Catch:{ all -> 0x008f }
            if (r5 == 0) goto L_0x000a
            r5.beginTransaction()     // Catch:{ all -> 0x008f }
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch:{ Exception -> 0x007d }
            r6.<init>()     // Catch:{ Exception -> 0x007d }
            r0 = 0
            r3 = r0
        L_0x0028:
            if (r3 >= r4) goto L_0x0092
            java.lang.Object r0 = r10.get(r3)     // Catch:{ Exception -> 0x007d }
            java.io.Serializable r0 = (java.io.Serializable) r0     // Catch:{ Exception -> 0x007d }
            if (r0 == 0) goto L_0x005d
            java.lang.String r1 = "type"
            r6.put(r1, r9)     // Catch:{ Exception -> 0x007d }
            java.io.ByteArrayOutputStream r7 = new java.io.ByteArrayOutputStream     // Catch:{ Exception -> 0x007d }
            r1 = 512(0x200, float:7.175E-43)
            r7.<init>(r1)     // Catch:{ Exception -> 0x007d }
            java.io.ObjectOutputStream r1 = new java.io.ObjectOutputStream     // Catch:{ IOException -> 0x0066, all -> 0x0073 }
            r1.<init>(r7)     // Catch:{ IOException -> 0x0066, all -> 0x0073 }
            r1.writeObject(r0)     // Catch:{ IOException -> 0x00b6, all -> 0x00b3 }
            if (r1 == 0) goto L_0x004b
            r1.close()     // Catch:{ IOException -> 0x00a9 }
        L_0x004b:
            r7.close()     // Catch:{ IOException -> 0x00ab }
        L_0x004e:
            java.lang.String r0 = "blob"
            byte[] r1 = r7.toByteArray()     // Catch:{ Exception -> 0x007d }
            r6.put(r0, r1)     // Catch:{ Exception -> 0x007d }
            java.lang.String r0 = "via_cgi_report"
            r1 = 0
            r5.insert(r0, r1, r6)     // Catch:{ Exception -> 0x007d }
        L_0x005d:
            r6.clear()     // Catch:{ Exception -> 0x007d }
            int r0 = r3 + 1
            r3 = r0
            goto L_0x0028
        L_0x0064:
            r4 = r1
            goto L_0x000f
        L_0x0066:
            r0 = move-exception
            r0 = r2
        L_0x0068:
            if (r0 == 0) goto L_0x006d
            r0.close()     // Catch:{ IOException -> 0x00ad }
        L_0x006d:
            r7.close()     // Catch:{ IOException -> 0x0071 }
            goto L_0x004e
        L_0x0071:
            r0 = move-exception
            goto L_0x004e
        L_0x0073:
            r0 = move-exception
        L_0x0074:
            if (r2 == 0) goto L_0x0079
            r2.close()     // Catch:{ IOException -> 0x00af }
        L_0x0079:
            r7.close()     // Catch:{ IOException -> 0x00b1 }
        L_0x007c:
            throw r0     // Catch:{ Exception -> 0x007d }
        L_0x007d:
            r0 = move-exception
            java.lang.String r0 = "openSDK_LOG.ReportDatabaseHelper"
            java.lang.String r1 = "saveReportItemToDB has exception."
            com.tencent.open.a.f.e(r0, r1)     // Catch:{ all -> 0x009f }
            r5.endTransaction()     // Catch:{ all -> 0x008f }
            if (r5 == 0) goto L_0x000a
            r5.close()     // Catch:{ all -> 0x008f }
            goto L_0x000a
        L_0x008f:
            r0 = move-exception
            monitor-exit(r8)
            throw r0
        L_0x0092:
            r5.setTransactionSuccessful()     // Catch:{ Exception -> 0x007d }
            r5.endTransaction()     // Catch:{ all -> 0x008f }
            if (r5 == 0) goto L_0x000a
            r5.close()     // Catch:{ all -> 0x008f }
            goto L_0x000a
        L_0x009f:
            r0 = move-exception
            r5.endTransaction()     // Catch:{ all -> 0x008f }
            if (r5 == 0) goto L_0x00a8
            r5.close()     // Catch:{ all -> 0x008f }
        L_0x00a8:
            throw r0     // Catch:{ all -> 0x008f }
        L_0x00a9:
            r0 = move-exception
            goto L_0x004b
        L_0x00ab:
            r0 = move-exception
            goto L_0x004e
        L_0x00ad:
            r0 = move-exception
            goto L_0x006d
        L_0x00af:
            r1 = move-exception
            goto L_0x0079
        L_0x00b1:
            r1 = move-exception
            goto L_0x007c
        L_0x00b3:
            r0 = move-exception
            r2 = r1
            goto L_0x0074
        L_0x00b6:
            r0 = move-exception
            r0 = r1
            goto L_0x0068
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.f.a(java.lang.String, java.util.List):void");
    }

    public synchronized void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase != null) {
                try {
                    writableDatabase.delete("via_cgi_report", "type = ?", new String[]{str});
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                } catch (Exception e) {
                    com.tencent.open.a.f.b("openSDK_LOG.ReportDatabaseHelper", "clearReportItem has exception.", e);
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                } catch (Throwable th) {
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                    throw th;
                }
            }
        }
    }
}
