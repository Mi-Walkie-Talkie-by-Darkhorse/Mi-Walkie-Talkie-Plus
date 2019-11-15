.class public final Lcom/amap/api/col/sl/cl;
.super Lcom/amap/api/col/sl/ds;
.source "LogUpdateRequest.java"


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/sl/ds;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/amap/api/col/sl/cl;->b:Ljava/lang/String;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/amap/api/col/sl/cl;->a:[B

    iput-object p2, p0, Lcom/amap/api/col/sl/cl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
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

.method public final c()Ljava/util/Map;
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

    iget-object v2, p0, Lcom/amap/api/col/sl/cl;->a:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final e()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/cl;->a:[B

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x32

    const/4 v6, 0x0

    sget-object v0, Lcom/amap/api/col/sl/ch;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/sl/ca;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "1"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/col/sl/cl;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "open"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/amap/api/col/sl/ch;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/amap/api/col/sl/ca;->a(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v4, v4, 0x32

    new-array v4, v4, [B

    iget-object v5, p0, Lcom/amap/api/col/sl/cl;->a:[B

    invoke-static {v5, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v3

    invoke-static {v3, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Lcom/amap/api/col/sl/bw;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
