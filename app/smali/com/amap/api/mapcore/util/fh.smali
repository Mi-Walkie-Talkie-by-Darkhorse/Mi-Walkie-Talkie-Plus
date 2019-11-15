.class public abstract Lcom/amap/api/mapcore/util/fh;
.super Lcom/amap/api/mapcore/util/hv;
.source "BasicHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/mapcore/util/hv;"
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

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/hv;-><init>()V

    iput v1, p0, Lcom/amap/api/mapcore/util/fh;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fh;->e:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/mapcore/util/fh;->a:I

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/fh;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private a([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fg;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/fh;->b([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    const/16 v1, 0x7530

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fh;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/fh;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/fh;->d:I

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/fh;->b(I)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/fh;->a(I)V

    return-void
.end method

.method private f()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fg;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore/util/fh;->d:I

    if-ge v0, v2, :cond_6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/amap/api/mapcore/util/hu;->a(Z)Lcom/amap/api/mapcore/util/hu;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/fh;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/fv;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore/util/fh;->a(Ljava/net/Proxy;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, p0}, Lcom/amap/api/mapcore/util/fh;->a(ILcom/amap/api/mapcore/util/hu;Lcom/amap/api/mapcore/util/hv;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/fh;->a([B)Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/amap/api/mapcore/util/fh;->d:I
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amap/api/mapcore/util/fg; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/amap/api/mapcore/util/fh;->d:I

    if-ge v0, v3, :cond_3

    :try_start_1
    iget v3, p0, Lcom/amap/api/mapcore/util/fh;->a:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fn;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fn;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fn;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/fh;->e()Ljava/lang/Object;

    const-string v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fn;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fn;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fn;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/amap/api/mapcore/util/fh;->d:I

    if-lt v0, v3, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/fg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v1
.end method


# virtual methods
.method public a()Ljava/util/Map;
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

.method protected a(ILcom/amap/api/mapcore/util/hu;Lcom/amap/api/mapcore/util/hv;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fn;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p2, p3}, Lcom/amap/api/mapcore/util/hu;->b(Lcom/amap/api/mapcore/util/hv;)[B

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p2, p3}, Lcom/amap/api/mapcore/util/hu;->a(Lcom/amap/api/mapcore/util/hv;)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected b([B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fg;
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

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fh;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/fj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/fh;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
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

.method protected abstract c(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fg;
        }
    .end annotation
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fg;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fh;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fh;->f()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
