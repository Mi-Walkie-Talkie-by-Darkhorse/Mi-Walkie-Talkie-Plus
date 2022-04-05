.class public Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_CONNECTION_TIMEOUT_MS:I = 0xc350

.field public static final DEFAULT_MAX_RETRY_TIMES:I = 0x3

.field public static final DEFAULT_SOCKET_TIMEOUT_MS:I = 0xc350

.field public static final DEFAULT_THREAD_POOL_CORE_SIZE:I = 0x4

.field public static final DEFAULT_THREAD_POOL_KEEP_ALIVE_SECS:I = 0x1e

.field public static final DEFAULT_THREAD_POOL_MAX_SIZE:I = 0xa

.field public static final DEFAULT_UPLOAD_PART_SIZE:I = 0x1000

.field public static final DEFAULT_WORK_QUEUE_CAPACITY:I = 0x2800

.field private static final URI_CDN:Ljava/lang/String; = "cdn"

.field private static final URI_CDN_SUFFIX:Ljava/lang/String; = "fds.api.mi-img.com"

.field private static final URI_HTTPS_PREFIX:Ljava/lang/String; = "https://"

.field private static final URI_HTTP_PREFIX:Ljava/lang/String; = "http://"

.field private static final URI_SUFFIX:Ljava/lang/String; = "fds.api.xiaomi.com"


# instance fields
.field private baseUriForUnitTest:Ljava/lang/String;

.field private connectionTimeoutMs:I

.field private credential:Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

.field private enableCdnForDownload:Z

.field private enableCdnForUpload:Z

.field private enableHttps:Z

.field private enableUnitTestMode:Z

.field private endpoint:Ljava/lang/String;

.field private maxRetryTimes:I

.field private regionName:Ljava/lang/String;

.field private socketReceiveBufferSizeHint:I

.field private socketSendBufferSizeHint:I

.field private socketTimeoutMs:I

.field private threadPoolCoreSize:I

.field private threadPoolKeepAliveSecs:I

.field private threadPoolMaxSize:I

.field private uploadPartSize:I

.field private workQueueCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xc350

    iput v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketTimeoutMs:I

    iput v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->connectionTimeoutMs:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketSendBufferSizeHint:I

    iput v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketReceiveBufferSizeHint:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->maxRetryTimes:I

    const/16 v1, 0x1000

    iput v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->uploadPartSize:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->threadPoolCoreSize:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->threadPoolMaxSize:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->threadPoolKeepAliveSecs:I

    const/16 v1, 0x2800

    iput v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->workQueueCapacity:I

    const-string v1, "cnbj0"

    iput-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->regionName:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableHttps:Z

    iput-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForUpload:Z

    iput-boolean v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForDownload:Z

    iput-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableUnitTestMode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->baseUriForUnitTest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method buildBaseUri(Z)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableUnitTestMode:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->baseUriForUnitTest:Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableHttps:Z

    if-eqz v1, :cond_1

    const-string v1, "https://"

    goto :goto_0

    :cond_1
    const-string v1, "http://"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->endpoint:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "."

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdn."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->regionName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fds.api.mi-img.com"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->regionName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fds.api.xiaomi.com"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public enableCdnForDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForDownload:Z

    return-void
.end method

.method public enableCdnForUpload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForUpload:Z

    return-void
.end method

.method public enableHttps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableHttps:Z

    return-void
.end method

.method enableUnitTestMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableUnitTestMode:Z

    return-void
.end method

.method getBaseUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->buildBaseUri(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getBaseUriForUnitTest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->baseUriForUnitTest:Ljava/lang/String;

    return-object v0
.end method

.method getCdnBaseUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->buildBaseUri(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdnServiceBaseUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCdnBaseUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->connectionTimeoutMs:I

    return v0
.end method

.method public getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->credential:Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    return-object v0
.end method

.method getDownloadBaseUri()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForDownload:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->buildBaseUri(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getFdsServiceBaseUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getBaseUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRetryTimes()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->maxRetryTimes:I

    return v0
.end method

.method public getRegionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->regionName:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketBufferSizeHints()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketSendBufferSizeHint:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketReceiveBufferSizeHint:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getSocketTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketTimeoutMs:I

    return v0
.end method

.method public getThreadPoolCoreSize()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->threadPoolCoreSize:I

    return v0
.end method

.method public getThreadPoolKeepAliveSecs()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->threadPoolKeepAliveSecs:I

    return v0
.end method

.method public getThreadPoolMaxSize()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->threadPoolMaxSize:I

    return v0
.end method

.method getUploadBaseUri()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForUpload:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->buildBaseUri(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadPartSize()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->uploadPartSize:I

    return v0
.end method

.method public getWorkQueueCapacity()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->workQueueCapacity:I

    return v0
.end method

.method public isCdnEnabledForDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForDownload:Z

    return v0
.end method

.method public isCdnEnabledForUpload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForUpload:Z

    return v0
.end method

.method isEnabledUnitTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableUnitTestMode:Z

    return v0
.end method

.method public isHttpsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableHttps:Z

    return v0
.end method

.method setBaseUriForUnitTest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->baseUriForUnitTest:Ljava/lang/String;

    return-void
.end method

.method public setCdnServiceBaseUri(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setConnectionTimeoutMs(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->connectionTimeoutMs:I

    return-void
.end method

.method public setCredential(Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;)V
    .locals 1

    const-string v0, "credential"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->credential:Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public setFdsServiceBaseUri(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMaxRetryTimes(I)V
    .locals 1

    const-string v0, "max retry times"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNegative(ILjava/lang/String;)I

    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->maxRetryTimes:I

    return-void
.end method

.method public setRegionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->regionName:Ljava/lang/String;

    return-void
.end method

.method public setSocketBufferSizeHints(II)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketSendBufferSizeHint:I

    iput p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketReceiveBufferSizeHint:I

    return-void
.end method

.method public setSocketTimeoutMs(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketTimeoutMs:I

    return-void
.end method

.method public setThreadPoolCoreSize(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->threadPoolCoreSize:I

    return-void
.end method

.method public setThreadPoolKeepAliveSecs(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->threadPoolKeepAliveSecs:I

    return-void
.end method

.method public setThreadPoolMaxSize(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->threadPoolMaxSize:I

    return-void
.end method

.method public setUploadPartSize(I)V
    .locals 1

    const-string v0, "upload part size"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->positive(ILjava/lang/String;)I

    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->uploadPartSize:I

    return-void
.end method

.method public setWorkQueueCapacity(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->workQueueCapacity:I

    return-void
.end method

.method withBaseUriForUnitTest(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setBaseUriForUnitTest(Ljava/lang/String;)V

    return-object p0
.end method

.method public withCdnForDownload(Z)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForDownload(Z)V

    return-object p0
.end method

.method public withCdnForUpload(Z)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForUpload(Z)V

    return-object p0
.end method

.method public withCdnServiceBaseUri(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public withConnectionTimeoutMs(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setConnectionTimeoutMs(I)V

    return-object p0
.end method

.method public withCredential(Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setCredential(Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;)V

    return-object p0
.end method

.method public withFdsServiceBaseUri(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public withHttps(Z)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableHttps(Z)V

    return-object p0
.end method

.method public withMaxRetryTimes(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setMaxRetryTimes(I)V

    return-object p0
.end method

.method public withRegionName(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setRegionName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withSocketBufferSizeHints(II)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setSocketBufferSizeHints(II)V

    return-object p0
.end method

.method public withSocketTimeoutMs(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setSocketTimeoutMs(I)V

    return-object p0
.end method

.method public withThreadPoolCoreSize(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setThreadPoolCoreSize(I)V

    return-object p0
.end method

.method public withThreadPoolKeepAliveSecs(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setThreadPoolKeepAliveSecs(I)V

    return-object p0
.end method

.method public withThreadPoolMaxSize(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setThreadPoolMaxSize(I)V

    return-object p0
.end method

.method withUnitTestMode(Z)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableUnitTestMode(Z)V

    return-object p0
.end method

.method public withUploadPartSize(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setUploadPartSize(I)V

    return-object p0
.end method

.method public withWorkQueueCapacity(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setWorkQueueCapacity(I)V

    return-object p0
.end method
