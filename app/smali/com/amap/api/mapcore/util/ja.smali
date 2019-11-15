.class public final Lcom/amap/api/mapcore/util/ja;
.super Ljava/lang/Object;
.source "LocNetManager.java"


# static fields
.field private static b:Lcom/amap/api/mapcore/util/ja;


# instance fields
.field a:Lcom/amap/api/mapcore/util/hp;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore/util/ja;->b:Lcom/amap/api/mapcore/util/ja;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ja;->a:Lcom/amap/api/mapcore/util/hp;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ja;->c:Landroid/content/Context;

    iput v1, p0, Lcom/amap/api/mapcore/util/ja;->d:I

    sget v0, Lcom/amap/api/mapcore/util/jd;->f:I

    iput v0, p0, Lcom/amap/api/mapcore/util/ja;->e:I

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/ja;->f:Z

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ja;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/hp;->a()Lcom/amap/api/mapcore/util/hp;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ja;->a:Lcom/amap/api/mapcore/util/hp;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/ja;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore/util/ja;->b:Lcom/amap/api/mapcore/util/ja;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/ja;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ja;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/mapcore/util/ja;->b:Lcom/amap/api/mapcore/util/ja;

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/ja;->b:Lcom/amap/api/mapcore/util/ja;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/amap/api/mapcore/util/jb;)Lcom/amap/api/mapcore/util/hx;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ja;->a:Lcom/amap/api/mapcore/util/hp;

    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/ja;->f:Z

    invoke-virtual {v2, p1, v3}, Lcom/amap/api/mapcore/util/hp;->a(Lcom/amap/api/mapcore/util/hv;Z)Lcom/amap/api/mapcore/util/hx;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ja;->d:I

    return-object v2
.end method

.method public final a(Landroid/content/Context;[BLjava/lang/String;)Lcom/amap/api/mapcore/util/jb;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/amap/api/mapcore/util/jb;

    invoke-static {}, Lcom/amap/api/mapcore/util/jd;->b()Lcom/amap/api/mapcore/util/fx;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/amap/api/mapcore/util/jb;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

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

    const-string v3, "AMAP_Location_SDK_Android 3.6.0"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY"

    invoke-static {p1}, Lcom/amap/api/mapcore/util/fo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enginever"

    const-string v3, "4.7"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/mapcore/util/fr;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amap/api/mapcore/util/fo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore/util/fr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scode"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "encr"

    const-string v3, "1"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/jb;->b(Ljava/util/Map;)V

    const-string v1, "loc"

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/jb;->o()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "3.6.0"

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

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/jb;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/jb;->d()V

    invoke-virtual {v0, p3}, Lcom/amap/api/mapcore/util/jb;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/amap/api/mapcore/util/jg;->a([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/jb;->b([B)V

    invoke-static {p1}, Lcom/amap/api/mapcore/util/fv;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/jb;->a(Ljava/net/Proxy;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "output"

    const-string v3, "bin"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "policy"

    const-string v3, "3103"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/jb;->a(Ljava/util/Map;)V

    iget v1, p0, Lcom/amap/api/mapcore/util/ja;->e:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/jb;->a(I)V

    iget v1, p0, Lcom/amap/api/mapcore/util/ja;->e:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/jb;->b(I)V

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/ja;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/jb;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    const-string v3, "https"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/jb;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final a(JZ)V
    .locals 3

    :try_start_0
    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/ja;->f:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ja;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "netmanager"

    const-string v2, "setOption"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
