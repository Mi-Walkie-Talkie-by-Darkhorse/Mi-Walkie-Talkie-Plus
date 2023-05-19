.class final Lcom/amap/api/col/l3/hs$2;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/hs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/hs;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/hs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/hs$2;->a:Lcom/amap/api/col/l3/hs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/hs$2;->a:Lcom/amap/api/col/l3/hs;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/hs$2;->a:Lcom/amap/api/col/l3/hs;

    invoke-static {v1}, Lcom/amap/api/col/l3/hs;->a(Lcom/amap/api/col/l3/hs;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v2

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/hs$2;->a:Lcom/amap/api/col/l3/hs;

    invoke-static {v1}, Lcom/amap/api/col/l3/hs;->b(Lcom/amap/api/col/l3/hs;)V

    .line 5
    iget-object v1, p0, Lcom/amap/api/col/l3/hs$2;->a:Lcom/amap/api/col/l3/hs;

    invoke-static {v1}, Lcom/amap/api/col/l3/hs;->c(Lcom/amap/api/col/l3/hs;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/hs$2;->a:Lcom/amap/api/col/l3/hs;

    invoke-static {v1}, Lcom/amap/api/col/l3/hs;->d(Lcom/amap/api/col/l3/hs;)V

    .line 7
    iget-object v1, p0, Lcom/amap/api/col/l3/hs$2;->a:Lcom/amap/api/col/l3/hs;

    invoke-static {v1}, Lcom/amap/api/col/l3/hs;->e(Lcom/amap/api/col/l3/hs;)I

    .line 8
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/hs$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
