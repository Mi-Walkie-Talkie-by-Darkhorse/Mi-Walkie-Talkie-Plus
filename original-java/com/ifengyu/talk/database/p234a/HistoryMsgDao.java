package com.ifengyu.talk.database.p234a;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import com.ifengyu.talk.models.HistoryMsgModel;
import java.util.ArrayList;
import java.util.List;

@Dao
/* renamed from: com.ifengyu.talk.database.a.a */
/* loaded from: classes2.dex */
public interface HistoryMsgDao {
    @Query("select * from history_msg where receiver = :gid and id < :lastId order by msg_time desc limit :limit")
    /* renamed from: a */
    List<HistoryMsgModel> mo8479a(long j, long j2, int i);

    @Query("select * from history_msg where id = :msgId")
    /* renamed from: b */
    HistoryMsgModel mo8478b(long j);

    @Query("select * from history_msg order by msg_time desc limit 1")
    /* renamed from: c */
    HistoryMsgModel mo8477c();

    @Insert(onConflict = 1)
    /* renamed from: d */
    List<Long> mo8476d(ArrayList<HistoryMsgModel> arrayList);

    @Insert(onConflict = 1)
    /* renamed from: e */
    Long mo8475e(HistoryMsgModel historyMsgModel);

    @Query("delete from history_msg where receiver = :gid")
    /* renamed from: f */
    void mo8474f(long j);
}
