.class public final Lcom/amap/api/col/sl/fl;
.super Ljava/lang/Object;
.source "LocNetManager.java"


# static fields
.field private static c:Lcom/amap/api/col/sl/fl;


# instance fields
.field a:Lcom/amap/api/col/sl/dn;

.field b:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/sl/fl;->c:Lcom/amap/api/col/sl/fl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/fl;->a:Lcom/amap/api/col/sl/dn;

    iput v1, p0, Lcom/amap/api/col/sl/fl;->d:I

    sget v0, Lcom/amap/api/col/sl/fq;->f:I

    iput v0, p0, Lcom/amap/api/col/sl/fl;->e:I

    iput-boolean v1, p0, Lcom/amap/api/col/sl/fl;->f:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Lcom/amap/api/col/sl/fl;->b:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {}, Lcom/amap/api/col/sl/dn;->a()Lcom/amap/api/col/sl/dn;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/fl;->a:Lcom/amap/api/col/sl/dn;

    return-void
.end method

.method public static a()Lcom/amap/api/col/sl/fl;
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/fl;->c:Lcom/amap/api/col/sl/fl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/fl;

    invoke-direct {v0}, Lcom/amap/api/col/sl/fl;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/fl;->c:Lcom/amap/api/col/sl/fl;

    :cond_0
    sget-object v0, Lcom/amap/api/col/sl/fl;->c:Lcom/amap/api/col/sl/fl;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/sl/fm;)Lcom/amap/api/col/sl/du;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/sl/fl;->a:Lcom/amap/api/col/sl/dn;

    iget-boolean v2, p0, Lcom/amap/api/col/sl/fl;->f:Z

    invoke-static {p1, v2}, Lcom/amap/api/col/sl/dn;->a(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/sl/fl;->d:I

    return-object v2
.end method

.method public final a(Landroid/content/Context;[BLjava/lang/String;Z)Lcom/amap/api/col/sl/fm;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/amap/api/col/sl/fm;

    invoke-static {}, Lcom/amap/api/col/sl/fq;->b()Lcom/amap/api/col/sl/bz;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/amap/api/col/sl/fm;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gzipped"

    const-string v3, "1"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "User-Agent"

    const-string v3, "AMAP_Location_SDK_Android 3.8.0"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY"

    invoke-static {p1}, Lcom/amap/api/col/sl/bp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enginever"

    const-string v3, "4.9"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/sl/bs;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amap/api/col/sl/bp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/amap/api/col/sl/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scode"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "encr"

    const-string v3, "1"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/amap/api/col/sl/fm;->c:Ljava/util/Map;

    const-string v1, "loc"

    if-nez p4, :cond_0

    const-string v1, "locf"

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amap/api/col/sl/fm;->m:Z

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "3.8.0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/sl/fm;->k:Ljava/lang/String;

    iput-boolean p4, v0, Lcom/amap/api/col/sl/fm;->j:Z

    iput-object p3, v0, Lcom/amap/api/col/sl/fm;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/amap/api/col/sl/fy;->a([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/sl/fm;->e:[B

    invoke-static {p1}, Lcom/amap/api/col/sl/bx;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fm;->a(Ljava/net/Proxy;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "output"

    const-string v3, "bin"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "policy"

    const-string v3, "3103"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/amap/api/col/sl/fl$1;->a:[I

    iget-object v3, p0, Lcom/amap/api/col/sl/fl;->b:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    iput-object v1, v0, Lcom/amap/api/col/sl/fm;->l:Ljava/util/Map;

    iget v1, p0, Lcom/amap/api/col/sl/fl;->e:I

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fm;->a(I)V

    iget v1, p0, Lcom/amap/api/col/sl/fl;->e:I

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fm;->b(I)V

    iget-boolean v1, p0, Lcom/amap/api/col/sl/fl;->f:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fm;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    const-string v3, "https"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/sl/fm;->d:Ljava/lang/String;

    :cond_1
    :goto_1
    return-object v0

    :pswitch_0
    const-string v2, "custom"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :pswitch_1
    const-string v2, "custom"

    const-string v3, "language:cn"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    const-string v2, "custom"

    const-string v3, "language:en"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/amap/api/col/sl/fm;

    invoke-static {}, Lcom/amap/api/col/sl/fq;->b()Lcom/amap/api/col/sl/bz;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/amap/api/col/sl/fm;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "User-Agent"

    const-string v4, "AMAP_Location_SDK_Android 3.8.0"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "custom"

    const-string v5, "26260A1F00020002"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "key"

    invoke-static {p1}, Lcom/amap/api/col/sl/bp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/amap/api/col/sl/fl$1;->a:[I

    iget-object v5, p0, Lcom/amap/api/col/sl/fl;->b:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-virtual {v5}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/amap/api/col/sl/bs;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/amap/api/col/sl/ca;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/amap/api/col/sl/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ts"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "scode"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "output=json&radius=1000&extensions=all&location="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/col/sl/fm;->b([B)V

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/amap/api/col/sl/fm;->m:Z

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/amap/api/col/sl/fm;->j:Z

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "3.8.0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "loc"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/amap/api/col/sl/fm;->k:Ljava/lang/String;

    iput-object v3, v2, Lcom/amap/api/col/sl/fm;->l:Ljava/util/Map;

    iput-object v0, v2, Lcom/amap/api/col/sl/fm;->c:Ljava/util/Map;

    const-string v0, "http://restapi.amap.com/v3/geocode/regeo"

    iput-object v0, v2, Lcom/amap/api/col/sl/fm;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/col/sl/bx;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/fm;->a(Ljava/net/Proxy;)V

    sget v0, Lcom/amap/api/col/sl/fq;->f:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/fm;->a(I)V

    sget v0, Lcom/amap/api/col/sl/fq;->f:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/fm;->b(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fl;->a:Lcom/amap/api/col/sl/dn;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/dn;->b(Lcom/amap/api/col/sl/ds;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :pswitch_0
    :try_start_2
    const-string v4, "language"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :pswitch_1
    const-string v4, "language"

    const-string v5, "zh-CN"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_2
    const-string v4, "language"

    const-string v5, "en"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "LocNetManager"

    const-string v3, "post"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/amap/api/col/sl/fk;

    invoke-direct {v2}, Lcom/amap/api/col/sl/fk;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v2, Lcom/amap/api/col/sl/fk;->a:Ljava/util/Map;

    iput-object p3, v2, Lcom/amap/api/col/sl/fk;->c:Ljava/lang/String;

    iput-object p1, v2, Lcom/amap/api/col/sl/fk;->d:[B

    invoke-static {p2}, Lcom/amap/api/col/sl/bx;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/fk;->a(Ljava/net/Proxy;)V

    sget v0, Lcom/amap/api/col/sl/fq;->f:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/fk;->a(I)V

    sget v0, Lcom/amap/api/col/sl/fq;->f:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/fk;->b(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fl;->a:Lcom/amap/api/col/sl/dn;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/dn;->b(Lcom/amap/api/col/sl/ds;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "LocNetManager"

    const-string v3, "post"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(JZLcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)V
    .locals 3

    :try_start_0
    iput-boolean p3, p0, Lcom/amap/api/col/sl/fl;->f:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/sl/fl;->e:I

    if-nez p4, :cond_0

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Lcom/amap/api/col/sl/fl;->b:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    :goto_0
    return-void

    :cond_0
    iput-object p4, p0, Lcom/amap/api/col/sl/fl;->b:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "netmanager"

    const-string v2, "setOption"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/fl;->d:I

    return v0
.end method
