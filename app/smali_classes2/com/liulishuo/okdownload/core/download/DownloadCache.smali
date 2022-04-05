.class public Lcom/liulishuo/okdownload/core/download/DownloadCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/download/DownloadCache$PreError;
    }
.end annotation


# instance fields
.field private volatile fileBusyAfterRun:Z

.field private final outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

.field private volatile preAllocateFailed:Z

.field private volatile preconditionFailed:Z

.field private volatile realCause:Ljava/io/IOException;

.field private redirectLocation:Ljava/lang/String;

.field private volatile serverCanceled:Z

.field private volatile unknownError:Z

.field private volatile userCanceled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    return-void
.end method

.method constructor <init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    return-void
.end method


# virtual methods
.method public catchException(Ljava/io/IOException;)V
    .locals 2

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isUserCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setPreconditionFailed(Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/liulishuo/okdownload/core/exception/ServerCanceledException;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setServerCanceled(Ljava/io/IOException;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setFileBusyAfterRun()V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setPreAllocateFailed(Ljava/io/IOException;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException;

    if-eq p1, v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setUnknownError(Ljava/io/IOException;)V

    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "catch unknown error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadCache"

    invoke-static {v0, p1}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method getOutputStream()Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method getRealCause()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    return-object v0
.end method

.method getRedirectLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method getResumeFailedCause()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    check-cast v0, Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;->getResumeFailedCause()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    move-result-object v0

    return-object v0
.end method

.method isFileBusyAfterRun()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->fileBusyAfterRun:Z

    return v0
.end method

.method public isInterrupt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preconditionFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->userCanceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->serverCanceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->unknownError:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->fileBusyAfterRun:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preAllocateFailed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPreAllocateFailed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preAllocateFailed:Z

    return v0
.end method

.method isPreconditionFailed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preconditionFailed:Z

    return v0
.end method

.method isServerCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->serverCanceled:Z

    return v0
.end method

.method isUnknownError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->unknownError:Z

    return v0
.end method

.method public isUserCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->userCanceled:Z

    return v0
.end method

.method public setFileBusyAfterRun()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->fileBusyAfterRun:Z

    return-void
.end method

.method public setPreAllocateFailed(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preAllocateFailed:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    return-void
.end method

.method public setPreconditionFailed(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preconditionFailed:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    return-void
.end method

.method setRedirectLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->redirectLocation:Ljava/lang/String;

    return-void
.end method

.method public setServerCanceled(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->serverCanceled:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    return-void
.end method

.method public setUnknownError(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->unknownError:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    return-void
.end method

.method setUserCanceled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->userCanceled:Z

    return-void
.end method
