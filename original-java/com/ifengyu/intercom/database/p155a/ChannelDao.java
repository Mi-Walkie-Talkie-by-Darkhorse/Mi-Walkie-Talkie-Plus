package com.ifengyu.intercom.database.p155a;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import com.ifengyu.intercom.models.ChannelModel;
import java.util.List;

@Dao
/* renamed from: com.ifengyu.intercom.database.a.a */
/* loaded from: classes2.dex */
public interface ChannelDao {
    @Insert
    /* renamed from: a */
    List<Long> mo14256a(List<ChannelModel> list);

    @Query("select * from channel where config_id = :configId")
    /* renamed from: b */
    List<ChannelModel> mo14255b(Long l);
}
