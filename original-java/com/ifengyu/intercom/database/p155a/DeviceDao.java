package com.ifengyu.intercom.database.p155a;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.ifengyu.intercom.models.DeviceModel;
import java.util.List;

@Dao
/* renamed from: com.ifengyu.intercom.database.a.e */
/* loaded from: classes2.dex */
public interface DeviceDao {
    @Insert(onConflict = 1)
    /* renamed from: a */
    void mo14244a(List<DeviceModel> list);

    @Query("select * from device order by update_time desc")
    /* renamed from: b */
    List<DeviceModel> mo14243b();

    @Query("select * from device where device_id = :deviceId limit 1")
    /* renamed from: c */
    DeviceModel mo14242c(String str);

    @Query("delete from device where address = :address")
    /* renamed from: d */
    int mo14241d(String str);

    @Query("delete from device where device_type = :deviceType")
    /* renamed from: e */
    int mo14240e(int i);

    @Query("select * from device where address = :address limit 1")
    /* renamed from: f */
    DeviceModel mo14239f(String str);

    @Update
    /* renamed from: g */
    void mo14238g(List<DeviceModel> list);

    @Update
    /* renamed from: h */
    void mo14237h(DeviceModel deviceModel);

    @Query("select * from device where device_type = :deviceType")
    /* renamed from: i */
    List<DeviceModel> mo14236i(int i);

    @Insert(onConflict = 1)
    /* renamed from: j */
    long mo14235j(DeviceModel deviceModel);
}
