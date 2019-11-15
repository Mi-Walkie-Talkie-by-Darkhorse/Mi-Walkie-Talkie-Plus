.class public abstract Lcom/amap/api/col/sl/k;
.super Lcom/amap/api/col/sl/ds;
.source "BasicHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/col/sl/ds;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Landroid/content/Context;

.field protected e:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/amap/api/col/sl/ds;-><init>()V

    iput v1, p0, Lcom/amap/api/col/sl/k;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/sl/k;->c:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/col/sl/k;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/sl/k;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/sl/k;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/k;->a:Ljava/lang/Object;

    iput v1, p0, Lcom/amap/api/col/sl/k;->b:I

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getSoTimeOut()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/k;->b(I)V

    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getConnectionTimeOut()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/k;->a(I)V

    return-void
.end method

.method private a([B)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ProtocalHandler"

    const-string v3, "loadData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/amap/api/col/sl/t;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/sl/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private d()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/amap/api/col/sl/k;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v1, ".com/"

    const-string v2, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    :cond_0
    :goto_0
    iget v3, p0, Lcom/amap/api/col/sl/k;->b:I

    if-ge v0, v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_0
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v3

    invoke-static {}, Lcom/amap/api/col/sl/dr;->b()Lcom/amap/api/col/sl/dr;

    iget-object v6, p0, Lcom/amap/api/col/sl/k;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/amap/api/col/sl/bx;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/amap/api/col/sl/k;->a(Ljava/net/Proxy;)V

    invoke-virtual {p0, v3, p0}, Lcom/amap/api/col/sl/k;->a(ILcom/amap/api/col/sl/ds;)[B

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, v3}, Lcom/amap/api/col/sl/k;->a([B)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/sl/k;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/col/sl/k;->d()Ljava/lang/String;

    move-result-object v8

    sub-long/2addr v6, v4

    const/4 v9, 0x1

    invoke-static {v3, v8, v6, v7, v9}, Lcom/amap/api/col/sl/ar;->a(Landroid/content/Context;Ljava/lang/String;JZ)V

    iget v0, p0, Lcom/amap/api/col/sl/k;->b:I
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/amap/api/col/sl/k;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/col/sl/k;->d()Ljava/lang/String;

    move-result-object v9

    sub-long v4, v6, v4

    invoke-static {v8, v9, v4, v5, v1}, Lcom/amap/api/col/sl/ar;->a(Landroid/content/Context;Ljava/lang/String;JZ)V

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/amap/api/col/sl/k;->b:I

    if-ge v0, v4, :cond_3

    :try_start_1
    iget v4, p0, Lcom/amap/api/col/sl/k;->i:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :catch_2
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/amap/api/col/sl/k;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/col/sl/k;->d()Ljava/lang/String;

    move-result-object v9

    sub-long v4, v6, v4

    invoke-static {v8, v9, v4, v5, v1}, Lcom/amap/api/col/sl/ar;->a(Landroid/content/Context;Ljava/lang/String;JZ)V

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/amap/api/col/sl/k;->b:I

    if-lt v0, v4, :cond_0

    throw v3

    :catch_3
    move-exception v0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/sl/k;->a:Ljava/lang/Object;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/k;->g()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/amap/api/col/sl/k;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/sl/k;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/services/core/AMapException;->getErrorType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amap/api/services/core/AMapException;->getErrorLevel()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "4"

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    :cond_0
    :goto_2
    throw v1

    :cond_1
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v5, v6

    rem-int/2addr v0, v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/amap/api/col/sl/s;->a(Z)Lcom/amap/api/col/sl/bz;

    move-result-object v5

    invoke-static {v5, v2, v4, v3, v0}, Lcom/amap/api/col/sl/cm;->a(Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method protected a(ILcom/amap/api/col/sl/ds;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/amap/api/col/sl/dr;->a(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/amap/api/col/sl/du;->a:[B

    iget-object v1, v1, Lcom/amap/api/col/sl/du;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/sl/k;->e:Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-static {p2, v2}, Lcom/amap/api/col/sl/dr;->a(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_0
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

.method public c()Ljava/util/Map;
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
