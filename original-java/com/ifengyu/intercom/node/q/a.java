package com.ifengyu.intercom.node.q;

import android.database.Cursor;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.lite.f.e;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import java.util.ArrayList;

/* compiled from: ConnConfigsDBAdapter.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final b f5946a;

    public a(b bVar) {
        this.f5946a = bVar;
    }

    private static ConnectionConfiguration a(Cursor cursor) {
        String string = cursor.getString(1);
        String string2 = cursor.getString(2);
        int i = cursor.getInt(3);
        return new ConnectionConfiguration(string.equals("NULL_STRING") ? null : string, string2.equals("NULL_STRING") ? null : string2, i > 0, cursor.getString(4), cursor.getInt(5), cursor.getInt(6));
    }

    public ArrayList<ConnectionConfiguration> b() {
        z.d("ConnConfigsDBAdapter", "loadConnectionConfigs");
        ArrayList<ConnectionConfiguration> arrayList = new ArrayList<>();
        for (DeviceModel deviceModel : LiteDatabase.o().n().a()) {
            ConnectionConfiguration connectionConfiguration = new ConnectionConfiguration(deviceModel.getName(), deviceModel.getAddress(), deviceModel.isEnabled(), deviceModel.getDeviceId(), deviceModel.getDeviceType(), deviceModel.getDeviceColor());
            connectionConfiguration.a(deviceModel.isConnected());
            arrayList.add(connectionConfiguration);
        }
        return arrayList;
    }

    public int b(String str) {
        return LiteDatabase.o().n().a(str);
    }

    public ConnectionConfiguration a(String str) {
        DeviceModel b2 = LiteDatabase.o().n().b(str);
        if (b2 == null) {
            return null;
        }
        ConnectionConfiguration connectionConfiguration = new ConnectionConfiguration(b2.getName(), b2.getAddress(), b2.isEnabled(), b2.getDeviceId(), b2.getDeviceType(), b2.getDeviceColor());
        connectionConfiguration.a(b2.isConnected());
        return connectionConfiguration;
    }

    public ArrayList<ConnectionConfiguration> a() {
        ArrayList<ConnectionConfiguration> arrayList = new ArrayList<>();
        Cursor query = this.f5946a.getReadableDatabase().query("connConfigs", null, null, null, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                arrayList.add(a(query));
            }
            query.close();
        }
        return arrayList;
    }

    public void a(ConnectionConfiguration connectionConfiguration) {
        z.d("ConnConfigsDBAdapter", "saveConnectionConfig:" + connectionConfiguration);
        e n = LiteDatabase.o().n();
        DeviceModel b2 = n.b(connectionConfiguration.a());
        if (b2 == null) {
            DeviceModel deviceModel = new DeviceModel();
            deviceModel.setDeviceId(connectionConfiguration.e());
            deviceModel.setName(connectionConfiguration.d());
            deviceModel.setAddress(connectionConfiguration.a());
            deviceModel.setDeviceType(connectionConfiguration.c());
            deviceModel.setEnabled(connectionConfiguration.g());
            deviceModel.setConnected(connectionConfiguration.f());
            deviceModel.setDeviceColor(connectionConfiguration.b());
            n.a(deviceModel);
            return;
        }
        b2.setDeviceId(connectionConfiguration.e());
        b2.setName(connectionConfiguration.d());
        b2.setAddress(connectionConfiguration.a());
        b2.setDeviceType(connectionConfiguration.c());
        b2.setEnabled(connectionConfiguration.g());
        b2.setConnected(connectionConfiguration.f());
        b2.setDeviceColor(connectionConfiguration.b());
        n.b(b2);
    }
}
