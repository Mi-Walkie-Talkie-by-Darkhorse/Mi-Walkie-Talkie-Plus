package com.ifengyu.intercom.node.a;

import android.content.ContentValues;
import android.database.Cursor;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import java.util.ArrayList;

/* compiled from: ConnConfigsDBAdapter */
public final class a {
    public final b a;

    public a(b bVar) {
        this.a = bVar;
    }

    private static ConnectionConfiguration a(Cursor cursor) {
        boolean z = true;
        String string = cursor.getString(1);
        String string2 = cursor.getString(2);
        int i = cursor.getInt(3);
        String string3 = cursor.getString(4);
        int i2 = cursor.getInt(5);
        int i3 = cursor.getInt(6);
        if (string.equals("NULL_STRING")) {
            string = null;
        }
        if (string2.equals("NULL_STRING")) {
            string2 = null;
        }
        if (i <= 0) {
            z = false;
        }
        return new ConnectionConfiguration(string, string2, z, string3, i2, i3);
    }

    public ConnectionConfiguration a(String str) {
        ConnectionConfiguration connectionConfiguration = null;
        if (str == null) {
            str = "NULL_STRING";
        }
        Cursor query = this.a.getReadableDatabase().query("connConfigs", null, "btAddress=?", new String[]{str}, null, null, null);
        if (query != null) {
            if (query.moveToFirst()) {
                connectionConfiguration = a(query);
            }
            query.close();
        }
        return connectionConfiguration;
    }

    public ArrayList<ConnectionConfiguration> a() {
        s.a("ConnConfigsDBAdapter", "loadConnectionConfigs");
        ArrayList<ConnectionConfiguration> arrayList = new ArrayList<>();
        Cursor query = this.a.getReadableDatabase().query("connConfigs", null, null, null, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                arrayList.add(a(query));
            }
            query.close();
        }
        return arrayList;
    }

    public void a(ConnectionConfiguration connectionConfiguration) {
        s.a("ConnConfigsDBAdapter", "saveConnectionConfig:" + connectionConfiguration);
        ContentValues contentValues = new ContentValues();
        String c = connectionConfiguration.c();
        if (c == null) {
            c = "NULL_STRING";
        }
        contentValues.put(HttpPostBodyUtil.NAME, connectionConfiguration.b());
        contentValues.put("btAddress", c);
        contentValues.put("connectionEnabled", Boolean.valueOf(connectionConfiguration.d()));
        contentValues.put("nodeId", connectionConfiguration.e());
        contentValues.put("deviceType", Integer.valueOf(connectionConfiguration.f()));
        contentValues.put("deviceColor", Integer.valueOf(connectionConfiguration.g()));
        this.a.getWritableDatabase().insertWithOnConflict("connConfigs", null, contentValues, 5);
    }

    public int b(String str) {
        if (str == null) {
            str = "NULL_STRING";
        }
        return this.a.getWritableDatabase().delete("connConfigs", "btAddress=?", new String[]{str});
    }
}
