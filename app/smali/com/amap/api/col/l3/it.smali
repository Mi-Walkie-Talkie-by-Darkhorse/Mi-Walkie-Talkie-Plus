.class public final Lcom/amap/api/col/l3/it;
.super Lcom/amap/api/col/l3/iu;
.source "StatisticsPubDataStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/iu;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3/iu;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/iu;-><init>(Lcom/amap/api/col/l3/iu;)V

    return-void
.end method


# virtual methods
.method protected final a([B)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x35

    if-eq v1, v3, :cond_0

    new-array p1, v2, [B

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/gi;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 8
    array-length v1, v0

    array-length v3, p1

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 9
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    array-length v0, v0

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
