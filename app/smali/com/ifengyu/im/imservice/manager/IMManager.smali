.class public abstract Lcom/ifengyu/im/imservice/manager/IMManager;
.super Ljava/lang/Object;
.source "IMManager.java"


# instance fields
.field protected ctx:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract doOnStart()V
.end method

.method protected failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/manager/IMManager$2;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/im/imservice/manager/IMManager$2;-><init>(Lcom/ifengyu/im/imservice/manager/IMManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onStartIMManager(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/manager/IMManager;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;->doOnStart()V

    return-void
.end method

.method public abstract reset()V
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMManager;->ctx:Landroid/content/Context;

    return-void
.end method

.method protected successRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/manager/IMManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/im/imservice/manager/IMManager$1;-><init>(Lcom/ifengyu/im/imservice/manager/IMManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected timeOutRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/manager/IMManager$3;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/im/imservice/manager/IMManager$3;-><init>(Lcom/ifengyu/im/imservice/manager/IMManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
