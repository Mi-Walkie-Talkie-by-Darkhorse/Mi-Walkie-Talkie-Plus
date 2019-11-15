.class public abstract Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;
.super Ljava/lang/Object;
.source "CustomHandlerThread.java"


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread$1;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread$1;-><init>(Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessage()Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method protected abstract processMessage(Landroid/os/Message;)V
.end method

.method public removeMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeMessage(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Looper\u5bf9\u8c61\u4e0d\u4e00\u81f4\uff0c\u8bf7\u4f7f\u7528CustomHandlerThread.getLooper()\u6784\u9020Handler\u5bf9\u8c61"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method
