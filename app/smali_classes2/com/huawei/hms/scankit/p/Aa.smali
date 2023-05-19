.class public Lcom/huawei/hms/scankit/p/Aa;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/Aa$e;,
        Lcom/huawei/hms/scankit/p/Aa$b;,
        Lcom/huawei/hms/scankit/p/Aa$c;,
        Lcom/huawei/hms/scankit/p/Aa$a;,
        Lcom/huawei/hms/scankit/p/Aa$d;
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:Lcom/huawei/hms/scankit/p/xa;

.field private c:Lcom/huawei/hms/scankit/p/Aa$c;

.field private d:Lcom/huawei/hms/scankit/p/Aa$a;

.field private e:Landroid/hardware/Camera$PreviewCallback;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/huawei/hms/scankit/p/Ha;

.field private h:Lcom/huawei/hms/scankit/p/Ga;

.field private i:Lcom/huawei/hms/scankit/p/Ja;

.field private j:Lcom/huawei/hms/scankit/p/Ia;

.field private k:Landroid/hardware/Camera;

.field private l:Lcom/huawei/hms/scankit/p/Fa;

.field private m:Lcom/huawei/hms/scankit/p/Ka;

.field private n:Ljava/lang/String;

.field private o:Lcom/huawei/hms/scankit/p/Aa$b;

.field private p:Z

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/scankit/p/xa;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/Aa;->p:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/huawei/hms/scankit/p/Aa;->q:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->f:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p2, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    .line 7
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/xa;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->n:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/huawei/hms/scankit/p/Fa;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Fa;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->l:Lcom/huawei/hms/scankit/p/Fa;

    .line 9
    new-instance v0, Lcom/huawei/hms/scankit/p/Ga;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Ga;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->h:Lcom/huawei/hms/scankit/p/Ga;

    .line 10
    new-instance v0, Lcom/huawei/hms/scankit/p/Ja;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Ja;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->i:Lcom/huawei/hms/scankit/p/Ja;

    .line 11
    new-instance v0, Lcom/huawei/hms/scankit/p/Ia;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Ia;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->j:Lcom/huawei/hms/scankit/p/Ia;

    .line 12
    new-instance v0, Lcom/huawei/hms/scankit/p/Ka;

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/p/Ka;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->m:Lcom/huawei/hms/scankit/p/Ka;

    .line 13
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/xa;->g()Z

    move-result p1

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/Aa;->a:Z

    .line 14
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Aa;->r()V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CameraManager constructor param invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(I)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 3
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 4
    invoke-static {v3, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 5
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, p1, :cond_1

    .line 6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "findCameraId: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Aa;->a:Z

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/huawei/hms/scankit/p/Na;->b()Lcom/huawei/hms/scankit/p/Na;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Aa;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Na;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/huawei/hms/scankit/p/Na;->b()Lcom/huawei/hms/scankit/p/Na;

    move-result-object v0

    const-string v1, "MLKitCamera"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Na;->b(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Aa;->p:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->m:Lcom/huawei/hms/scankit/p/Ka;

    .line 6
    iget-object v0, v0, Lcom/huawei/hms/scankit/p/Ka;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const v1, 0x7f0b0002

    .line 7
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/Aa;->p:Z

    return-void

    :cond_1
    const-string v0, "CameraManager"

    const-string v1, "CameraManager::closeHaTimer failed"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Aa;->a:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/huawei/hms/scankit/p/Na;->b()Lcom/huawei/hms/scankit/p/Na;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Aa;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Na;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/huawei/hms/scankit/p/Na;->b()Lcom/huawei/hms/scankit/p/Na;

    move-result-object v0

    const-string v1, "MLKitCamera"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Na;->a(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Aa;->p:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->m:Lcom/huawei/hms/scankit/p/Ka;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/Aa;->p:Z

    return-void

    :cond_0
    const-string v0, "CameraManager"

    const-string v1, "CameraManager::initialHaTimer failed"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->g:Lcom/huawei/hms/scankit/p/Ha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 30
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Ha;->a()V

    const/4 v0, 0x0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->b:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/xa;->a(I)V

    .line 35
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/view/TextureView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->b:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "CameraManager"

    const-string v1, "CameraManager::initCamera camera is not opened yet"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Aa;->l()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->h:Lcom/huawei/hms/scankit/p/Ga;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Ga;->a(Landroid/hardware/Camera;)V

    .line 9
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->i:Lcom/huawei/hms/scankit/p/Ja;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Ja;->a(Landroid/hardware/Camera;)V

    .line 10
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->j:Lcom/huawei/hms/scankit/p/Ia;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Ia;->a(Landroid/hardware/Camera;)V

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Aa;->l:Lcom/huawei/hms/scankit/p/Fa;

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hms/scankit/p/Fa;->a(Landroid/hardware/Camera;Lcom/huawei/hms/scankit/p/xa;)V

    .line 14
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz p1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/xa;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Aa;->d:Lcom/huawei/hms/scankit/p/Aa$a;

    if-eqz p1, :cond_3

    .line 17
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->l:Lcom/huawei/hms/scankit/p/Fa;

    .line 18
    iget-object v0, v0, Lcom/huawei/hms/scankit/p/Fa;->b:Landroid/graphics/Point;

    .line 19
    invoke-interface {p1, v0}, Lcom/huawei/hms/scankit/p/Aa$a;->a(Landroid/graphics/Point;)V

    .line 20
    :cond_3
    sget-object p1, Lcom/huawei/hms/scankit/p/Aa$b;->c:Lcom/huawei/hms/scankit/p/Aa$b;

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 21
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CameraManager::initCamera SurfaceHolder is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/huawei/hms/scankit/p/Aa$c;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Aa;->c:Lcom/huawei/hms/scankit/p/Aa$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CameraManager::setCameraStatusListener param invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/huawei/hms/scankit/p/Aa$d;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/huawei/hms/scankit/p/La;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Aa;->m:Lcom/huawei/hms/scankit/p/Ka;

    invoke-direct {v0, v1, p1}, Lcom/huawei/hms/scankit/p/La;-><init>(Lcom/huawei/hms/scankit/p/Ka;Lcom/huawei/hms/scankit/p/Aa$d;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->e:Landroid/hardware/Camera$PreviewCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CameraManager::setFrameCallback param invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "off"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    :try_start_3
    const-string v0, "torch"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 24
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 27
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Aa;->n:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_6
    const-string p1, "CameraManager"

    const-string v0, "CameraManager::setTorchStatus error"

    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/Ba$a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->j:Lcom/huawei/hms/scankit/p/Ia;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/Ia;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Lcom/huawei/hms/scankit/p/ya;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->h:Lcom/huawei/hms/scankit/p/Ga;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Ga;->a()Lcom/huawei/hms/scankit/p/ya;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)V
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->h:Lcom/huawei/hms/scankit/p/Ga;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/Ga;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Lcom/huawei/hms/scankit/p/Ba;
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->j:Lcom/huawei/hms/scankit/p/Ia;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Ia;->a()Lcom/huawei/hms/scankit/p/Ba;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->i:Lcom/huawei/hms/scankit/p/Ja;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/Ja;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/xa;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Landroid/graphics/Point;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->l:Lcom/huawei/hms/scankit/p/Fa;

    .line 2
    iget-object v0, v0, Lcom/huawei/hms/scankit/p/Fa;->b:Landroid/graphics/Point;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Lcom/huawei/hms/scankit/p/Aa$b;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Lcom/huawei/hms/scankit/p/Ca;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->i:Lcom/huawei/hms/scankit/p/Ja;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Ja;->a()Lcom/huawei/hms/scankit/p/Ca;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->i:Lcom/huawei/hms/scankit/p/Ja;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Ja;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Aa;->q()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->d:Lcom/huawei/hms/scankit/p/Aa$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->d:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Aa;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Aa;->p()V

    .line 4
    sget-object v0, Lcom/huawei/hms/scankit/p/Aa$b;->e:Lcom/huawei/hms/scankit/p/Aa$b;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Aa;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "torch"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    const-string v0, "off"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/Aa;->a(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->b:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 8
    sget-object v0, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    .line 9
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->c:Lcom/huawei/hms/scankit/p/Aa$c;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Lcom/huawei/hms/scankit/p/Aa$c;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_5
    const-string v0, "CameraManager"

    const-string v1, "CameraManager::onPause failed"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->e:Lcom/huawei/hms/scankit/p/Aa$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/xa;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/Aa;->d(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraManager::Camera open failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    const-string v0, "CameraManager"

    const-string v1, "CameraManager::initCamera failed"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->c:Lcom/huawei/hms/scankit/p/Aa$c;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/huawei/hms/scankit/p/Aa$c;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->c:Lcom/huawei/hms/scankit/p/Aa$c;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/huawei/hms/scankit/p/Aa$c;->b()V

    .line 11
    :cond_2
    sget-object v0, Lcom/huawei/hms/scankit/p/Aa$b;->b:Lcom/huawei/hms/scankit/p/Aa$b;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->b:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/xa;->c()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Lcom/huawei/hms/scankit/p/Aa$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/huawei/hms/scankit/p/Aa$e;-><init>(Lcom/huawei/hms/scankit/p/za;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/xa;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "CameraManager"

    const-string v1, "CameraManager::requestPreviewFrame PREVIEW_ONE_SHOT"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->e:Lcom/huawei/hms/scankit/p/Aa$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_5

    .line 5
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Aa;->e:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/xa;->c()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CameraManager"

    const-string v1, "CameraManager::requestPreviewFrame PICTURE_MODE"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->e:Lcom/huawei/hms/scankit/p/Aa$b;

    if-ne v0, v1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Aa;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->b:Lcom/huawei/hms/scankit/p/xa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/xa;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "CameraManager"

    const-string v1, "CameraManager::requestPreviewFrame PREVIEW_MULTI_SHOT"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->e:Lcom/huawei/hms/scankit/p/Aa$b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v1, :cond_3

    monitor-exit p0

    return-void

    .line 13
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_5

    .line 14
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Aa;->e:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_5
    const-string v0, "CameraManager"

    const-string v1, "CameraManager::requestPreviewFrame unknown mode"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->c:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    :try_start_1
    const-string v0, "CameraManager"

    const-string v1, "CameraManager::startPreview camera is not initialed yet"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2
    :try_start_2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 5
    sget-object v0, Lcom/huawei/hms/scankit/p/Aa$b;->d:Lcom/huawei/hms/scankit/p/Aa$b;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_4
    const-string v0, "CameraManager"

    const-string v1, "stopPreview error"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->d:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    :try_start_1
    const-string v0, "CameraManager"

    const-string v1, "CameraManager::startPreview camera is not startPreview yet"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2
    :try_start_2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->k:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 6
    sget-object v0, Lcom/huawei/hms/scankit/p/Aa$b;->e:Lcom/huawei/hms/scankit/p/Aa$b;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Aa;->o:Lcom/huawei/hms/scankit/p/Aa$b;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_4
    const-string v0, "CameraManager"

    const-string v1, "stopPreview error"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
