.class public final Lcom/amap/api/col/l3/ld;
.super Ljava/lang/Object;
.source "LocNetManager.java"


# static fields
.field private static b:Lcom/amap/api/col/l3/ld;


# instance fields
.field a:Lcom/amap/api/col/l3/hx;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/ld;->a:Lcom/amap/api/col/l3/hx;

    iput-object v0, p0, Lcom/amap/api/col/l3/ld;->c:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/ld;->d:I

    sget v1, Lcom/amap/api/col/l3/lg;->f:I

    iput v1, p0, Lcom/amap/api/col/l3/ld;->e:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3/ld;->f:Z

    iput-object p1, p0, Lcom/amap/api/col/l3/ld;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/hx;->a()Lcom/amap/api/col/l3/hx;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/ld;->a:Lcom/amap/api/col/l3/hx;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/l3/ld;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3/ld;->b:Lcom/amap/api/col/l3/ld;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/ld;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/ld;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/col/l3/ld;->b:Lcom/amap/api/col/l3/ld;

    :cond_0
    sget-object p0, Lcom/amap/api/col/l3/ld;->b:Lcom/amap/api/col/l3/ld;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3/le;)Lcom/amap/api/col/l3/ie;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/amap/api/col/l3/ld;->f:Z

    invoke-static {p1, v2}, Lcom/amap/api/col/l3/hx;->a(Lcom/amap/api/col/l3/ic;Z)Lcom/amap/api/col/l3/ie;

    move-result-object p1

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/ld;->d:I

    return-object p1
.end method

.method public final a(Landroid/content/Context;[BLjava/lang/String;)Lcom/amap/api/col/l3/le;
    .locals 9

    const-string v0, "1"

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/amap/api/col/l3/le;

    invoke-static {}, Lcom/amap/api/col/l3/lg;->b()Lcom/amap/api/col/l3/gh;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/amap/api/col/l3/le;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "Content-Type"

    const-string v4, "application/octet-stream"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "gzipped"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "User-Agent"

    const-string v4, "AMAP_Location_SDK_Android 3.6.0"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "KEY"

    invoke-static {p1}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "enginever"

    const-string v4, "4.7"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/l3/fz;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/amap/api/col/l3/fz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ts"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "scode"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "encr"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v2, Lcom/amap/api/col/l3/le;->c:Ljava/util/Map;

    const-string v0, "loc"

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/amap/api/col/l3/le;->m:Z

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "3.6.0"

    aput-object v8, v6, v7

    aput-object v0, v6, v1

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v0

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/amap/api/col/l3/le;->k:Ljava/lang/String;

    iput-boolean v1, v2, Lcom/amap/api/col/l3/le;->g:Z

    iput-object p3, v2, Lcom/amap/api/col/l3/le;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/amap/api/col/l3/lj;->a([B)[B

    move-result-object p2

    iput-object p2, v2, Lcom/amap/api/col/l3/le;->e:[B

    invoke-static {p1}, Lcom/amap/api/col/l3/gf;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amap/api/col/l3/ic;->a(Ljava/net/Proxy;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "output"

    const-string p3, "bin"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "policy"

    const-string p3, "3103"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v2, Lcom/amap/api/col/l3/le;->l:Ljava/util/Map;

    iget p1, p0, Lcom/amap/api/col/l3/ld;->e:I

    invoke-virtual {v2, p1}, Lcom/amap/api/col/l3/ic;->a(I)V

    iget p1, p0, Lcom/amap/api/col/l3/ld;->e:I

    invoke-virtual {v2, p1}, Lcom/amap/api/col/l3/ic;->b(I)V

    iget-boolean p1, p0, Lcom/amap/api/col/l3/ld;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/amap/api/col/l3/le;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    const-string p3, "https"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/amap/api/col/l3/le;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    const/4 v2, 0x0

    :catchall_1
    :cond_0
    :goto_0
    return-object v2
.end method

.method public final a(JZ)V
    .locals 0

    :try_start_0
    iput-boolean p3, p0, Lcom/amap/api/col/l3/ld;->f:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/ld;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "netmanager"

    const-string p3, "setOption"

    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
