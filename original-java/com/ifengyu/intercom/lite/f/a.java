package com.ifengyu.intercom.lite.f;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import com.ifengyu.intercom.lite.models.ChannelModel;
import java.util.List;

/* compiled from: ChannelDao.java */
@Dao
/* loaded from: classes2.dex */
public interface a {
    @Query("select * from channel where config_id = :configId")
    List<ChannelModel> a(Long l);

    @Insert
    List<Long> a(List<ChannelModel> list);
}
