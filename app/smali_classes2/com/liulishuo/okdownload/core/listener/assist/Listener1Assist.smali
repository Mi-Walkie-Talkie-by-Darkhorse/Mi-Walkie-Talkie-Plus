.class public Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;
.super Ljava/lang/Object;
.source "Listener1Assist.java"

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerAssist;
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;,
        Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerAssist;",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator<",
        "Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;

.field private final modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler<",
            "Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-direct {v0, p0}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;-><init>(Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;)V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    return-void
.end method

.method constructor <init>(Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler<",
            "Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    return-void
.end method


# virtual methods
.method public connectEnd(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getInfo()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->getOrRecoverModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFromResumed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFirstConnect:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFirstConnect:Ljava/lang/Boolean;

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;

    if-eqz v2, :cond_2

    .line 5
    iget v4, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->blockCount:I

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->totalLength:J

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;->connected(Lcom/liulishuo/okdownload/DownloadTask;IJJ)V

    :cond_2
    return-void
.end method

.method public create(I)Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;
    .locals 1

    .line 2
    new-instance v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;

    invoke-direct {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic create(I)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->create(I)Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;

    move-result-object p1

    return-object p1
.end method

.method public downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    .locals 1
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->getOrRecoverModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p2}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    .line 3
    iget-object p2, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isStarted:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, p1, p3}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;->retry(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V

    .line 5
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isStarted:Ljava/lang/Boolean;

    .line 6
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFromResumed:Ljava/lang/Boolean;

    .line 7
    iput-object p1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFirstConnect:Ljava/lang/Boolean;

    return-void
.end method

.method public downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 1
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->getOrRecoverModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->onInfoValid(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    .line 3
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isStarted:Ljava/lang/Boolean;

    .line 4
    iput-object p2, p1, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFromResumed:Ljava/lang/Boolean;

    .line 5
    iput-object p2, p1, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->isFirstConnect:Ljava/lang/Boolean;

    return-void
.end method

.method public fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getInfo()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->getOrRecoverModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 3
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;

    if-eqz v2, :cond_1

    iget-object p2, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;->totalLength:J

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;->progress(Lcom/liulishuo/okdownload/DownloadTask;JJ)V

    :cond_1
    return-void
.end method

.method public isAlwaysRecoverAssistModel()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->isAlwaysRecoverAssistModel()Z

    move-result v0

    return v0
.end method

.method public setAlwaysRecoverAssistModel(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->setAlwaysRecoverAssistModel(Z)V

    return-void
.end method

.method public setAlwaysRecoverAssistModelIfNotSet(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->setAlwaysRecoverAssistModelIfNotSet(Z)V

    return-void
.end method

.method public setCallback(Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;

    return-void
.end method

.method public taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 2
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getInfo()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->removeOrCreate(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;

    .line 2
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;)V

    :cond_0
    return-void
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->modelHandler:Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler;->addAndGetModel(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;

    .line 2
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;->taskStart(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Model;)V

    :cond_0
    return-void
.end method
