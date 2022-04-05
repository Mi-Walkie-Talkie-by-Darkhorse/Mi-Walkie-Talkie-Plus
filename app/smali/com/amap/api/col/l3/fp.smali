.class public abstract Lcom/amap/api/col/l3/fp;
.super Lcom/amap/api/col/l3/ic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/col/l3/ic;"
    }
.end annotation


# instance fields
.field private a:I

.field protected c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:Landroid/content/Context;

.field protected g:Ljava/lang/String;


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

    invoke-direct {p0}, Lcom/amap/api/col/l3/ic;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3/fp;->d:I

    const-string v1, ""

    iput-object v1, p0, Lcom/amap/api/col/l3/fp;->e:Ljava/lang/String;

    iput v0, p0, Lcom/amap/api/col/l3/fp;->a:I

    iput-object p1, p0, Lcom/amap/api/col/l3/fp;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3/fp;->c:Ljava/lang/Object;

    iput v0, p0, Lcom/amap/api/col/l3/fp;->d:I

    const/16 p1, 0x7530

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/ic;->b(I)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/ic;->a(I)V

    return-void
.end method

.method private e()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fo;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/amap/api/col/l3/fp;->d:I

    if-ge v1, v2, :cond_6

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/ib;->b()Lcom/amap/api/col/l3/ib;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3/fp;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/l3/gf;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amap/api/col/l3/ic;->a(Ljava/net/Proxy;)V

    invoke-virtual {v2, p0}, Lcom/amap/api/col/l3/ib;->b(Lcom/amap/api/col/l3/ic;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/fp;->a([B)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/l3/fp;->d:I
    :try_end_0
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amap/api/col/l3/fo; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v0, Lcom/amap/api/col/l3/fo;

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/fo;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/amap/api/col/l3/fp;->d:I

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amap/api/col/l3/fo;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/fo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/fo;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/amap/api/col/l3/fp;->d:I

    const-string v4, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    const-string v5, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    const-string v6, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    const-string v7, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    if-ge v1, v3, :cond_3

    :try_start_1
    iget v3, p0, Lcom/amap/api/col/l3/fp;->a:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    nop

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/amap/api/col/l3/fo;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/fv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/fo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    new-instance v0, Lcom/amap/api/col/l3/fo;

    invoke-direct {v0, v6}, Lcom/amap/api/col/l3/fo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lcom/amap/api/col/l3/fv;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/amap/api/col/l3/fo;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/fv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/fo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    new-instance v0, Lcom/amap/api/col/l3/fo;

    invoke-direct {v0, v6}, Lcom/amap/api/col/l3/fo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v0
.end method


# virtual methods
.method protected a([B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fo;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/amap/api/col/l3/fr;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/fp;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract b(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fo;
        }
    .end annotation
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fo;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/fp;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3/fp;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
