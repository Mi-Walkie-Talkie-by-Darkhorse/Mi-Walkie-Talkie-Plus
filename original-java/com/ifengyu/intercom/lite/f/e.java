package com.ifengyu.intercom.lite.f;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.ifengyu.intercom.lite.models.DeviceModel;
import java.util.List;

/* compiled from: DeviceDao.java */
@Dao
/* loaded from: classes2.dex */
public interface e {
    @Query("delete from device where address = :address")
    int a(String str);

    @Insert(onConflict = 1)
    long a(DeviceModel deviceModel);

    @Query("select * from device order by update_time desc")
    List<DeviceModel> a();

    @Query("select * from device where address = :address limit 1")
    DeviceModel b(String str);

    @Update
    void b(DeviceModel deviceModel);
}
