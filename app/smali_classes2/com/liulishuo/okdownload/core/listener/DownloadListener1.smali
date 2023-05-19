.class public abstract Lcom/liulishuo/okdownload/core/listener/DownloadListener1;
.super Ljava/lang/Object;
.source "DownloadListener1.java"

# interfaces
.implements Lcom/liulishuo/okdownload/DownloadListener;
.implements Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerAssist;


# instance fields
.field final assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;-><init>()V

    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;-><init>(Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;)V

    return-void
.end method

.method constructor <init>(Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    .line 3
    invoke-virtual {p1, p0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->setCallback(Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist$Listener1Callback;)V

    return-void
.end method


# virtual methods
.method public connectEnd(Lcom/liulishuo/okdownload/DownloadTask;IILjava/util/Map;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    invoke-virtual {p2, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->connectEnd(Lcom/liulishuo/okdownload/DownloadTask;)V

    return-void
.end method

.method public connectStart(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
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

.method public downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
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

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V

    return-void
.end method

.method public downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    return-void
.end method

.method public fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    invoke-virtual {p2, p1, p3, p4}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;J)V

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

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->isAlwaysRecoverAssistModel()Z

    move-result v0

    return v0
.end method

.method public setAlwaysRecoverAssistModel(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->setAlwaysRecoverAssistModel(Z)V

    return-void
.end method

.method public setAlwaysRecoverAssistModelIfNotSet(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->setAlwaysRecoverAssistModelIfNotSet(Z)V

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

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V

    return-void
.end method

.method public final taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/listener/DownloadListener1;->assist:Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener1Assist;->taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V

    return-void
.end method
