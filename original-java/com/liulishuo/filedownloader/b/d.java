package com.liulishuo.filedownloader.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.SparseArray;
import com.liulishuo.filedownloader.b.a.C0043a;
import com.liulishuo.filedownloader.e.c;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.cookie.ClientCookie;

/* compiled from: SqliteDatabaseImpl */
public class d implements a {
    /* access modifiers changed from: private */
    public final SQLiteDatabase a = new e(c.a()).getWritableDatabase();

    /* compiled from: SqliteDatabaseImpl */
    public class a implements C0043a {
        private final SparseArray<FileDownloadModel> b;
        private b c;
        private final SparseArray<FileDownloadModel> d;
        private final SparseArray<List<com.liulishuo.filedownloader.model.a>> e;

        a(d dVar) {
            this(null, null);
        }

        a(SparseArray<FileDownloadModel> sparseArray, SparseArray<List<com.liulishuo.filedownloader.model.a>> sparseArray2) {
            this.b = new SparseArray<>();
            this.d = sparseArray;
            this.e = sparseArray2;
        }

        public Iterator<FileDownloadModel> iterator() {
            b bVar = new b();
            this.c = bVar;
            return bVar;
        }

        public void a() {
            if (this.c != null) {
                this.c.b();
            }
            int size = this.b.size();
            if (size >= 0) {
                d.this.a.beginTransaction();
                int i = 0;
                while (i < size) {
                    try {
                        int keyAt = this.b.keyAt(i);
                        FileDownloadModel fileDownloadModel = (FileDownloadModel) this.b.get(keyAt);
                        d.this.a.delete("filedownloader", "_id = ?", new String[]{String.valueOf(keyAt)});
                        d.this.a.insert("filedownloader", null, fileDownloadModel.p());
                        if (fileDownloadModel.n() > 1) {
                            List<com.liulishuo.filedownloader.model.a> c2 = d.this.c(keyAt);
                            if (c2.size() > 0) {
                                d.this.a.delete("filedownloaderConnection", "id = ?", new String[]{String.valueOf(keyAt)});
                                for (com.liulishuo.filedownloader.model.a aVar : c2) {
                                    aVar.a(fileDownloadModel.a());
                                    d.this.a.insert("filedownloaderConnection", null, aVar.f());
                                }
                            }
                        }
                        i++;
                    } catch (Throwable th) {
                        d.this.a.endTransaction();
                        throw th;
                    }
                }
                if (!(this.d == null || this.e == null)) {
                    int size2 = this.d.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        int a2 = ((FileDownloadModel) this.d.valueAt(i2)).a();
                        List c3 = d.this.c(a2);
                        if (c3 != null && c3.size() > 0) {
                            this.e.put(a2, c3);
                        }
                    }
                }
                d.this.a.setTransactionSuccessful();
                d.this.a.endTransaction();
            }
        }

        public void a(FileDownloadModel fileDownloadModel) {
        }

        public void b(FileDownloadModel fileDownloadModel) {
            if (this.d != null) {
                this.d.put(fileDownloadModel.a(), fileDownloadModel);
            }
        }

        public void a(int i, FileDownloadModel fileDownloadModel) {
            this.b.put(i, fileDownloadModel);
        }
    }

    /* compiled from: SqliteDatabaseImpl */
    class b implements Iterator<FileDownloadModel> {
        private final Cursor b;
        private final List<Integer> c = new ArrayList();
        private int d;

        b() {
            this.b = d.this.a.rawQuery("SELECT * FROM filedownloader", null);
        }

        public boolean hasNext() {
            return this.b.moveToNext();
        }

        /* renamed from: a */
        public FileDownloadModel next() {
            FileDownloadModel a2 = d.b(this.b);
            this.d = a2.a();
            return a2;
        }

        public void remove() {
            this.c.add(Integer.valueOf(this.d));
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            this.b.close();
            if (!this.c.isEmpty()) {
                String join = TextUtils.join(", ", this.c);
                if (com.liulishuo.filedownloader.e.d.a) {
                    com.liulishuo.filedownloader.e.d.c(this, "delete %s", join);
                }
                d.this.a.execSQL(g.a("DELETE FROM %s WHERE %s IN (%s);", "filedownloader", "_id", join));
                d.this.a.execSQL(g.a("DELETE FROM %s WHERE %s IN (%s);", "filedownloaderConnection", "id", join));
            }
        }
    }

    public void a(int i) {
    }

    public FileDownloadModel b(int i) {
        Cursor cursor;
        Throwable th;
        FileDownloadModel fileDownloadModel = null;
        try {
            cursor = this.a.rawQuery(g.a("SELECT * FROM %s WHERE %s = ?", "filedownloader", "_id"), new String[]{Integer.toString(i)});
            try {
                if (cursor.moveToNext()) {
                    fileDownloadModel = b(cursor);
                    if (cursor != null) {
                        cursor.close();
                    }
                } else if (cursor != null) {
                    cursor.close();
                }
                return fileDownloadModel;
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            cursor = null;
            th = th4;
        }
    }

    /* JADX INFO: finally extract failed */
    public List<com.liulishuo.filedownloader.model.a> c(int i) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor rawQuery = this.a.rawQuery(g.a("SELECT * FROM %s WHERE %s = ?", "filedownloaderConnection", "id"), new String[]{Integer.toString(i)});
            while (rawQuery.moveToNext()) {
                com.liulishuo.filedownloader.model.a aVar = new com.liulishuo.filedownloader.model.a();
                aVar.a(i);
                aVar.b(rawQuery.getInt(rawQuery.getColumnIndex("connectionIndex")));
                aVar.a(rawQuery.getLong(rawQuery.getColumnIndex("startOffset")));
                aVar.b(rawQuery.getLong(rawQuery.getColumnIndex("currentOffset")));
                aVar.c(rawQuery.getLong(rawQuery.getColumnIndex("endOffset")));
                arrayList.add(aVar);
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public void d(int i) {
        this.a.execSQL("DELETE FROM filedownloaderConnection WHERE id = " + i);
    }

    public void a(com.liulishuo.filedownloader.model.a aVar) {
        this.a.insert("filedownloaderConnection", null, aVar.f());
    }

    public void a(int i, int i2, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("currentOffset", Long.valueOf(j));
        this.a.update("filedownloaderConnection", contentValues, "id = ? AND connectionIndex = ?", new String[]{Integer.toString(i), Integer.toString(i2)});
    }

    public void a(int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("connectionCount", Integer.valueOf(i2));
        this.a.update("filedownloader", contentValues, "_id = ? ", new String[]{Integer.toString(i)});
    }

    public void b(FileDownloadModel fileDownloadModel) {
        this.a.insert("filedownloader", null, fileDownloadModel.p());
    }

    public void a(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel == null) {
            com.liulishuo.filedownloader.e.d.d(this, "update but model == null!", new Object[0]);
        } else if (b(fileDownloadModel.a()) != null) {
            this.a.update("filedownloader", fileDownloadModel.p(), "_id = ? ", new String[]{String.valueOf(fileDownloadModel.a())});
        } else {
            b(fileDownloadModel);
        }
    }

    public boolean e(int i) {
        if (this.a.delete("filedownloader", "_id = ?", new String[]{String.valueOf(i)}) != 0) {
            return true;
        }
        return false;
    }

    public void a() {
        this.a.delete("filedownloader", null, null);
        this.a.delete("filedownloaderConnection", null, null);
    }

    public void a(int i, String str, long j, long j2, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("sofar", Long.valueOf(j));
        contentValues.put("total", Long.valueOf(j2));
        contentValues.put("etag", str);
        contentValues.put("connectionCount", Integer.valueOf(i2));
        a(i, contentValues);
    }

    public void a(int i, long j, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", Byte.valueOf(2));
        contentValues.put("total", Long.valueOf(j));
        contentValues.put("etag", str);
        contentValues.put(HttpPostBodyUtil.FILENAME, str2);
        a(i, contentValues);
    }

    public void a(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", Byte.valueOf(3));
        contentValues.put("sofar", Long.valueOf(j));
        a(i, contentValues);
    }

    public void a(int i, Throwable th, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", Byte.valueOf(-1));
        contentValues.put("sofar", Long.valueOf(j));
        a(i, contentValues);
    }

    public void a(int i, Throwable th) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", Byte.valueOf(5));
        a(i, contentValues);
    }

    public void b(int i, long j) {
        e(i);
    }

    public void c(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", Byte.valueOf(-2));
        contentValues.put("sofar", Long.valueOf(j));
        a(i, contentValues);
    }

    public void f(int i) {
    }

    public C0043a b() {
        return new a(this);
    }

    public C0043a a(SparseArray<FileDownloadModel> sparseArray, SparseArray<List<com.liulishuo.filedownloader.model.a>> sparseArray2) {
        return new a(sparseArray, sparseArray2);
    }

    private void a(int i, ContentValues contentValues) {
        this.a.update("filedownloader", contentValues, "_id = ? ", new String[]{String.valueOf(i)});
    }

    /* access modifiers changed from: private */
    public static FileDownloadModel b(Cursor cursor) {
        boolean z = true;
        FileDownloadModel fileDownloadModel = new FileDownloadModel();
        fileDownloadModel.a(cursor.getInt(cursor.getColumnIndex("_id")));
        fileDownloadModel.a(cursor.getString(cursor.getColumnIndex("url")));
        String string = cursor.getString(cursor.getColumnIndex(ClientCookie.PATH_ATTR));
        if (cursor.getShort(cursor.getColumnIndex("pathAsDirectory")) != 1) {
            z = false;
        }
        fileDownloadModel.a(string, z);
        fileDownloadModel.a((byte) cursor.getShort(cursor.getColumnIndex("status")));
        fileDownloadModel.a(cursor.getLong(cursor.getColumnIndex("sofar")));
        fileDownloadModel.c(cursor.getLong(cursor.getColumnIndex("total")));
        fileDownloadModel.c(cursor.getString(cursor.getColumnIndex("errMsg")));
        fileDownloadModel.b(cursor.getString(cursor.getColumnIndex("etag")));
        fileDownloadModel.d(cursor.getString(cursor.getColumnIndex(HttpPostBodyUtil.FILENAME)));
        fileDownloadModel.b(cursor.getInt(cursor.getColumnIndex("connectionCount")));
        return fileDownloadModel;
    }
}
