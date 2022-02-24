.class public final Lcom/amap/api/col/l3/ju;
.super Ljava/lang/Object;
.source "LocNetManager.java"


# static fields
.field private static b:Lcom/amap/api/col/l3/ju;


# instance fields
.field a:Lcom/amap/api/col/l3/hx;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/ju;->a:Lcom/amap/api/col/l3/hx;

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/ju;->c:Landroid/content/Context;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/ju;->d:I

    .line 5
    sget v1, Lcom/amap/api/col/l3/jz;->f:I

    iput v1, p0, Lcom/amap/api/col/l3/ju;->e:I

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/col/l3/ju;->f:Z

    .line 7
    iput v0, p0, Lcom/amap/api/col/l3/ju;->g:I

    .line 8
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/gd;->a()Lcom/amap/api/col/l3/gd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/gd;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :catchall_0
    iput-object p1, p0, Lcom/amap/api/col/l3/ju;->c:Landroid/content/Context;

    .line 10
    invoke-static {}, Lcom/amap/api/col/l3/hx;->a()Lcom/amap/api/col/l3/hx;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/ju;->a:Lcom/amap/api/col/l3/hx;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/l3/ju;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/col/l3/ju;->b:Lcom/amap/api/col/l3/ju;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/ju;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/ju;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/col/l3/ju;->b:Lcom/amap/api/col/l3/ju;

    .line 3
    :cond_0
    sget-object p0, Lcom/amap/api/col/l3/ju;->b:Lcom/amap/api/col/l3/ju;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/amap/api/col/l3/ju;->d:I

    return v0
.end method

.method public final a(Lcom/amap/api/col/l3/jv;)Lcom/amap/api/col/l3/ie;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    .line 48
    iget-boolean v2, p0, Lcom/amap/api/col/l3/ju;->f:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3/ju;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3/ki;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 49
    :goto_1
    invoke-static {p1, v2}, Lcom/amap/api/col/l3/hx;->a(Lcom/amap/api/col/l3/ic;Z)Lcom/amap/api/col/l3/ie;

    move-result-object p1

    .line 50
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/ju;->d:I

    return-object p1
.end method

.method public final a(Landroid/content/Context;[BLjava/lang/String;Z)Lcom/amap/api/col/l3/jv;
    .locals 11

    const-string v0, "https:"

    const-string v1, "1"

    const/4 v2, 0x0

    .line 9
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    new-instance v5, Lcom/amap/api/col/l3/jv;

    invoke-static {}, Lcom/amap/api/col/l3/jz;->b()Lcom/amap/api/col/l3/gh;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/amap/api/col/l3/jv;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "Content-Type"

    const-string v6, "application/octet-stream"

    .line 11
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Accept-Encoding"

    const-string v6, "gzip"

    .line 12
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gzipped"

    .line 13
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Connection"

    const-string v6, "Keep-Alive"

    .line 14
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "User-Agent"

    const-string v6, "AMAP_Location_SDK_Android 4.7.2"

    .line 15
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY"

    .line 16
    invoke-static {p1}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "enginever"

    const-string v6, "5.1"

    .line 17
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/amap/api/col/l3/fz;->a()Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "key="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v2, v6}, Lcom/amap/api/col/l3/fz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ts"

    .line 20
    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "scode"

    .line 21
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "encr"

    .line 22
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-object v3, v5, Lcom/amap/api/col/l3/jv;->c:Ljava/util/Map;

    const-string v1, "loc"

    if-nez p4, :cond_0

    const-string v1, "locf"

    :cond_0
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, v5, Lcom/amap/api/col/l3/jv;->m:Z

    .line 25
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "4.7.2"

    aput-object v10, v8, v9

    aput-object v1, v8, v2

    .line 26
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v8, v7

    .line 27
    invoke-static {v3, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/amap/api/col/l3/jv;->k:Ljava/lang/String;

    .line 28
    iput-boolean p4, v5, Lcom/amap/api/col/l3/jv;->g:Z

    .line 29
    iput-object p3, v5, Lcom/amap/api/col/l3/jv;->d:Ljava/lang/String;

    .line 30
    invoke-static {p2}, Lcom/amap/api/col/l3/ki;->a([B)[B

    move-result-object p2

    iput-object p2, v5, Lcom/amap/api/col/l3/jv;->e:[B

    .line 31
    invoke-static {p1}, Lcom/amap/api/col/l3/gf;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/amap/api/col/l3/ic;->a(Ljava/net/Proxy;)V

    .line 32
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string p4, "output"

    const-string v1, "bin"

    .line 33
    invoke-interface {p2, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "policy"

    const-string v1, "3103"

    .line 34
    invoke-interface {p2, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget p4, p0, Lcom/amap/api/col/l3/ju;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "custom"

    if-eqz p4, :cond_3

    if-eq p4, v2, :cond_2

    if-eq p4, v7, :cond_1

    .line 36
    :try_start_2
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p4, "language:en"

    .line 37
    invoke-interface {p2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p4, "language:cn"

    .line 38
    invoke-interface {p2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :goto_0
    iput-object p2, v5, Lcom/amap/api/col/l3/jv;->l:Ljava/util/Map;

    .line 41
    iget p2, p0, Lcom/amap/api/col/l3/ju;->e:I

    invoke-virtual {v5, p2}, Lcom/amap/api/col/l3/ic;->a(I)V

    .line 42
    iget p2, p0, Lcom/amap/api/col/l3/ju;->e:I

    invoke-virtual {v5, p2}, Lcom/amap/api/col/l3/ic;->b(I)V

    .line 43
    iget-boolean p2, p0, Lcom/amap/api/col/l3/ju;->f:Z

    if-nez p2, :cond_4

    .line 44
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->k(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-string p1, "http:"

    .line 45
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 46
    invoke-virtual {v5}, Lcom/amap/api/col/l3/jv;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/amap/api/col/l3/jv;->d:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v2, v5

    :catchall_1
    move-object v5, v2

    :cond_5
    :goto_1
    return-object v5
.end method

.method public final a(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 8

    .line 51
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 52
    new-instance v2, Lcom/amap/api/col/l3/jv;

    invoke-static {}, Lcom/amap/api/col/l3/jz;->b()Lcom/amap/api/col/l3/gh;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/amap/api/col/l3/jv;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V

    .line 53
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    .line 54
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    .line 55
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "User-Agent"

    const-string v4, "AMAP_Location_SDK_Android 4.7.2"

    .line 56
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "custom"

    const-string v4, "26260A1F00020002"

    .line 58
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key"

    .line 59
    invoke-static {p1}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget v1, p0, Lcom/amap/api/col/l3/ju;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "language"

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    .line 61
    :try_start_1
    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "en"

    .line 62
    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "zh-CN"

    .line 63
    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_0
    invoke-static {}, Lcom/amap/api/col/l3/fz;->a()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v3}, Lcom/amap/api/col/l3/gi;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v1, v6}, Lcom/amap/api/col/l3/fz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ts"

    .line 67
    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scode"

    .line 68
    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "output=json&radius=1000&extensions=all&location="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 71
    invoke-virtual {v2, p2}, Lcom/amap/api/col/l3/jv;->b([B)V

    const/4 p2, 0x0

    .line 72
    iput-boolean p2, v2, Lcom/amap/api/col/l3/jv;->m:Z

    .line 73
    iput-boolean v5, v2, Lcom/amap/api/col/l3/jv;->g:Z

    .line 74
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p4, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 p5, 0x3

    new-array v1, p5, [Ljava/lang/Object;

    const-string v6, "4.7.2"

    aput-object v6, v1, p2

    const-string p2, "loc"

    aput-object p2, v1, v5

    .line 75
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    .line 76
    invoke-static {p3, p4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/amap/api/col/l3/jv;->k:Ljava/lang/String;

    .line 77
    iput-object v3, v2, Lcom/amap/api/col/l3/jv;->l:Ljava/util/Map;

    .line 78
    iput-object v0, v2, Lcom/amap/api/col/l3/jv;->c:Ljava/util/Map;

    .line 79
    invoke-static {p1}, Lcom/amap/api/col/l3/gf;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/amap/api/col/l3/ic;->a(Ljava/net/Proxy;)V

    .line 80
    sget p2, Lcom/amap/api/col/l3/jz;->f:I

    invoke-virtual {v2, p2}, Lcom/amap/api/col/l3/ic;->a(I)V

    .line 81
    sget p2, Lcom/amap/api/col/l3/jz;->f:I

    invoke-virtual {v2, p2}, Lcom/amap/api/col/l3/ic;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string p2, "http://restapi.amap.com/v3/geocode/regeo"

    .line 82
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->k(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "http:"

    const-string p3, "https:"

    .line 83
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/amap/api/col/l3/jv;->d:Ljava/lang/String;

    .line 84
    invoke-static {v2}, Lcom/amap/api/col/l3/hx;->a(Lcom/amap/api/col/l3/ic;)[B

    move-result-object p1

    goto :goto_1

    .line 85
    :cond_3
    iput-object p2, v2, Lcom/amap/api/col/l3/jv;->d:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/amap/api/col/l3/ju;->a:Lcom/amap/api/col/l3/hx;

    invoke-virtual {p1, v2}, Lcom/amap/api/col/l3/hx;->b(Lcom/amap/api/col/l3/ic;)[B

    move-result-object p1

    .line 87
    :goto_1
    new-instance p2, Ljava/lang/String;

    const-string p3, "utf-8"

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    const-string p2, "LocNetManager"

    const-string p3, "post"

    .line 88
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    const/4 p2, 0x0

    :goto_2
    return-object p2
.end method

.method public final a(JZI)V
    .locals 1

    .line 4
    :try_start_0
    iput-boolean p3, p0, Lcom/amap/api/col/l3/ju;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3/gd;->a()Lcom/amap/api/col/l3/gd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amap/api/col/l3/gd;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catchall_0
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/ju;->e:I

    .line 7
    iput p4, p0, Lcom/amap/api/col/l3/ju;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string p2, "LocNetManager"

    const-string p3, "setOption"

    .line 8
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
