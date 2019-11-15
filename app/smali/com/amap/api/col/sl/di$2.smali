.class final Lcom/amap/api/col/sl/di$2;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/di;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/di;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/di;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/di$2;->a:Lcom/amap/api/col/sl/di;

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

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/amap/api/col/sl/di$2;->a:Lcom/amap/api/col/sl/di;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/di$2;->a:Lcom/amap/api/col/sl/di;

    invoke-static {v0}, Lcom/amap/api/col/sl/di;->a(Lcom/amap/api/col/sl/di;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/di$2;->a:Lcom/amap/api/col/sl/di;

    invoke-static {v0}, Lcom/amap/api/col/sl/di;->b(Lcom/amap/api/col/sl/di;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/di$2;->a:Lcom/amap/api/col/sl/di;

    invoke-static {v0}, Lcom/amap/api/col/sl/di;->c(Lcom/amap/api/col/sl/di;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/di$2;->a:Lcom/amap/api/col/sl/di;

    invoke-static {v0}, Lcom/amap/api/col/sl/di;->d(Lcom/amap/api/col/sl/di;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/di$2;->a:Lcom/amap/api/col/sl/di;

    invoke-static {v0}, Lcom/amap/api/col/sl/di;->e(Lcom/amap/api/col/sl/di;)I

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/col/sl/di$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
