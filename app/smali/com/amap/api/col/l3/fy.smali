.class public final Lcom/amap/api/col/l3/fy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:I = -0x1

.field public static b:Ljava/lang/String; = ""

.field private static c:Lcom/amap/api/col/l3/gh; = null

.field private static d:Ljava/lang/String; = "http://apiinit.amap.com/v3/log/init"

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "resType"

    const-string v2, "json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "encode"

    const-string v2, "UTF-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/l3/fz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key"

    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resType=json&encode=UTF-8&key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3/gi;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "scode"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3/fz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Auth"

    const-string v2, "gParams"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/amap/api/col/l3/fy;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/fy;->b(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a([B)Z
    .locals 7

    const-string v0, "info"

    const-string v1, "status"

    const-string v2, "lData"

    const-string v3, "Auth"

    const/4 v4, 0x1

    if-nez p0, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/gi;->a([B)Ljava/lang/String;

    move-result-object p0

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v4, :cond_1

    sput v4, Lcom/amap/api/col/l3/fy;->a:I

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    sput v5, Lcom/amap/api/col/l3/fy;->a:I

    :cond_2
    :goto_0
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/col/l3/fy;->b:Ljava/lang/String;

    :cond_3
    sget p0, Lcom/amap/api/col/l3/fy;->a:I

    sget p0, Lcom/amap/api/col/l3/fy;->a:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v4, :cond_4

    return v4

    :cond_4
    return v5

    :catchall_0
    move-exception p0

    invoke-static {p0, v3, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0, v3, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v5
.end method

.method private static b(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)Z
    .locals 7

    sput-object p1, Lcom/amap/api/col/l3/fy;->c:Lcom/amap/api/col/l3/gh;

    const/4 p1, 0x1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/l3/fy;->d:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "User-Agent"

    sget-object v3, Lcom/amap/api/col/l3/fy;->c:Lcom/amap/api/col/l3/gh;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/gh;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X-INFO"

    invoke-static {p0}, Lcom/amap/api/col/l3/fz;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "logversion"

    const-string v3, "2.1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platinfo"

    const-string v3, "platform=Android&sdkversion=%s&product=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/amap/api/col/l3/fy;->c:Lcom/amap/api/col/l3/gh;

    invoke-virtual {v6}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v5, Lcom/amap/api/col/l3/fy;->c:Lcom/amap/api/col/l3/gh;

    invoke-virtual {v5}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/l3/hx;->a()Lcom/amap/api/col/l3/hx;

    move-result-object v2

    new-instance v3, Lcom/amap/api/col/l3/gj;

    invoke-direct {v3}, Lcom/amap/api/col/l3/gj;-><init>()V

    invoke-static {p0}, Lcom/amap/api/col/l3/gf;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/col/l3/ic;->a(Ljava/net/Proxy;)V

    invoke-virtual {v3, v1}, Lcom/amap/api/col/l3/gj;->a(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/amap/api/col/l3/fy;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/amap/api/col/l3/gj;->b(Ljava/util/Map;)V

    invoke-virtual {v3, v0}, Lcom/amap/api/col/l3/gj;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3/hx;->b(Lcom/amap/api/col/l3/ic;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/fy;->a([B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Auth"

    const-string v1, "getAuth"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p1
.end method
