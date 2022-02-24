package com.ifengyu.intercom.lite.f;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.ifengyu.intercom.lite.models.ConfigFileModel;
import java.util.List;

/* compiled from: ConfigFileDao.java */
@Dao
/* loaded from: classes2.dex */
public interface c {
    @Query("select * from config_file order by create_time desc")
    List<ConfigFileModel> a();

    @Update
    void a(ConfigFileModel configFileModel);

    @Delete
    void a(List<ConfigFileModel> list);

    @Insert
    long b(ConfigFileModel configFileModel);
}
