package com.ifengyu.intercom.lite.d.g;

import com.ifengyu.intercom.lite.http.entity.HttpResult;
import com.ifengyu.intercom.lite.http.entity.WrapFirmwareInfo;
import io.reactivex.Observable;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* compiled from: ApiService.java */
/* loaded from: classes2.dex */
public interface a {
    @GET("/v2/version?action=version")
    Observable<HttpResult<WrapFirmwareInfo>> a(@Query("type") String str, @Query("hwVersion") String str2, @Query("userid") String str3, @Query("time") String str4, @Query("sign") String str5);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/record/permission/grant")
    Observable<HttpResult<Object>> a(@Query("userid") String str, @Query("time") String str2, @Query("sign") String str3, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/privacy/agree")
    Observable<HttpResult<Object>> b(@Query("userid") String str, @Query("time") String str2, @Query("sign") String str3, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/record/permission/deny")
    Observable<HttpResult<Object>> c(@Query("userid") String str, @Query("time") String str2, @Query("sign") String str3, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/privacy/cancel")
    Observable<HttpResult<Object>> d(@Query("userid") String str, @Query("time") String str2, @Query("sign") String str3, @Body RequestBody requestBody);
}
