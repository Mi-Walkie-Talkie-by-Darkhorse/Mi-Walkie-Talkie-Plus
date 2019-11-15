package com.xiaomi.push.service;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.misc.l;
import com.xiaomi.xmpush.thrift.i;
import com.xiaomi.xmpush.thrift.k;
import com.xiaomi.xmpush.thrift.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class e {
    private static volatile e b;
    private static String c = "GeoFenceDao.";
    private Context a;

    private e(Context context) {
        this.a = context;
    }

    private synchronized Cursor a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        synchronized (this) {
            l.a(false);
            try {
                cursor = sQLiteDatabase.rawQuery("SELECT * FROM geofence", null);
            } catch (Exception e) {
            }
        }
        return cursor;
    }

    public static e a(Context context) {
        if (b == null) {
            synchronized (e.class) {
                if (b == null) {
                    b = new e(context);
                }
            }
        }
        return b;
    }

    private synchronized com.xiaomi.xmpush.thrift.l a(Cursor cursor) {
        com.xiaomi.xmpush.thrift.l lVar;
        try {
            com.xiaomi.xmpush.thrift.l[] values = com.xiaomi.xmpush.thrift.l.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    lVar = null;
                    break;
                }
                lVar = values[i];
                if (TextUtils.equals(cursor.getString(cursor.getColumnIndex("type")), lVar.name())) {
                    break;
                }
                i++;
            }
        } catch (Exception e) {
            b.d(e.toString());
            lVar = null;
        }
        return lVar;
    }

    private synchronized String a(List<m> list) {
        String str;
        if (list != null) {
            if (list.size() >= 3) {
                JSONArray jSONArray = new JSONArray();
                try {
                    for (m mVar : list) {
                        if (mVar != null) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("point_lantitude", mVar.c());
                            jSONObject.put("point_longtitude", mVar.a());
                            jSONArray.put(jSONObject);
                        }
                    }
                    str = jSONArray.toString();
                } catch (JSONException e) {
                    b.d(e.toString());
                    str = null;
                }
            }
        }
        b.a(c + " points unvalidated");
        str = null;
        return str;
    }

    private synchronized m b(Cursor cursor) {
        m mVar;
        mVar = new m();
        try {
            mVar.b(Double.parseDouble(cursor.getString(cursor.getColumnIndex("center_lantitude"))));
            mVar.a(Double.parseDouble(cursor.getString(cursor.getColumnIndex("center_longtitude"))));
        } catch (Exception e) {
            b.d(e.toString());
            mVar = null;
        }
        return mVar;
    }

    private synchronized ArrayList<m> c(Cursor cursor) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(cursor.getString(cursor.getColumnIndex("polygon_points")));
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= jSONArray.length()) {
                    break;
                }
                m mVar = new m();
                JSONObject jSONObject = (JSONObject) jSONArray.get(i2);
                mVar.b(jSONObject.getDouble("point_lantitude"));
                mVar.a(jSONObject.getDouble("point_longtitude"));
                arrayList2.add(mVar);
                i = i2 + 1;
            }
            arrayList = arrayList2;
        } catch (JSONException e) {
            b.d(e.toString());
            arrayList = null;
        }
        return arrayList;
    }

    private synchronized i d(Cursor cursor) {
        i iVar;
        try {
            iVar = i.valueOf(cursor.getString(cursor.getColumnIndex("coordinate_provider")));
        } catch (IllegalArgumentException e) {
            b.d(e.toString());
            iVar = null;
        }
        return iVar;
    }

    public synchronized int a(String str, String str2) {
        int i = 0;
        synchronized (this) {
            l.a(false);
            try {
                if ("Enter".equals(str2) || "Leave".equals(str2) || "Unknown".equals(str2)) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("current_status", str2);
                    int update = f.a(this.a).a().update("geofence", contentValues, "id=?", new String[]{str});
                    f.a(this.a).b();
                    i = update;
                }
            } catch (Exception e) {
                b.d(e.toString());
            }
        }
        return i;
    }

    public synchronized long a(k kVar) {
        long j;
        l.a(false);
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", kVar.a());
            contentValues.put("appId", Long.valueOf(kVar.e()));
            contentValues.put(HttpPostBodyUtil.NAME, kVar.c());
            contentValues.put("package_name", kVar.g());
            contentValues.put("create_time", Long.valueOf(kVar.i()));
            contentValues.put("type", kVar.k().name());
            contentValues.put("center_longtitude", String.valueOf(kVar.m().a()));
            contentValues.put("center_lantitude", String.valueOf(kVar.m().c()));
            contentValues.put("circle_radius", Double.valueOf(kVar.o()));
            contentValues.put("polygon_point", a(kVar.q()));
            contentValues.put("coordinate_provider", kVar.s().name());
            contentValues.put("current_status", "Unknown");
            j = f.a(this.a).a().insert("geofence", null, contentValues);
            f.a(this.a).b();
        } catch (Exception e) {
            b.d(e.toString());
            j = -1;
        }
        return j;
    }

    public synchronized k a(String str) {
        k kVar;
        l.a(false);
        try {
            Iterator it = a().iterator();
            while (true) {
                if (!it.hasNext()) {
                    kVar = null;
                    break;
                }
                kVar = (k) it.next();
                if (TextUtils.equals(kVar.a(), str)) {
                    break;
                }
            }
        } catch (Exception e) {
            b.d(e.toString());
            kVar = null;
        }
        return kVar;
    }

    public synchronized ArrayList<k> a() {
        ArrayList<k> arrayList;
        l.a(false);
        try {
            Cursor a2 = a(f.a(this.a).a());
            arrayList = new ArrayList<>();
            if (a2 != null) {
                while (a2.moveToNext()) {
                    try {
                        k kVar = new k();
                        kVar.a(a2.getString(a2.getColumnIndex("id")));
                        kVar.b(a2.getString(a2.getColumnIndex(HttpPostBodyUtil.NAME)));
                        kVar.a((long) a2.getInt(a2.getColumnIndex("appId")));
                        kVar.c(a2.getString(a2.getColumnIndex("package_name")));
                        kVar.b((long) a2.getInt(a2.getColumnIndex("create_time")));
                        com.xiaomi.xmpush.thrift.l a3 = a(a2);
                        if (a3 == null) {
                            b.c(c + "findAllGeoFencing: geo type null");
                        } else {
                            kVar.a(a3);
                            if (TextUtils.equals("Circle", a3.name())) {
                                kVar.a(b(a2));
                                kVar.a(a2.getDouble(a2.getColumnIndex("circle_radius")));
                            } else {
                                if (TextUtils.equals("Polygon", a3.name())) {
                                    ArrayList c2 = c(a2);
                                    if (c2 == null || c2.size() < 3) {
                                        b.c(c + "findAllGeoFencing: geo points null or size<3");
                                    } else {
                                        kVar.a((List<m>) c2);
                                    }
                                }
                            }
                            i d = d(a2);
                            if (d == null) {
                                b.c(c + "findAllGeoFencing: geo Coordinate Provider null ");
                            } else {
                                kVar.a(d);
                                arrayList.add(kVar);
                            }
                        }
                    } catch (Exception e) {
                        b.d(e.toString());
                    }
                }
                a2.close();
            }
            f.a(this.a).b();
        } catch (Exception e2) {
            b.d(e2.toString());
            arrayList = null;
        }
        return arrayList;
    }

    public synchronized ArrayList<k> b(String str) {
        ArrayList<k> arrayList;
        l.a(false);
        try {
            ArrayList a2 = a();
            ArrayList<k> arrayList2 = new ArrayList<>();
            Iterator it = a2.iterator();
            while (it.hasNext()) {
                k kVar = (k) it.next();
                if (TextUtils.equals(kVar.g(), str)) {
                    arrayList2.add(kVar);
                }
            }
            arrayList = arrayList2;
        } catch (Exception e) {
            b.d(e.toString());
            arrayList = null;
        }
        return arrayList;
    }

    public synchronized String c(String str) {
        String str2;
        l.a(false);
        try {
            Cursor a2 = a(f.a(this.a).a());
            if (a2 != null) {
                while (a2.moveToNext()) {
                    if (TextUtils.equals(a2.getString(a2.getColumnIndex("id")), str)) {
                        str2 = a2.getString(a2.getColumnIndex("current_status"));
                        b.c(c + "findGeoStatueByGeoId: geo current statue is " + str2 + " geoId:" + str);
                        a2.close();
                        break;
                    }
                }
                a2.close();
            }
            f.a(this.a).b();
            str2 = "Unknown";
        } catch (Exception e) {
            b.d(e.toString());
            str2 = "Unknown";
        }
        return str2;
    }

    public synchronized int d(String str) {
        int i;
        l.a(false);
        try {
            if (a(str) != null) {
                i = f.a(this.a).a().delete("geofence", "id = ?", new String[]{str});
                f.a(this.a).b();
            } else {
                i = 0;
            }
        } catch (Exception e) {
            b.d(e.toString());
            i = 0;
        }
        return i;
    }

    public synchronized int e(String str) {
        int i;
        l.a(false);
        try {
            if (!TextUtils.isEmpty(str)) {
                i = f.a(this.a).a().delete("geofence", "package_name = ?", new String[]{str});
                f.a(this.a).b();
            } else {
                i = 0;
            }
        } catch (Exception e) {
            b.d(e.toString());
            i = 0;
        }
        return i;
    }
}
