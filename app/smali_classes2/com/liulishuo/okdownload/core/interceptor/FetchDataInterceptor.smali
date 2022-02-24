.class public Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;
.super Ljava/lang/Object;
.source "FetchDataInterceptor.java"

# interfaces
.implements Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Fetch;


# instance fields
.field private final blockIndex:I

.field private final dispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

.field private final readBuffer:[B

.field private final task:Lcom/liulishuo/okdownload/DownloadTask;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->blockIndex:I

    .line 3
    iput-object p2, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->inputStream:Ljava/io/InputStream;

    .line 4
    invoke-virtual {p4}, Lcom/liulishuo/okdownload/DownloadTask;->getReadBufferSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->readBuffer:[B

    .line 5
    iput-object p3, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    .line 6
    iput-object p4, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->task:Lcom/liulishuo/okdownload/DownloadTask;

    .line 7
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->dispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    return-void
.end method


# virtual methods
.method public interceptFetch(Lcom/liulishuo/okdownload/core/download/DownloadChain;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->getCache()Lcom/liulishuo/okdownload/core/download/DownloadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->getTask()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkOnWifi(Lcom/liulishuo/okdownload/DownloadTask;)V

    .line 3
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->readBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-long v0, v0

    return-wide v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    iget v2, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->blockIndex:I

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->readBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->write(I[BI)V

    int-to-long v0, v0

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->increaseCallbackBytes(J)V

    .line 6
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->dispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v2, v3}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->isFetchProcessMoment(Lcom/liulishuo/okdownload/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->flushNoCallbackIncreaseBytes()V

    :cond_1
    return-wide v0

    .line 8
    :cond_2
    sget-object p1, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException;

    throw p1
.end method
