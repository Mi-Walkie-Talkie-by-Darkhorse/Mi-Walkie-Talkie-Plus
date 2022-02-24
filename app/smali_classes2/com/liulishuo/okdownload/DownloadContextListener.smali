.class public interface abstract Lcom/liulishuo/okdownload/DownloadContextListener;
.super Ljava/lang/Object;
.source "DownloadContextListener.java"


# virtual methods
.method public abstract queueEnd(Lcom/liulishuo/okdownload/DownloadContext;)V
    .param p1    # Lcom/liulishuo/okdownload/DownloadContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract taskEnd(Lcom/liulishuo/okdownload/DownloadContext;Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;I)V
    .param p1    # Lcom/liulishuo/okdownload/DownloadContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/core/cause/EndCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
