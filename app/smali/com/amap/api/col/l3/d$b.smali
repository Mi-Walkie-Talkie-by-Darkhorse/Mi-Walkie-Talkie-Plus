.class final Lcom/amap/api/col/l3/d$b;
.super Landroid/os/HandlerThread;
.source "AmapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/col/l3/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/d$b;->a:Lcom/amap/api/col/l3/d;

    .line 3
    iput-object p2, p0, Lcom/amap/api/col/l3/d$b;->a:Lcom/amap/api/col/l3/d;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/d$b;->a:Lcom/amap/api/col/l3/d;

    iget-object v0, v0, Lcom/amap/api/col/l3/d;->g:Lcom/amap/api/col/l3/i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/i;->a()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/d$b;->a:Lcom/amap/api/col/l3/d;

    invoke-static {v0}, Lcom/amap/api/col/l3/d;->a(Lcom/amap/api/col/l3/d;)V

    .line 3
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final run()V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
