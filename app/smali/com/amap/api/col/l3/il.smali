.class public final Lcom/amap/api/col/l3/il;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/il;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3/il;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/l3/il;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/col/l3/il;->b:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string p2, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/l3/il;->e:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()[B
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/il;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/il;->d:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/il;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/il;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3/gb;->r(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-int v2, v4

    goto :goto_0

    :catchall_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x4

    :try_start_3
    new-array v4, v4, [B

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v7, 0x2

    aput-byte v5, v4, v7

    const/4 v5, 0x3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/amap/api/col/l3/il;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v7, [B

    aput-byte v0, v2, v0

    aput-byte v0, v2, v6

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/il;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/amap/api/col/l3/gi;->a(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_1

    new-array v2, v7, [B

    aput-byte v0, v2, v0

    aput-byte v0, v2, v6

    goto :goto_1

    :cond_1
    array-length v2, v2

    div-int/lit16 v4, v2, 0x100

    int-to-byte v4, v4

    rem-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    new-array v5, v7, [B

    aput-byte v4, v5, v0

    aput-byte v2, v5, v6

    move-object v2, v5

    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/amap/api/col/l3/il;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/l3/gi;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_3
    move-exception v0

    :goto_2
    :try_start_5
    const-string v3, "se"

    const-string v4, "tds"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_3
    return-object v1

    :catchall_4
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    throw v0
.end method
