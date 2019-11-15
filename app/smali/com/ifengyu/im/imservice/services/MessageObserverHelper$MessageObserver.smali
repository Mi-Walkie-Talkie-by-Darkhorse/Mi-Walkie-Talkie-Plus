.class public interface abstract Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;
.super Ljava/lang/Object;
.source "MessageObserverHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/services/MessageObserverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageObserver"
.end annotation


# virtual methods
.method public abstract onInitSuccess()V
.end method

.method public abstract onMessageDownloaded(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
.end method

.method public abstract onMessageStatusChange(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
.end method

.method public abstract onReceiveMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
.end method

.method public abstract onReceiveOldGroupMessage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;)V"
        }
    .end annotation
.end method
