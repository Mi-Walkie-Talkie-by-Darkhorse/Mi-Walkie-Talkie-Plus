package com.ifengyu.intercom.device.oldDevice.p176v;

import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p214p.C4161y;

/* renamed from: com.ifengyu.intercom.device.oldDevice.v.b */
/* loaded from: classes2.dex */
public class OldBleDeviceDbManager {

    /* renamed from: a */
    private static OldBleDeviceDbManager f13632a;

    private OldBleDeviceDbManager() {
    }

    /* renamed from: b */
    public static OldBleDeviceDbManager m12497b() {
        if (f13632a == null) {
            synchronized (BleCoreClient.class) {
                if (f13632a == null) {
                    f13632a = new OldBleDeviceDbManager();
                }
            }
        }
        return f13632a;
    }

    /* renamed from: a */
    public ConnectionConfiguration m12498a(String str) {
        C4161y.m11043l("OldBleDeviceDbManager", "getConfig:" + str);
        DeviceModel mo14239f = AppDatabase.m14276F().mo14270E().mo14239f(str);
        if (mo14239f != null) {
            ConnectionConfiguration connectionConfiguration = new ConnectionConfiguration(mo14239f.getName(), mo14239f.getAddress(), mo14239f.getDeviceId(), mo14239f.getDeviceType(), mo14239f.getDeviceColor());
            connectionConfiguration.m12500g(mo14239f.isConnected());
            return connectionConfiguration;
        }
        return null;
    }

    /* renamed from: c */
    public void m12496c(ConnectionConfiguration connectionConfiguration) {
        C4161y.m11043l("OldBleDeviceDbManager", "saveConnectionConfig:" + connectionConfiguration);
        DeviceDao mo14270E = AppDatabase.m14276F().mo14270E();
        DeviceModel mo14239f = mo14270E.mo14239f(connectionConfiguration.m12506a());
        if (mo14239f == null) {
            DeviceModel deviceModel = new DeviceModel();
            deviceModel.setDeviceId(connectionConfiguration.m12504c());
            deviceModel.setName(connectionConfiguration.m12502e());
            deviceModel.setAddress(connectionConfiguration.m12506a());
            deviceModel.setDeviceType(connectionConfiguration.m12503d());
            deviceModel.setConnected(connectionConfiguration.m12501f());
            deviceModel.setDeviceColor(connectionConfiguration.m12505b());
            deviceModel.setCreateTime(System.currentTimeMillis());
            deviceModel.setUpdateTime(System.currentTimeMillis());
            mo14270E.mo14235j(deviceModel);
            return;
        }
        mo14239f.setDeviceId(connectionConfiguration.m12504c());
        mo14239f.setName(connectionConfiguration.m12502e());
        mo14239f.setAddress(connectionConfiguration.m12506a());
        mo14239f.setDeviceType(connectionConfiguration.m12503d());
        mo14239f.setConnected(connectionConfiguration.m12501f());
        mo14239f.setDeviceColor(connectionConfiguration.m12505b());
        if (mo14239f.getCreateTime() == 0) {
            mo14239f.setCreateTime(System.currentTimeMillis());
        }
        mo14239f.setUpdateTime(System.currentTimeMillis());
        mo14270E.mo14237h(mo14239f);
    }
}
