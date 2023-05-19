package com.ifengyu.intercom.database.p155a;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.ifengyu.intercom.models.ConfigFileModel;
import java.util.List;

@Dao
/* renamed from: com.ifengyu.intercom.database.a.c */
/* loaded from: classes2.dex */
public interface ConfigFileDao {
    @Query("select * from config_file order by create_time desc")
    /* renamed from: b */
    List<ConfigFileModel> mo14251b();

    @Delete
    /* renamed from: c */
    void mo14250c(List<ConfigFileModel> list);

    @Update
    /* renamed from: d */
    void mo14249d(ConfigFileModel configFileModel);

    @Insert
    /* renamed from: e */
    long mo14248e(ConfigFileModel configFileModel);
}
