.class public abstract Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener4;
.source "DownloadListener4WithSpeed.java"

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$Listener4WithSpeedModelCreator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;-><init>()V

    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed;-><init>(Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;)V

    return-void
.end method

.method private constructor <init>(Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;

    new-instance v1, Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$Listener4WithSpeedModelCreator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$Listener4WithSpeedModelCreator;-><init>(Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$1;)V

    invoke-direct {v0, v1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;-><init>(Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;)V

    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;-><init>(Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist;)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend;->setCallback(Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4;->setAssistExtend(Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$AssistExtend;)V

    return-void
.end method


# virtual methods
.method public final blockEnd(Lcom/liulishuo/okdownload/DownloadTask;ILcom/liulishuo/okdownload/core/breakpoint/BlockInfo;)V
    .locals 0

    return-void
.end method

.method public final infoReady(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;ZLcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)V
    .locals 0
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final progress(Lcom/liulishuo/okdownload/DownloadTask;J)V
    .locals 0

    return-void
.end method

.method public final progressBlock(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0

    return-void
.end method

.method public final taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;)V
    .locals 0
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/liulishuo/okdownload/core/listener/assist/Listener4Assist$Listener4Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
