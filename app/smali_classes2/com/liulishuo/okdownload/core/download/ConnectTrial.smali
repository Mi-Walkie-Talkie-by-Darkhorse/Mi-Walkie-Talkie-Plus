.class public Lcom/liulishuo/okdownload/core/download/ConnectTrial;
.super Ljava/lang/Object;


# static fields
.field private static final CONTENT_DISPOSITION_NON_QUOTED_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_QUOTED_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ConnectTrial"


# instance fields
.field private acceptRange:Z

.field private final info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private instanceLength:J
    .annotation build Landroidx/annotation/IntRange;
        from = -0x1L
    .end annotation
.end field

.field private responseCode:I

.field private responseEtag:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private responseFilename:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final task:Lcom/liulishuo/okdownload/DownloadTask;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->CONTENT_DISPOSITION_QUOTED_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "attachment;\\s*filename\\s*=\\s*(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->CONTENT_DISPOSITION_NON_QUOTED_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    return-void
.end method

.method private static findEtag(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Etag"

    invoke-interface {p0, v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findFilename(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findInstanceLength(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;)J
    .locals 5

    const-string v0, "Content-Range"

    invoke-interface {p0, v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->parseContentRangeFoInstanceLength(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-interface {p0, v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->parseTransferEncoding(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ConnectTrial"

    const-string v0, "Transfer-Encoding isn\'t chunked but there is no valid instance length found either!"

    invoke-static {p0, v0}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-wide v2
.end method

.method private static isAcceptRange(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;)Z
    .locals 2
    .param p0    # Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseCode()I

    move-result v0

    const/16 v1, 0xce

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "Accept-Ranges"

    invoke-interface {p0, v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "bytes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->CONTENT_DISPOSITION_QUOTED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->CONTENT_DISPOSITION_NON_QUOTED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_4

    const-string v1, "../"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/liulishuo/okdownload/core/exception/DownloadSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The filename ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] from the response is not allowable, because it contains \'../\', which can raise the directory traversal vulnerability"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/liulishuo/okdownload/core/exception/DownloadSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-object p0

    :catch_0
    return-object v0
.end method

.method private static parseContentRangeFoInstanceLength(Ljava/lang/String;)J
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse instance length failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ConnectTrial"

    invoke-static {v2, p0}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-wide v0
.end method

.method private static parseTransferEncoding(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    const-string v0, "chunked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public executeTrial()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkOnWifi(Lcom/liulishuo/okdownload/DownloadTask;)V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkAvailable()V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;->create(Ljava/lang/String;)Lcom/liulishuo/okdownload/core/connection/DownloadConnection;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "If-Match"

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "Range"

    const-string v2, "bytes=0-0"

    invoke-interface {v0, v1, v2}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getHeaderMapFields()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lcom/liulishuo/okdownload/core/Util;->addUserRequestHeaderField(Ljava/util/Map;Lcom/liulishuo/okdownload/core/connection/DownloadConnection;)V

    :cond_1
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v1

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-interface {v1, v3, v2}, Lcom/liulishuo/okdownload/DownloadListener;->connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->execute()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-interface {v2}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getRedirectLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liulishuo/okdownload/DownloadTask;->setRedirectLocation(Ljava/lang/String;)V

    const-string v3, "ConnectTrial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v5}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] redirect location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v5}, Lcom/liulishuo/okdownload/DownloadTask;->getRedirectLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseCode:I

    invoke-static {v2}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->isAcceptRange(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->acceptRange:Z

    invoke-static {v2}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->findInstanceLength(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->instanceLength:J

    invoke-static {v2}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->findEtag(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseEtag:Ljava/lang/String;

    invoke-static {v2}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->findFilename(Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseFilename:Ljava/lang/String;

    invoke-interface {v2}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_2
    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v5, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseCode:I

    invoke-interface {v1, v4, v5, v3}, Lcom/liulishuo/okdownload/DownloadListener;->connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V

    iget-wide v3, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->instanceLength:J

    invoke-virtual {p0, v3, v4, v2}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->isNeedTrialHeadMethodForInstanceLength(JLcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->release()V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->trialHeadMethodForInstanceLength()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->release()V

    throw v1
.end method

.method public getInstanceLength()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->instanceLength:J

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseCode:I

    return v0
.end method

.method public getResponseEtag()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseFilename()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseFilename:Ljava/lang/String;

    return-object v0
.end method

.method public isAcceptRange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->acceptRange:Z

    return v0
.end method

.method public isChunked()Z
    .locals 5

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->instanceLength:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEtagOverdue()Z
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->responseEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNeedTrialHeadMethodForInstanceLength(JLcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;)Z
    .locals 4
    .param p3    # Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    return v0

    :cond_0
    const-string p1, "Content-Range"

    invoke-interface {p3, p1}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    return v0

    :cond_1
    const-string p1, "Transfer-Encoding"

    invoke-interface {p3, p1}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->parseTransferEncoding(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const-string p1, "Content-Length"

    invoke-interface {p3, p1}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method trialHeadMethodForInstanceLength()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;->create(Ljava/lang/String;)Lcom/liulishuo/okdownload/core/connection/DownloadConnection;

    move-result-object v0

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v1

    :try_start_0
    const-string v2, "HEAD"

    invoke-interface {v0, v2}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->setRequestMethod(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/DownloadTask;->getHeaderMapFields()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Lcom/liulishuo/okdownload/core/Util;->addUserRequestHeaderField(Ljava/util/Map;Lcom/liulishuo/okdownload/core/connection/DownloadConnection;)V

    :cond_0
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/liulishuo/okdownload/DownloadListener;->connectTrialStart(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->execute()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-interface {v2}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseCode()I

    move-result v4

    invoke-interface {v2}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/liulishuo/okdownload/DownloadListener;->connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V

    const-string v1, "Content-Length"

    invoke-interface {v2, v1}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liulishuo/okdownload/core/Util;->parseContentLength(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->instanceLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->release()V

    throw v1
.end method
