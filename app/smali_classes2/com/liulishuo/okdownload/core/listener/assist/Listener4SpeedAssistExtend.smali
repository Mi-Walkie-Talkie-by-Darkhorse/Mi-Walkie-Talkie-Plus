.class public Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;,
        Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator<",
        "Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;",
        ">;"
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "BC"
    }
.end annotation


# instance fields
.field private callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;
    .locals 1

    new-instance v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    invoke-direct {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic create(I)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ListenerModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;->create(I)Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    move-result-object p1

    return-object p1
.end method

.method public dispatchBlockEnd(Lcom/liulishuo/okdownload/DownloadTask;ILcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)Z
    .locals 2

    move-object v0, p3

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->blockSpeeds:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/SpeedCalculator;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/SpeedCalculator;->endTask()V

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    if-eqz v1, :cond_0

    iget-object p3, p3, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {p3, p2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object p3

    invoke-virtual {v0, p2}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->getBlockSpeed(I)Lcom/liulishuo/okdownload/SpeedCalculator;

    move-result-object v0

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;->blockEnd(Lcom/liulishuo/okdownload/DownloadTask;ILcom/liulishuo/okdownload/core/breakpoint/BlockInfo;Lcom/liulishuo/okdownload/SpeedCalculator;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchFetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJLcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)Z
    .locals 8
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p5

    check-cast v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->blockSpeeds:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/SpeedCalculator;

    invoke-virtual {v1, p3, p4}, Lcom/liulishuo/okdownload/SpeedCalculator;->downloading(J)V

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/liulishuo/okdownload/SpeedCalculator;

    invoke-virtual {v1, p3, p4}, Lcom/liulishuo/okdownload/SpeedCalculator;->downloading(J)V

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    if-eqz v2, :cond_0

    iget-object p3, p5, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->blockCurrentOffsetMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, p2}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->getBlockSpeed(I)Lcom/liulishuo/okdownload/SpeedCalculator;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;->progressBlock(Lcom/liulishuo/okdownload/DownloadTask;IJLcom/liulishuo/okdownload/SpeedCalculator;)V

    iget-object p2, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    iget-wide p3, p5, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;->currentOffset:J

    iget-object p5, v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/liulishuo/okdownload/SpeedCalculator;

    invoke-interface {p2, p1, p3, p4, p5}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;->progress(Lcom/liulishuo/okdownload/DownloadTask;JLcom/liulishuo/okdownload/SpeedCalculator;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchInfoReady(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;ZLcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)Z
    .locals 1
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    if-eqz v0, :cond_0

    check-cast p4, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;->infoReady(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;ZLcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTaskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)Z
    .locals 1
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p4, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    iget-object p4, p4, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/liulishuo/okdownload/SpeedCalculator;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/liulishuo/okdownload/SpeedCalculator;->endTask()V

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/liulishuo/okdownload/SpeedCalculator;

    invoke-direct {p4}, Lcom/liulishuo/okdownload/SpeedCalculator;-><init>()V

    :goto_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;Lcom/liulishuo/okdownload/SpeedCalculator;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setCallback(Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    return-void
.end method
