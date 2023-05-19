package com.ifengyu.intercom.p208n;

import com.ifengyu.intercom.http.entity.CodeEntity;
import com.ifengyu.intercom.http.entity.CreateGroupCodeUserInfo;
import com.ifengyu.intercom.http.entity.FeedbackEntity;
import com.ifengyu.intercom.http.entity.JoinGroupByCodeEntity;
import com.ifengyu.intercom.http.entity.PrivacyInfoEntity;
import com.ifengyu.intercom.http.entity.UploadFileEntity;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.http.entity.HttpDataList;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.talk.http.entity.MsgListEntity;
import com.ifengyu.talk.http.entity.TempGroup;
import com.ifengyu.talk.models.HistoryMsgModel;
import io.reactivex.Observable;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.HTTP;
import retrofit2.http.Headers;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* renamed from: com.ifengyu.intercom.n.a */
/* loaded from: classes2.dex */
public interface AppApiService {
    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/privacy/agree")
    /* renamed from: A */
    Observable<NewHttpResult> m11406A(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/privacy/cancel")
    /* renamed from: B */
    Observable<NewHttpResult> m11405B(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @PUT("/v1/manager/user/{account}/group/{gid}")
    /* renamed from: C */
    Observable<NewHttpResult> m11404C(@Path("account") String str, @Path("gid") String str2, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/manager/user/{account}/current_group")
    /* renamed from: D */
    Observable<TempGroup> m11403D(@Path("account") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/manager/group/apply_join")
    /* renamed from: E */
    Observable<NewHttpResult> m11402E(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/manager/user/{account}/listen_group")
    /* renamed from: F */
    Observable<HttpDataList<TempGroup>> m11401F(@Path("account") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/manager/group")
    /* renamed from: G */
    Observable<NewHttpResult> m11400G(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/message/history/lt")
    /* renamed from: H */
    Observable<MsgListEntity<HistoryMsgModel>> m11399H(@Query("gid") long j, @Query("lastId") long j2, @Query("pageSize") int i);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/group/join/by/code/{code}")
    /* renamed from: I */
    Observable<JoinGroupByCodeEntity> m11398I(@Path("code") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/group/code")
    /* renamed from: J */
    Observable<CodeEntity> m11397J();

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/privacy/info")
    /* renamed from: K */
    Observable<PrivacyInfoEntity> m11396K(@Query("type") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/feedback")
    /* renamed from: L */
    Observable<MsgListEntity<FeedbackEntity>> m11395L(@Query("pageIndex") int i, @Query("pageSize") int i2);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/record/permission/deny")
    /* renamed from: M */
    Observable<NewHttpResult> m11394M(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/manager/user/{account}/sos_contact")
    /* renamed from: N */
    Observable<HttpDataList<Long>> m11393N(@Path("account") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/feedback")
    /* renamed from: O */
    Observable<NewHttpResult> m11392O(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/user/login")
    /* renamed from: P */
    Observable<UserInfo> m11391P(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/intercom/channel/active")
    /* renamed from: Q */
    Observable<NewHttpResult> m11390Q(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/manager/user/{account}/group/batch")
    /* renamed from: R */
    Observable<NewHttpResult> m11389R(@Path("account") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/manager/user/{account}")
    /* renamed from: S */
    Observable<NetDeviceModel> m11388S(@Path("account") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/version/latest")
    /* renamed from: T */
    Observable<VersionInfo> m11387T(@Query("category") String str, @Query("versionCode") int i, @Query("hwVersion") int i2, @Query("lang") String str2);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/manager/user/{account}")
    /* renamed from: U */
    Observable<UserInfo> m11386U(@Path("account") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @HTTP(hasBody = true, method = "DELETE", path = "/v1/user/device/unbind")
    /* renamed from: V */
    Observable<NewHttpResult> m11385V(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @PUT("/v1/user/password")
    /* renamed from: W */
    Observable<NewHttpResult> m11384W(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @PUT("/v1/user/information")
    /* renamed from: X */
    Observable<NewHttpResult> m11383X(@Body RequestBody requestBody);

    @DELETE("/v1/manager/user/{account}/sos_contact")
    @Headers({"Content-Type: application/json", "Accept: application/json"})
    /* renamed from: Y */
    Observable<NewHttpResult> m11382Y(@Path("account") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/intercom/information")
    /* renamed from: a */
    Observable<NewHttpResult> m11381a(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/user/register")
    /* renamed from: b */
    Observable<UserInfo> m11380b(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/manager/user/{account}/listen_group")
    /* renamed from: c */
    Observable<NewHttpResult> m11379c(@Path("account") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/code/sms")
    /* renamed from: d */
    Observable<NewHttpResult> m11378d(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/manager/user/{account}/sos_contact")
    /* renamed from: e */
    Observable<NewHttpResult> m11377e(@Path("account") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @HTTP(hasBody = true, method = "DELETE", path = "/v1/manager/user/{account}/group/batch")
    /* renamed from: f */
    Observable<NewHttpResult> m11376f(@Path("account") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/group/{gid}/code")
    /* renamed from: g */
    Observable<CodeEntity> m11375g(@Path("gid") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/manager/user/{account}/group/order")
    /* renamed from: h */
    Observable<NewHttpResult> m11374h(@Path("account") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @PUT("/v1/manager/user/{account}")
    /* renamed from: i */
    Observable<NewHttpResult> m11373i(@Path("account") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/code/sms/validate")
    /* renamed from: j */
    Observable<NewHttpResult> m11372j(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/user/device/list")
    /* renamed from: k */
    Observable<HttpDataList<NetDeviceModel>> m11371k();

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/manager/group/{gid}/user")
    /* renamed from: l */
    Observable<NewHttpResult> m11370l(@Path("gid") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/user/password")
    /* renamed from: m */
    Observable<NewHttpResult> m11369m(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/record/permission/grant")
    /* renamed from: n */
    Observable<NewHttpResult> m11368n(@Body RequestBody requestBody);

    @DELETE("/v1/feedback/{id}")
    @Headers({"Content-Type: application/json", "Accept: application/json"})
    /* renamed from: o */
    Observable<NewHttpResult> m11367o(@Path("id") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @HTTP(hasBody = true, method = "DELETE", path = "/v1/manager/group/{gid}/user")
    /* renamed from: p */
    Observable<NewHttpResult> m11366p(@Path("gid") String str, @Body RequestBody requestBody);

    @POST("/v1/file")
    @Multipart
    /* renamed from: q */
    Observable<UploadFileEntity> m11365q(@Part MultipartBody.Part part);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/user/information")
    /* renamed from: r */
    Observable<UserInfo> m11364r();

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/manager/user/{account}/group")
    /* renamed from: s */
    Observable<HttpDataList<TempGroup>> m11363s(@Path("account") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @PUT("/v1/manager/group/{gid}")
    /* renamed from: t */
    Observable<NewHttpResult> m11362t(@Path("gid") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST("/v1/user/device/bind")
    /* renamed from: u */
    Observable<NetDeviceModel> m11361u(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/group/user/by/code/{code}")
    /* renamed from: v */
    Observable<CreateGroupCodeUserInfo> m11360v(@Path("code") String str);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @PUT("/v1/manager/group/{gid}/owner")
    /* renamed from: w */
    Observable<NewHttpResult> m11359w(@Path("gid") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @HTTP(hasBody = true, method = "DELETE", path = "/v1/manager/user/{account}/listen_group")
    /* renamed from: x */
    Observable<NewHttpResult> m11358x(@Path("account") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @PUT("/v1/manager/group/{gid}/avatar")
    /* renamed from: y */
    Observable<NewHttpResult> m11357y(@Path("gid") String str, @Body RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @GET("/v1/manager/group/{gid}")
    /* renamed from: z */
    Observable<TempGroup> m11356z(@Path("gid") String str, @Query("ope") int i);
}
