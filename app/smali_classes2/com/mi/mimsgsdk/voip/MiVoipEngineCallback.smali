.class public interface abstract Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;
.super Ljava/lang/Object;
.source "MiVoipEngineCallback.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation


# virtual methods
.method public abstract onJoinConferenceFailed(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
.end method

.method public abstract onJoinRes(Landroid/os/Message;)V
.end method

.method public abstract onSpeakers([Lio/agora/rtc/a$a;)V
.end method

.method public abstract onUserJoin(I)V
.end method

.method public abstract onUserLeave(I)V
.end method

.method public abstract onUserMute(IZ)V
.end method

.method public abstract onWriteLog(Landroid/os/Message;)V
.end method
