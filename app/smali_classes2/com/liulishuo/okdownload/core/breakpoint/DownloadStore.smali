.class public interface abstract Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;


# virtual methods
.method public abstract getAfterCompleted(I)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract markFileClear(I)Z
.end method

.method public abstract markFileDirty(I)Z
.end method

.method public abstract onSyncToFilesystemSuccess(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;IJ)V
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onTaskEnd(ILcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .param p2    # Lcom/liulishuo/okdownload/core/cause/EndCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onTaskStart(I)V
.end method
