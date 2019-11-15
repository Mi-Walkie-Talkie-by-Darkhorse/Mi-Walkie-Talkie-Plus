.class public Lcom/amap/api/mapcore/util/ge;
.super Lcom/amap/api/mapcore/util/hv;
.source "LogUpdateRequest.java"


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/hv;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ge;->b:Ljava/lang/String;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ge;->a:[B

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/hv;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ge;->b:Ljava/lang/String;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ge;->a:[B

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ge;->b:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x32

    const/4 v3, 0x0

    sget-object v0, Lcom/amap/api/mapcore/util/ga;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x32

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ge;->a:[B

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fu;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Length"

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ge;->a:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/amap/api/mapcore/util/ga;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ge;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "open"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ge;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ge;->a:[B

    return-object v0
.end method
