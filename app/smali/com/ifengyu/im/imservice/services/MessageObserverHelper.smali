.class public Lcom/ifengyu/im/imservice/services/MessageObserverHelper;
.super Ljava/lang/Object;
.source "MessageObserverHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ifengyu/im/imservice/services/MessageObserverHelper;


# instance fields
.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->mObservers:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/ifengyu/im/imservice/services/MessageObserverHelper;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->sInstance:Lcom/ifengyu/im/imservice/services/MessageObserverHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->sInstance:Lcom/ifengyu/im/imservice/services/MessageObserverHelper;

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->sInstance:Lcom/ifengyu/im/imservice/services/MessageObserverHelper;

    return-object v0
.end method


# virtual methods
.method public notifyInitSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;

    invoke-interface {v0}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;->onInitSuccess()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyMessageDownloaded(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;

    invoke-interface {v0, p1}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;->onMessageDownloaded(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyMessageStatusChange(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;

    invoke-interface {v0, p1}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;->onMessageStatusChange(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyReceiveMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;

    invoke-interface {v0, p1}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;->onReceiveMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyReceiveOldGroupMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;

    invoke-interface {v0, p1}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;->onReceiveOldGroupMessage(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized registerObserver(Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterObserver(Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
