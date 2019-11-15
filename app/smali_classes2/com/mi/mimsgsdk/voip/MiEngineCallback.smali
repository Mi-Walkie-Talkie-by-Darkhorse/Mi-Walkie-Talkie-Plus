.class public interface abstract Lcom/mi/mimsgsdk/voip/MiEngineCallback;
.super Ljava/lang/Object;
.source "MiEngineCallback.java"


# virtual methods
.method public abstract onJoinConferenceFailed(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
.end method

.method public abstract onJoinRes(Landroid/os/Message;)V
.end method

.method public abstract onSpeakers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/voip/Speaker;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUserJoin(Ljava/lang/String;)V
.end method

.method public abstract onUserLeave(Ljava/lang/String;)V
.end method

.method public abstract onUserMute(Ljava/lang/String;Z)V
.end method

.method public abstract onWriteLog(Landroid/os/Message;)V
.end method
