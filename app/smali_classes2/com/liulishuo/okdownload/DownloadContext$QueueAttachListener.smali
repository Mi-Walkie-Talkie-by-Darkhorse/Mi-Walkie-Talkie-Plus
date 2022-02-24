.class Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener2;
.source "DownloadContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/DownloadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueAttachListener"
.end annotation


# instance fields
.field private final contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final hostContext:Lcom/liulishuo/okdownload/DownloadContext;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final remainCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/liulishuo/okdownload/DownloadContext;Lcom/liulishuo/okdownload/DownloadContextListener;I)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/DownloadContextListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener2;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;->remainCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p2, p0, Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;->contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;

    .line 4
    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;->hostContext:Lcom/liulishuo/okdownload/DownloadContext;

    return-void
.end method


# virtual methods
.method public taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 7
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
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;->remainCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;->contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;->hostContext:Lcom/liulishuo/okdownload/DownloadContext;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/liulishuo/okdownload/DownloadContextListener;->taskEnd(Lcom/liulishuo/okdownload/DownloadContext;Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;I)V

    if-gtz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;->contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;

    iget-object p2, p0, Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;->hostContext:Lcom/liulishuo/okdownload/DownloadContext;

    invoke-interface {p1, p2}, Lcom/liulishuo/okdownload/DownloadContextListener;->queueEnd(Lcom/liulishuo/okdownload/DownloadContext;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "taskEnd and remainCount "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadContext"

    invoke-static {p2, p1}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
