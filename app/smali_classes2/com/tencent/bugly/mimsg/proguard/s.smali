.class public final Lcom/tencent/bugly/mimsg/proguard/s;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static b:Lcom/tencent/bugly/mimsg/proguard/s;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/s;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/proguard/s;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/proguard/s;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/s;->b:Lcom/tencent/bugly/mimsg/proguard/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/s;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/mimsg/proguard/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/s;->b:Lcom/tencent/bugly/mimsg/proguard/s;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/s;->b:Lcom/tencent/bugly/mimsg/proguard/s;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const-string v0, "destUrl is null."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p3, p1}, Lcom/tencent/bugly/mimsg/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "Failed to get HttpURLConnection object."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "wup_version"

    const-string v1, "3.0"

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    const-string v0, "Failed to upload, please check your network."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "A37"

    const-string v1, "utf-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "A38"

    const-string v1, "utf-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez p2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private static b(Ljava/net/HttpURLConnection;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLcom/tencent/bugly/mimsg/proguard/v;Ljava/util/Map;)[B
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/tencent/bugly/mimsg/proguard/v;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v4, "Failed for no URL."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez p2, :cond_2

    const-wide/16 v4, 0x0

    :goto_1
    const-string v6, "request: %s, send: %d (pid=%d | tid=%d)"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v9}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-object/from16 v9, p1

    :goto_2
    if-gtz v7, :cond_11

    if-gtz v8, :cond_11

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/bugly/mimsg/proguard/s;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_4

    const-string v10, "Failed to request for network not avail"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v4, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x1

    if-le v7, v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "try time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/util/Random;-><init>(J)V

    const/16 v11, 0x2710

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x2710

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/tencent/bugly/mimsg/proguard/v;->a(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v9, v1, v10, v2}, Lcom/tencent/bugly/mimsg/proguard/s;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v14

    if-eqz v14, :cond_10

    :try_start_0
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v10, 0xc8

    if-ne v12, v10, :cond_7

    invoke-static {v14}, Lcom/tencent/bugly/mimsg/proguard/s;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/tencent/bugly/mimsg/proguard/s;->a:Ljava/util/Map;

    invoke-static {v14}, Lcom/tencent/bugly/mimsg/proguard/s;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object v10

    if-nez v10, :cond_6

    const-wide/16 v12, 0x0

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lcom/tencent/bugly/mimsg/proguard/v;->b(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_5
    move-object v4, v10

    goto/16 :goto_0

    :cond_6
    :try_start_2
    array-length v11, v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v12, v11

    goto :goto_4

    :catch_0
    move-exception v4

    invoke-static {v4}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    const/16 v10, 0x12d

    if-eq v12, v10, :cond_8

    const/16 v10, 0x12e

    if-eq v12, v10, :cond_8

    const/16 v10, 0x12f

    if-eq v12, v10, :cond_8

    const/16 v10, 0x133

    if-ne v12, v10, :cond_a

    :cond_8
    const/4 v10, 0x1

    :goto_6
    if-eqz v10, :cond_12

    const/4 v10, 0x1

    :try_start_3
    const-string v6, "Location"

    invoke-virtual {v14, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Failed to redirect: %d"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6, v11}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_9
    :goto_7
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto :goto_6

    :catch_1
    move-exception v4

    invoke-static {v4}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_b
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    :try_start_5
    const-string v6, "redirect code: %d ,to:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v13

    const/4 v13, 0x1

    aput-object v11, v9, v13

    invoke-static {v6, v9}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v6, v10

    move-object v9, v11

    move/from16 v16, v7

    move v7, v8

    move/from16 v8, v16

    :goto_8
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "response code "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gez v12, :cond_c

    const-wide/16 v10, 0x0

    :cond_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Lcom/tencent/bugly/mimsg/proguard/v;->b(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_d
    :goto_9
    move/from16 v16, v7

    move v7, v8

    move/from16 v8, v16

    goto/16 :goto_2

    :catch_2
    move-exception v10

    invoke-static {v10}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-static {v10}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_3
    move-exception v10

    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    :goto_a
    :try_start_8
    invoke-static {v10}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v11

    if-nez v11, :cond_e

    invoke-static {v10}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_e
    :try_start_9
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_9

    :catch_4
    move-exception v10

    invoke-static {v10}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-static {v10}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_0
    move-exception v4

    :try_start_a
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    :cond_f
    :goto_b
    throw v4

    :catch_5
    move-exception v5

    invoke-static {v5}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_10
    const-string v10, "Failed to execute post."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Lcom/tencent/bugly/mimsg/proguard/v;->b(J)V

    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_6
    move-exception v6

    move-object/from16 v16, v6

    move v6, v10

    move-object/from16 v10, v16

    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto :goto_a

    :catch_7
    move-exception v6

    move-object v9, v11

    move/from16 v16, v10

    move-object v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move v7, v8

    move/from16 v8, v17

    goto :goto_a

    :catch_8
    move-exception v10

    goto :goto_a

    :cond_12
    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    goto/16 :goto_8
.end method
