package com.ifengyu.talk.p237g;

import com.ifengyu.talk.http.entity.LastMsgForGroups;
import com.ifengyu.talk.http.entity.MsgListEntity;
import com.ifengyu.talk.http.entity.SpeechMsg;
import com.ifengyu.talk.http.entity.SystemMsgEntity;
import io.reactivex.Observable;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* renamed from: com.ifengyu.talk.g.a */
/* loaded from: classes2.dex */
public interface TalkApiService {
    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/message/speech/{sid}")
    /* renamed from: a */
    Observable<SpeechMsg> m8377a(@Path("sid") long j);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/message/history/latest")
    /* renamed from: b */
    Observable<LastMsgForGroups> m8376b();

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/message/system")
    /* renamed from: c */
    Observable<MsgListEntity<SystemMsgEntity>> m8375c(@Query("msgType") int i, @Query("pageIndex") int i2, @Query("pageSize") int i3);
}
