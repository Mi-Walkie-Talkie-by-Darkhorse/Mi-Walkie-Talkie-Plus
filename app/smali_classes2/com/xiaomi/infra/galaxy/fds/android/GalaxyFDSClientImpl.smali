.class public Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClient;


# static fields
.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final LOG_TAG:Ljava/lang/String; = "GalaxyFDSClientImpl"

.field private static final TEST_MODE:Z


# instance fields
.field private final config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "java.runtime.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android runtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->TEST_MODE:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->TEST_MODE:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-direct {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->createHttpClient(Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getWorkQueueCapacity()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getThreadPoolCoreSize()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getThreadPoolMaxSize()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getThreadPoolKeepAliveSecs()I

    move-result p1

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$1;

    invoke-direct {v8, p0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$1;-><init>(Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {p3, p2}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setCredential(Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;)V

    iget-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-direct {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->createHttpClient(Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)Lorg/apache/http/client/HttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private abortMultipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getUploadBaseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?uploadId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->DELETE:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    invoke-static {p3, v2, v3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-void

    :cond_1
    :try_start_2
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to upload object["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] to URI :"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Fail to abort multipart upload: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_3
    new-instance p2, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to abort multipart upload. URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    throw p1
.end method

.method static synthetic access$000(Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;J)Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->uploadPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;J)Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;

    move-result-object p0

    return-object p0
.end method

.method private completeMultipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getUploadBaseUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?uploadId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;

    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->getAllMetadata()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    iget-object p4, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {p4}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object p4

    sget-object v3, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->PUT:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    invoke-static {p6, p4, v3, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lorg/apache/http/client/methods/HttpPut;

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {v3, p5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object p5, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {p5, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p4

    invoke-interface {p4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p5

    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p5

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p5

    const/16 v1, 0xc8

    if-ne p5, v1, :cond_5

    new-instance p4, Ljava/io/InputStreamReader;

    invoke-direct {p4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p5, Lcom/google/gson/Gson;

    invoke-direct {p5}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    invoke-virtual {p5, p4, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->getAccessKeyId()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_4

    invoke-virtual {p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->getSignature()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_4

    invoke-virtual {p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->getExpires()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p5, v1, v3

    if-eqz p5, :cond_4

    iget-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getBaseUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->setFdsServiceBaseUri(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCdnBaseUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->setCdnServiceBaseUri(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-object p4

    :cond_4
    :try_start_2
    new-instance p4, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to parse the result of completing multipart upload. bucket name:"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", object name:"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", upload ID:"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_5
    new-instance p1, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to upload object["

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] to URI :"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Fail to complete multipart upload: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_3
    new-instance p2, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Fail to complete multipart upload. URI:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_6
    throw p1
.end method

.method private createHttpClient(Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)Lorg/apache/http/client/HttpClient;
    .locals 6

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getConnectionTimeoutMs()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getSocketTimeoutMs()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v3

    aget v1, v3, v1

    if-gtz v2, :cond_0

    if-lez v1, :cond_1

    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    :cond_1
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const/16 v4, 0x50

    const-string v5, "http"

    invoke-direct {v3, v5, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->isHttpsEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object p1

    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p1, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const/16 v3, 0x1bb

    const-string v4, "https"

    invoke-direct {v2, v4, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    :cond_2
    new-instance p1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {p1, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private initMultipartUpload(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getUploadBaseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?uploads"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "x-xiaomi-estimated-object-size"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v3, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {p3}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object p3

    if-nez p2, :cond_1

    sget-object p4, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->POST:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    goto :goto_1

    :cond_1
    sget-object p4, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->PUT:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    :goto_1
    invoke-static {v0, p3, p4, v3}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {p4, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p4

    invoke-interface {p4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p4

    invoke-interface {p4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p4

    const/16 v3, 0xc8

    if-ne p4, v3, :cond_4

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;

    invoke-virtual {p4, p3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p3}, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->getObjectName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p3}, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->getBucketName()Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-object p3

    :cond_3
    :try_start_2
    new-instance p3, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to parse the result of init multipart upload. bucket name:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", object name:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_4
    new-instance p4, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to upload object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] to URI :"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Fail to initiate multipart upload: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_3
    new-instance p2, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Fail to initiate multipart upload. URI:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_5
    throw p1
.end method

.method private isGetThumbnail(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;

    instance-of v0, v0, Lcom/xiaomi/infra/galaxy/fds/android/model/ThumbParam;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private uploadPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;J)Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v8}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getUploadBaseUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "?uploadId="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&partNumber="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x1000

    new-array v10, v0, [B

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    long-to-int v12, v6

    invoke-direct {v11, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-wide v12, v6

    :goto_0
    const-wide/16 v14, 0x0

    const/4 v0, 0x0

    cmp-long v17, v12, v14

    if-eqz v17, :cond_1

    long-to-int v14, v12

    const/16 v15, 0x1000

    :try_start_0
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v15, p5

    invoke-virtual {v15, v10, v0, v14}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->read([BII)I

    move-result v14

    const/4 v0, -0x1

    if-ne v14, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v11, v10, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v14, v14

    sub-long/2addr v12, v14

    const/16 v0, 0x1000

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to read data from input stream, size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    :goto_1
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    :try_start_1
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v7, 0x0

    move-object v11, v7

    const/4 v10, 0x0

    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v0

    sget-object v12, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->PUT:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    invoke-static {v9, v0, v12, v7}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/apache/http/client/methods/HttpPut;

    new-instance v13, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v13, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v12, v13}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v12, v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v12, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_5

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    const-class v13, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;

    invoke-virtual {v12, v0, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->getEtag()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->getPartSize()J

    move-result-wide v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_4

    if-eqz v11, :cond_2

    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    return-object v0

    :cond_3
    const-wide/16 v14, 0x0

    :cond_4
    :try_start_5
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail to parse the result of uploading part. bucket name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", object name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", upload ID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-wide/16 v14, 0x0

    new-instance v12, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to upload object["

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] to URI :"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Fail to upload part "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    const-wide/16 v14, 0x0

    :goto_3
    :try_start_6
    new-instance v7, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail to put part. URI:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_6
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_5
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    const-wide/16 v14, 0x0

    :goto_4
    add-int/lit8 v10, v10, 0x1

    :try_start_7
    iget-object v7, v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v7}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getMaxRetryTimes()I

    move-result v7

    if-ge v10, v7, :cond_8

    sget-boolean v7, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->TEST_MODE:Z

    if-nez v7, :cond_6

    const-string v7, "GalaxyFDSClientImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Retry the upload of object:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " bucket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " upload id:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " part number:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " cause:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    if-eqz v11, :cond_7

    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_8
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_5
    if-eqz v11, :cond_9

    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    :cond_9
    throw v0
.end method


# virtual methods
.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const-string v0, "] from URI :"

    const-string v1, "Unable to head object["

    const-string v2, "bucket name"

    invoke-static {p1, v2}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v2, "object name"

    invoke-static {p2, v2}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v3}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getBaseUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v4}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->HEAD:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v6, 0x194

    if-ne v5, v6, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Cause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Exception:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1, v4}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getObject(Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    const-string v5, "] from URI :"

    const-string v6, "/"

    const-string v7, "Unable to get object["

    const-string v8, "URI"

    invoke-static {v0, v8}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v8, "offset in content"

    invoke-static {v2, v3, v8}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNegative(JLjava/lang/String;)J

    const/4 v8, -0x1

    if-eqz v4, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;

    const-string v11, "?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v8, :cond_0

    const/16 v11, 0x3f

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v11, 0x26

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v10}, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v9, v0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    const/16 v11, 0x2f

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    if-eq v11, v8, :cond_7

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v11, v12

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v11, 0x0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v12, 0x0

    cmp-long v14, v2, v12

    if-lez v14, :cond_3

    invoke-direct {v1, v4}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->isGetThumbnail(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v2}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->GET:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    invoke-static {v9, v2, v3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_5

    const/16 v4, 0xce

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ". Cause:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    :try_start_4
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    invoke-direct {v3, v8, v10}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->parseObjectMetadata([Lorg/apache/http/Header;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    move-result-object v0

    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;

    move-object/from16 v12, p5

    invoke-direct {v4, v2, v0, v12}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;-><init>(Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)V

    invoke-virtual {v3, v4}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->setObjectContent(Ljava/io/InputStream;)V

    invoke-virtual {v3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->setObjectMetadata(Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v3

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v3, v11

    :goto_3
    move-object v11, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v11

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v3, v11

    :goto_4
    :try_start_5
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v15, v11

    move-object v11, v2

    move-object v2, v15

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v2, v11

    :goto_5
    move-object v11, v3

    :goto_6
    if-eqz v11, :cond_6

    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    :cond_6
    throw v0

    :cond_7
    :try_start_8
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v2, "not a valid object URI"

    invoke-direct {v0, v9, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI, can\'t parse bucket nameand object name form it:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const-string v0, "bucket name"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "object name"

    invoke-static {p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getDownloadBaseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;Z)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            "Z)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    const-string v0, "Destination file"

    invoke-static {p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v9, p3

    invoke-direct {p0, v9}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->isGetThumbnail(Ljava/util/List;)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_0

    if-nez v10, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    const-wide/16 v1, 0x0

    :goto_2
    move-wide v3, v1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->downloadObjectToFile(Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;Ljava/io/File;Z)V

    invoke-virtual {v1}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->getObjectMetadata()Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    move-result-object v0
    :try_end_0
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    add-int/lit8 v12, v12, 0x1

    iget-object v1, v7, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getMaxRetryTimes()I

    move-result v1

    if-ge v12, v1, :cond_3

    sget-boolean v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->TEST_MODE:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry the download of object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cause:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyFDSClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v2, p1

    goto :goto_0

    :cond_3
    throw v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p3

    const-string v0, "Destination file"

    invoke-static {v9, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v10, p4

    invoke-direct {p0, v10}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->isGetThumbnail(Ljava/util/List;)Z

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-eqz v13, :cond_0

    if-nez v11, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    const-wide/16 v1, 0x0

    :goto_2
    move-wide v4, v1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object v1

    invoke-static {v1, v9, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->downloadObjectToFile(Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;Ljava/io/File;Z)V

    invoke-virtual {v1}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->getObjectMetadata()Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    move-result-object v0
    :try_end_0
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    add-int/lit8 v13, v13, 0x1

    iget-object v1, v8, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getMaxRetryTimes()I

    move-result v1

    if-ge v13, v1, :cond_3

    sget-boolean v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->TEST_MODE:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry the download of object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bucket"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cause:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyFDSClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v3, p1

    move-object/from16 v2, p2

    goto :goto_0

    :cond_3
    throw v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;Z)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            "Z)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    invoke-direct {v5}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->setContentLength(J)V

    invoke-static {p3}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->setLastModified(Ljava/util/Date;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unable to find the file to be uploaded:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p3

    move-object/from16 v12, p4

    const-string v1, "bucket name"

    invoke-static {v11, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v11, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v1, "input stream"

    invoke-static {v0, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "metadata"

    invoke-static {v12, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p4 .. p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->getContentLength()J

    move-result-wide v1

    const-string v3, "content length"

    invoke-static {v1, v2, v3}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNegative(JLjava/lang/String;)J

    invoke-virtual/range {p4 .. p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/xiaomi/infra/galaxy/fds/android/util/Consts;->APPLICATION_OCTET_STREAM:Ljava/lang/String;

    invoke-virtual {v12, v3}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    new-instance v13, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;

    move-object/from16 v4, p6

    invoke-direct {v13, v0, v12, v4}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;-><init>(Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)V

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->getContentLength()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p2

    :try_start_1
    invoke-direct {v10, v11, v6, v4, v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->initMultipartUpload(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->getObjectName()Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v10, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getUploadPartSize()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v3, v1

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    long-to-int v4, v3

    div-int v9, v4, v0

    long-to-int v2, v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v16, 0x1

    move v6, v2

    const/4 v5, 0x1

    :goto_0
    if-gt v5, v9, :cond_1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v3, v4, [B

    const/4 v1, 0x0

    invoke-virtual {v13, v3, v1, v4}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->read([BII)I

    iget-object v2, v10, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;

    move-object/from16 p2, v1

    move-object/from16 v1, p2

    move/from16 p3, v0

    move-object v0, v2

    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object v3, v15

    move/from16 v18, v4

    move-object/from16 v4, p1

    move/from16 v19, v5

    move-object v5, v14

    move/from16 v20, v6

    move/from16 v6, v19

    move-object v12, v7

    move-object/from16 v7, v17

    move-object v10, v8

    move-object/from16 v8, p4

    move v11, v9

    move/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;-><init>(Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int v6, v20, v18

    add-int/lit8 v5, v19, 0x1

    move/from16 v0, p3

    move-object v8, v10

    move v9, v11

    move-object v7, v12

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    goto :goto_0

    :cond_1
    move-object v12, v7

    move-object v10, v8

    move v11, v9

    const/4 v0, 0x1

    :goto_1
    if-gt v0, v11, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;

    invoke-direct {v6}, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;-><init>()V

    invoke-virtual {v6, v12}, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;->setUploadPartResultList(Ljava/util/List;)V

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->completeMultipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v13}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0

    :catch_1
    move-exception v0

    move-object v3, v15

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v6, p2

    :goto_2
    move-object v14, v6

    :goto_3
    if-eqz v3, :cond_3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_5
    invoke-direct {v1, v2, v14, v3}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->abortMultipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object/from16 v1, p0

    :goto_4
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    invoke-direct {v2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :goto_5
    :try_start_6
    invoke-virtual {v13}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    throw v0
.end method
