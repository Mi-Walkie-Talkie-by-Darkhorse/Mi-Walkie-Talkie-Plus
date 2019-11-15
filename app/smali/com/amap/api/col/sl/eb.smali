.class public final Lcom/amap/api/col/sl/eb;
.super Ljava/lang/Object;
.source "StatisticsEntity.java"


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
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/eb;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/eb;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/sl/eb;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/col/sl/eb;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/amap/api/col/sl/eb;->e:Ljava/lang/String;

    return-void
.end method

.method public final a()[B
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v0, v1, [B

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/amap/api/col/sl/eb;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/col/sl/ca;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/sl/eb;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/col/sl/ca;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/sl/eb;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/col/sl/ca;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/sl/eb;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/sl/bu;->p(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/col/sl/ca;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    long-to-int v1, v4

    :goto_0
    const/4 v3, 0x4

    :try_start_3
    new-array v3, v3, [B

    const/4 v4, 0x0

    shr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v1, p0, Lcom/amap/api/col/sl/eb;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v1, p0, Lcom/amap/api/col/sl/eb;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/api/col/sl/ca;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v4, v1

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v5, 0x0

    aput-byte v3, v1, v5

    const/4 v3, 0x1

    aput-byte v4, v1, v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    :try_start_6
    const-string v3, "se"

    const-string v4, "tds"

    invoke-static {v1, v3, v4}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_4
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :cond_2
    :goto_6
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catch_5
    move-exception v3

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
