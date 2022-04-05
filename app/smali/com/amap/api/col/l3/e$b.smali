.class final Lcom/amap/api/col/l3/e$b;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/e;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/e$b;->a:Lcom/amap/api/col/l3/e;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 4

    const-string v0, "APSManager$ActionThread"

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/e$b;->a:Lcom/amap/api/col/l3/e;

    new-instance v2, Lcom/amap/api/col/l3/i;

    iget-object v3, p0, Lcom/amap/api/col/l3/e$b;->a:Lcom/amap/api/col/l3/e;

    iget-object v3, v3, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/amap/api/col/l3/i;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/e;->a(Lcom/amap/api/col/l3/e;Lcom/amap/api/col/l3/i;)Lcom/amap/api/col/l3/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "init 2"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/e$b;->a:Lcom/amap/api/col/l3/e;

    new-instance v2, Lcom/amap/api/col/l3/je;

    invoke-direct {v2}, Lcom/amap/api/col/l3/je;-><init>()V

    iput-object v2, v1, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    const-string v2, "onLooperPrepared"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final run()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "APSManager$ActionThread"

    const-string v2, "run"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
