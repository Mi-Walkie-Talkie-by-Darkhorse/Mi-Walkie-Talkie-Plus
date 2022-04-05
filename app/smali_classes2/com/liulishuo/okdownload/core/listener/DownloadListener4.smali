.class public abstract Lcom/liulishuo/okdownload/core/listener/DownloadListener4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liulishuo/okdownload/DownloadListener;
.implements Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerAssist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/listener/DownloadListener4$Listener4ModelCreator;
    }
.end annotation


# instance fields
.field final assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    new-instance v1, Lcom/liulishuo/okdownload/core/listener/DownloadListener4$Listener4ModelCreator;

    invoke-direct {v1}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4$Listener4ModelCreator;-><init>()V

    invoke-direct {v0, v1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;-><init>(Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;)V

    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;-><init>(Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;)V

    return-void
.end method

.method constructor <init>(Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    invoke-virtual {p1, p0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->setCallback(Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Callback;)V

    return-void
.end method


# virtual methods
.method public connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p3, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->infoReady(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Z)V

    return-void
.end method

.method public final downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->infoReady(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Z)V

    return-void
.end method

.method public fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p3, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    invoke-virtual {p3, p1, p2}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;I)V

    return-void
.end method

.method public final fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    return-void
.end method

.method public fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public isAlwaysRecoverAssistModel()Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->isAlwaysRecoverAssistModel()Z

    move-result v0

    return v0
.end method

.method public setAlwaysRecoverAssistModel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->setAlwaysRecoverAssistModel(Z)V

    return-void
.end method

.method public setAlwaysRecoverAssistModelIfNotSet(Z)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->setAlwaysRecoverAssistModelIfNotSet(Z)V

    return-void
.end method

.method public setAssistExtend(Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->setAssistExtend(Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;)V

    return-void
.end method

.method public final taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/cause/EndCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V

    return-void
.end method
