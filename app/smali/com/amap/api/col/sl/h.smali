.class public final Lcom/amap/api/col/sl/h;
.super Ljava/lang/Object;
.source "H5LocationClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/h$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Lcom/amap/api/location/AMapLocationClientOption;

.field c:Lcom/amap/api/col/sl/h$a;

.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/location/AMapLocationClient;

.field private f:Landroid/webkit/WebView;

.field private g:Ljava/lang/String;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/h;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    iput-object v1, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    const-string v0, "AMap.Geolocation.cbk"

    iput-object v0, p0, Lcom/amap/api/col/sl/h;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/sl/h;->b:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/h;->h:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/h;->c:Lcom/amap/api/col/sl/h$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/h;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    new-instance v0, Lcom/amap/api/col/sl/h$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/h$a;-><init>(Lcom/amap/api/col/sl/h;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/h;->c:Lcom/amap/api/col/sl/h$a;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/location/AMapLocation;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/amap/api/col/sl/h;->b(Lcom/amap/api/location/AMapLocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/h;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/sl/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/col/sl/h$1;

    invoke-direct {v2, p0}, Lcom/amap/api/col/sl/h$1;-><init>(Lcom/amap/api/col/sl/h;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/amap/api/col/sl/h$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/sl/h$2;-><init>(Lcom/amap/api/col/sl/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "H5LocationClient"

    const-string v2, "callbackJs()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/h;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method private static b(Lcom/amap/api/location/AMapLocation;)Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    :try_start_0
    const-string v1, "errorCode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errorInfo"

    const-string v2, "unknownError"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "errorCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "x"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "y"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "precision"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "country"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "province"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "city"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cityCode"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "district"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adCode"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "street"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "streetNum"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getStreetNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "floor"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getFloor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "address"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_1
    const-string v1, "errorCode"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errorInfo"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "locationDetail"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/amap/api/col/sl/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/h;->h:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/sl/h;->h:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    const-string v1, "AMapAndroidLoc"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    if-nez v0, :cond_3

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/amap/api/col/sl/h;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/amap/api/col/sl/h;->c:Lcom/amap/api/col/sl/h$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/h;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/col/sl/h;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/sl/h;->h:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p0, Lcom/amap/api/col/sl/h;->c:Lcom/amap/api/col/sl/h$a;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClient;->unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/h;->b:Lcom/amap/api/location/AMapLocationClientOption;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getLocation(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-wide/16 v2, 0x7530

    const/4 v0, 0x5

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/amap/api/col/sl/h;->a:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean v1, p0, Lcom/amap/api/col/sl/h;->h:Z

    if-nez v1, :cond_0

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/sl/h;->b:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/sl/h;->b:Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "to"

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v1, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "useGPS"

    const/4 v5, 0x1

    invoke-virtual {v8, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-ne v1, v6, :cond_5

    move v5, v6

    :goto_1
    :try_start_2
    const-string v1, "watch"

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-ne v1, v6, :cond_6

    move v1, v6

    :goto_2
    :try_start_3
    const-string v9, "interval"

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v9, "callback"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    iput-object v8, p0, Lcom/amap/api/col/sl/h;->g:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    iget-object v8, p0, Lcom/amap/api/col/sl/h;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v8, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v5, :cond_8

    iget-object v2, p0, Lcom/amap/api/col/sl/h;->b:Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    :goto_4
    iget-object v2, p0, Lcom/amap/api/col/sl/h;->b:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v1, :cond_2

    move v4, v6

    :cond_2
    invoke-virtual {v2, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/sl/h;->b:Lcom/amap/api/location/AMapLocationClientOption;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/amap/api/col/sl/h;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :cond_4
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_5
    move v5, v4

    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_2

    :cond_7
    :try_start_6
    const-string v8, "AMap.Geolocation.cbk"

    iput-object v8, p0, Lcom/amap/api/col/sl/h;->g:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v8

    goto :goto_3

    :cond_8
    :try_start_7
    iget-object v2, p0, Lcom/amap/api/col/sl/h;->b:Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v1

    move v1, v4

    move v5, v4

    goto :goto_3

    :catch_3
    move-exception v1

    move v1, v4

    goto :goto_3
.end method

.method public final stopLocation()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/sl/h;->h:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/h;->e:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    goto :goto_0
.end method
