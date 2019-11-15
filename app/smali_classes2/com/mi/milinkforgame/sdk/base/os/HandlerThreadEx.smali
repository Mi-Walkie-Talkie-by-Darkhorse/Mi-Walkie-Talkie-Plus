.class public Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;
.super Ljava/lang/Object;
.source "HandlerThreadEx.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private callback:Landroid/os/Handler$Callback;

.field private handler:Landroid/os/Handler;

.field private ipcable:Z

.field private messenger:Landroid/os/Messenger;

.field private name:Ljava/lang/String;

.field private priority:I

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;-><init>(Ljava/lang/String;ZLandroid/os/Handler$Callback;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILandroid/os/Handler$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->priority:I

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->setIpcable(Z)V

    invoke-virtual {p0, p3}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->setPriority(I)V

    invoke-virtual {p0, p4}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->setCallback(Landroid/os/Handler$Callback;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->start()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/os/Handler$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;-><init>(Ljava/lang/String;ZILandroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->start()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->start()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->messenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->priority:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->callback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->callback:Landroid/os/Handler$Callback;

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIpcable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->ipcable:Z

    return v0
.end method

.method public setCallback(Landroid/os/Handler$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->callback:Landroid/os/Handler$Callback;

    return-void
.end method

.method protected setIpcable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->ipcable:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0, p1}, Landroid/os/HandlerThread;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->priority:I

    return-void
.end method

.method protected declared-synchronized start()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->ipcable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->messenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->getPriority()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    :cond_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->handler:Landroid/os/Handler;

    :cond_4
    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->ipcable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->messenger:Landroid/os/Messenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/HandlerThreadEx;->thread:Landroid/os/HandlerThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
