.class Lcom/liulishuo/okdownload/UnifiedListenerManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liulishuo/okdownload/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/UnifiedListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;


# direct methods
.method constructor <init>(Lcom/liulishuo/okdownload/UnifiedListenerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectEnd(Lcom/liulishuo/okdownload/DownloadTask;IILjava/util/Map;)V
    .locals 4
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

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/DownloadListener;->connectEnd(Lcom/liulishuo/okdownload/DownloadTask;IILjava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public connectStart(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
    .locals 4
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

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/liulishuo/okdownload/DownloadListener;->connectStart(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V
    .locals 4
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

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/liulishuo/okdownload/DownloadListener;->connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V
    .locals 4
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

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2}, Lcom/liulishuo/okdownload/DownloadListener;->connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    .locals 4
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

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/liulishuo/okdownload/DownloadListener;->downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 4
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2}, Lcom/liulishuo/okdownload/DownloadListener;->downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 4
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/DownloadListener;->fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 4
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/DownloadListener;->fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 4
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/DownloadListener;->fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 4
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

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/liulishuo/okdownload/DownloadListener;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object p2, p2, Lcom/liulishuo/okdownload/UnifiedListenerManager;->autoRemoveListenerIdList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->detachListener(I)V

    :cond_3
    return-void
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 4
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/UnifiedListenerManager$1;->this$0:Lcom/liulishuo/okdownload/UnifiedListenerManager;

    iget-object v0, v0, Lcom/liulishuo/okdownload/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/liulishuo/okdownload/UnifiedListenerManager;->access$000(Lcom/liulishuo/okdownload/DownloadTask;Landroid/util/SparseArray;)[Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, p1}, Lcom/liulishuo/okdownload/DownloadListener;->taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
