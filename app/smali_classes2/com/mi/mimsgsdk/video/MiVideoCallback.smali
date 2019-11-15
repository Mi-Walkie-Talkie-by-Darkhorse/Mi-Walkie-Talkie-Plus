.class public interface abstract Lcom/mi/mimsgsdk/video/MiVideoCallback;
.super Ljava/lang/Object;
.source "MiVideoCallback.java"


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onPlayBegin(Ljava/lang/String;)V
.end method

.method public abstract onPlayEnd(Ljava/lang/String;Z)V
.end method

.method public abstract onRecordCanceled()V
.end method

.method public abstract onRecordFinished(Lcom/mi/mimsgsdk/video/VideoBody;)V
.end method

.method public abstract onRecordInitializationFailed()V
.end method

.method public abstract onRecordInitializationSucceed()V
.end method

.method public abstract onRecordInterrupted()V
.end method

.method public abstract onRecordStart()V
.end method

.method public abstract onWriteLog(Ljava/lang/String;)V
.end method
