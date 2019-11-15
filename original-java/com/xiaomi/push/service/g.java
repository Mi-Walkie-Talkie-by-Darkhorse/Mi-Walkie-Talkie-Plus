package com.xiaomi.push.service;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.tencent.tauth.AuthActivity;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.misc.l;
import java.util.ArrayList;
import java.util.Iterator;

public class g {
    private static volatile g a;
    private Context b;

    private g(Context context) {
        this.b = context;
    }

    private synchronized Cursor a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        synchronized (this) {
            l.a(false);
            try {
                cursor = sQLiteDatabase.rawQuery("SELECT * FROM geoMessage", null);
            } catch (Exception e) {
                b.d(e.toString());
            }
        }
        return cursor;
    }

    public static g a(Context context) {
        if (a == null) {
            synchronized (g.class) {
                if (a == null) {
                    a = new g(context);
                }
            }
        }
        return a;
    }

    public synchronized int a(String str) {
        int i = 0;
        synchronized (this) {
            l.a(false);
            if (!TextUtils.isEmpty(str)) {
                try {
                    int delete = f.a(this.b).a().delete("geoMessage", "message_id = ?", new String[]{str});
                    f.a(this.b).b();
                    i = delete;
                } catch (Exception e) {
                    b.d(e.toString());
                }
            }
        }
        return i;
    }

    public synchronized ArrayList<com.xiaomi.push.service.module.b> a() {
        ArrayList<com.xiaomi.push.service.module.b> arrayList;
        l.a(false);
        try {
            Cursor a2 = a(f.a(this.b).a());
            arrayList = new ArrayList<>();
            if (a2 != null) {
                while (a2.moveToNext()) {
                    com.xiaomi.push.service.module.b bVar = new com.xiaomi.push.service.module.b();
                    bVar.a(a2.getString(a2.getColumnIndex("message_id")));
                    bVar.b(a2.getString(a2.getColumnIndex("geo_id")));
                    bVar.a(a2.getBlob(a2.getColumnIndex("content")));
                    bVar.a(a2.getInt(a2.getColumnIndex(AuthActivity.ACTION_KEY)));
                    bVar.a(a2.getLong(a2.getColumnIndex("deadline")));
                    arrayList.add(bVar);
                }
                a2.close();
            }
            f.a(this.b).b();
        } catch (Exception e) {
            b.d(e.toString());
            arrayList = null;
        }
        return arrayList;
    }

    public synchronized boolean a(ArrayList<ContentValues> arrayList) {
        boolean z;
        l.a(false);
        if (arrayList == null || arrayList.size() <= 0) {
            z = false;
        } else {
            try {
                SQLiteDatabase a2 = f.a(this.b).a();
                a2.beginTransaction();
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    if (-1 == a2.insert("geoMessage", null, (ContentValues) it.next())) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    a2.setTransactionSuccessful();
                }
                a2.endTransaction();
                f.a(this.b).b();
            } catch (Exception e) {
                b.d(e.toString());
                z = false;
            }
        }
        return z;
    }

    public synchronized int b(String str) {
        int i = 0;
        synchronized (this) {
            l.a(false);
            if (!TextUtils.isEmpty(str)) {
                try {
                    int delete = f.a(this.b).a().delete("geoMessage", "geo_id = ?", new String[]{str});
                    f.a(this.b).b();
                    i = delete;
                } catch (Exception e) {
                    b.d(e.toString());
                }
            }
        }
        return i;
    }

    public synchronized ArrayList<com.xiaomi.push.service.module.b> c(String str) {
        ArrayList<com.xiaomi.push.service.module.b> arrayList;
        l.a(false);
        if (TextUtils.isEmpty(str)) {
            arrayList = null;
        } else {
            try {
                ArrayList a2 = a();
                ArrayList<com.xiaomi.push.service.module.b> arrayList2 = new ArrayList<>();
                Iterator it = a2.iterator();
                while (it.hasNext()) {
                    com.xiaomi.push.service.module.b bVar = (com.xiaomi.push.service.module.b) it.next();
                    if (TextUtils.equals(bVar.c(), str)) {
                        arrayList2.add(bVar);
                    }
                }
                arrayList = arrayList2;
            } catch (Exception e) {
                b.d(e.toString());
                arrayList = null;
            }
        }
        return arrayList;
    }
}
