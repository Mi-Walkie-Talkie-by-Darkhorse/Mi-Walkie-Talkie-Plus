package com.ifengyu.intercom.database.p155a;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import com.ifengyu.intercom.models.NetDeviceModel;
import java.util.List;

@Dao
/* renamed from: com.ifengyu.intercom.database.a.g */
/* loaded from: classes2.dex */
public interface NetDeviceDao {
    @Insert(onConflict = 1)
    /* renamed from: a */
    void mo14230a(List<NetDeviceModel> list);

    @Query("delete from net_device where sn = :sn")
    /* renamed from: b */
    void mo14229b(String str);

    @Query("select * from net_device where sn = :sn limit 1")
    /* renamed from: c */
    NetDeviceModel mo14228c(String str);

    @Insert(onConflict = 1)
    /* renamed from: d */
    long mo14227d(NetDeviceModel netDeviceModel);

    @Query("select * from net_device where user_id = :userId limit 1")
    /* renamed from: e */
    NetDeviceModel mo14226e(long j);
}
