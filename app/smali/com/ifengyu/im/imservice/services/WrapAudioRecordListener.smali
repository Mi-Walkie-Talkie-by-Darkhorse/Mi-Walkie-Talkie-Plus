.class abstract Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;
.super Ljava/lang/Object;
.source "WrapAudioRecordListener.java"

# interfaces
.implements Lcom/mi/mimsgsdk/AudioRecordListener;


# instance fields
.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mi/mimsgsdk/AudioRecordListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private get()Lcom/mi/mimsgsdk/AudioRecordListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/AudioRecordListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public onAudioCoderInitializationFailed()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordInitializationFailed()V

    :cond_0
    return-void
.end method

.method public onEndingRecord()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onEndingRecord()V

    :cond_0
    return-void
.end method

.method public onPlayBegin(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/AudioRecordListener;->onPlayBegin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlayEnd(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/AudioRecordListener;->onPlayEnd(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRecordFailed()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordFailed()V

    :cond_0
    return-void
.end method

.method public onRecordFinished(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordFinished(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->sendAudioMessageToTalkGroup(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onRecordInitializationCancelled()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordInitializationCancelled()V

    :cond_0
    return-void
.end method

.method public onRecordInitializationFailed()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordInitializationFailed()V

    :cond_0
    return-void
.end method

.method public onRecordInitializationSucceed()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordInitializationSucceed()V

    :cond_0
    return-void
.end method

.method public onRecordStart()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordStart()V

    :cond_0
    return-void
.end method

.method public onRmsChanged(I)V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->get()Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRmsChanged(I)V

    :cond_0
    return-void
.end method

.method abstract sendAudioMessageToTalkGroup(Ljava/lang/String;J)V
.end method

.method public setAudioRecordListener(Lcom/mi/mimsgsdk/AudioRecordListener;)V
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
