package com.ifengyu.intercom.database.p155a;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import com.ifengyu.intercom.device.oldDevice.model.ShareLocationModel;
import java.util.List;

@Dao
/* renamed from: com.ifengyu.intercom.database.a.i */
/* loaded from: classes2.dex */
public interface ShareLocationDao {
    @Query("select * from share_location where user_id != :userId and time > :time")
    /* renamed from: a */
    List<ShareLocationModel> mo14222a(int i, int i2);

    @Insert(onConflict = 1)
    /* renamed from: b */
    long mo14221b(ShareLocationModel shareLocationModel);

    @Query("select * from share_location where user_id = :userId limit 1")
    /* renamed from: c */
    ShareLocationModel mo14220c(int i);
}
