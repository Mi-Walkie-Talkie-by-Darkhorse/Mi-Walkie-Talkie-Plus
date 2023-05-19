.class public Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;
.super Ljava/lang/Object;
.source "Listener4Assist.java"

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerAssist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;,
        Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;,
        Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerAssist;"
    }
.end annotation


# instance fields
.field private assistExtend:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;

.field callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;

.field private final modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-direct {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;-><init>(Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;)V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    return-void
.end method

.method constructor <init>(Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    return-void
.end method


# virtual methods
.method public fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getInfo()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->getOrRecoverModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->assistExtend:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1, p1, p2, v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;->dispatchBlockEnd(Lcom/liulishuo/okdownload/DownloadTask;ILcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;

    if-eqz v1, :cond_2

    .line 5
    iget-object v0, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0, p2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;->blockEnd(Lcom/liulishuo/okdownload/DownloadTask;ILcom/liulishuo/okdownload/core/breakpoint/BlockInfo;)V

    :cond_2
    return-void
.end method

.method public fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getInfo()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->getOrRecoverModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->blockCurrentOffsetMap:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long v7, v1, p3

    .line 4
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->blockCurrentOffsetMap:Landroid/util/SparseArray;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-wide v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->currentOffset:J

    add-long/2addr v1, p3

    iput-wide v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->currentOffset:J

    .line 6
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->assistExtend:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;

    if-eqz v1, :cond_1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, v0

    .line 7
    invoke-interface/range {v1 .. v6}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;->dispatchFetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJLcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p3, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;

    if-eqz p3, :cond_2

    .line 9
    invoke-interface {p3, p1, p2, v7, v8}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;->progressBlock(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    .line 10
    iget-object p2, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;

    iget-wide p3, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->currentOffset:J

    invoke-interface {p2, p1, p3, p4}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;->progress(Lcom/liulishuo/okdownload/DownloadTask;J)V

    :cond_2
    return-void
.end method

.method public getAssistExtend()Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->assistExtend:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;

    return-object v0
.end method

.method public infoReady(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->addAndGetModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;

    .line 2
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->assistExtend:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;->dispatchInfoReady(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;ZLcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;->infoReady(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;ZLcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)V

    :cond_1
    return-void
.end method

.method public isAlwaysRecoverAssistModel()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->isAlwaysRecoverAssistModel()Z

    move-result v0

    return v0
.end method

.method public setAlwaysRecoverAssistModel(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->setAlwaysRecoverAssistModel(Z)V

    return-void
.end method

.method public setAlwaysRecoverAssistModelIfNotSet(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->setAlwaysRecoverAssistModelIfNotSet(Z)V

    return-void
.end method

.method public setAssistExtend(Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->assistExtend:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;

    return-void
.end method

.method public setCallback(Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;

    return-void
.end method

.method public declared-synchronized taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 2
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getInfo()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->removeOrCreate(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;

    .line 2
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->assistExtend:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;->dispatchTaskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
