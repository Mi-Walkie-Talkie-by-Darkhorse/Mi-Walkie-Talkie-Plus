package com.ifengyu.talk.database.p234a;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import com.ifengyu.talk.models.RecentTalkModel;
import java.util.List;

@Dao
/* renamed from: com.ifengyu.talk.database.a.c */
/* loaded from: classes2.dex */
public interface RecentTalkDao {
    @Query("delete from recent_talk where group_id = :groupId")
    /* renamed from: a */
    void mo8471a(long j);

    @Query("select * from recent_talk")
    /* renamed from: b */
    List<RecentTalkModel> mo8470b();

    @Query("delete from recent_talk")
    /* renamed from: c */
    void mo8469c();

    @Insert(onConflict = 1)
    /* renamed from: d */
    Long mo8468d(RecentTalkModel recentTalkModel);
}
