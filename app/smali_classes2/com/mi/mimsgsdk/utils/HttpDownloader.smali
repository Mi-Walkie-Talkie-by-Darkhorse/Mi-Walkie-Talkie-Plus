.class public Lcom/mi/mimsgsdk/utils/HttpDownloader;
.super Ljava/lang/Object;
.source "HttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;,
        Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDiskLruCacheDownloadedTask;,
        Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;,
        Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_LOG:Ljava/lang/String; = "HttpDownloadLog"

.field public static final DOWNLOAD_STATE_CANCEL:I = 0x1

.field public static final DOWNLOAD_STATE_FAILED:I = 0x2

.field public static final DOWNLOAD_STATE_SUCCESS:I = 0x3

.field public static final Ks3_Client_SATEFY_IP_URL_NORMAL:Ljava/lang/String; = "http://120.131.2.241/kssiplist"

.field public static final Ks3_Client_SATEFY_IP_URL_UNNORMAL:Ljava/lang/String; = "http://123.59.35.94/kssiplist"

.field public static final LOG_SERVER_URL:Ljava/lang/String; = "http://mlog.ksyun.com"

.field public static networkCallback:Lcom/mi/mimsgsdk/utils/NetworkUtilsCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diskCacheDownloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/utils/DiskLruCache;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDiskLruCacheDownloadedTask;)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/mi/mimsgsdk/utils/DiskLruCache;->edit(Ljava/lang/String;)Lcom/mi/mimsgsdk/utils/DiskLruCache$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_4

    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/mi/mimsgsdk/utils/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/mi/mimsgsdk/utils/DiskLruCache;->get(Ljava/lang/String;)Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;

    move-result-object v3

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDiskLruCacheDownloadedTask;)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    move-result-object v0

    iget v1, v0, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;->result:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v7}, Lcom/mi/mimsgsdk/utils/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    :try_start_2
    invoke-virtual {p2, p1}, Lcom/mi/mimsgsdk/utils/DiskLruCache;->get(Ljava/lang/String;)Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDiskLruCacheDownloadedTask;->doThis(Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p2, p1}, Lcom/mi/mimsgsdk/utils/DiskLruCache;->get(Ljava/lang/String;)Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;->onCompleted(Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v1}, Lcom/mi/mimsgsdk/utils/DiskLruCache$Editor;->abort()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "HttpDownloadLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Error in downloadFile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    :try_start_4
    invoke-interface {p3}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;->onFailed()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-eqz v7, :cond_5

    :try_start_5
    invoke-virtual {v7}, Lcom/mi/mimsgsdk/utils/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_1
    new-instance v0, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    invoke-direct {v0, v9, v10, v8, v6}, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;-><init>(IIILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HttpDownloadLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Error in downloadFile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    :goto_2
    if-eqz p3, :cond_6

    :try_start_6
    invoke-interface {p3}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;->onFailed()V

    :cond_6
    const-string v0, "HttpDownloadLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Error in downloadFile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;-><init>(IIILjava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Lcom/mi/mimsgsdk/utils/DiskLruCache$Editor;->abort()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string v2, "HttpDownloadLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Error in downloadFile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v7, v6

    :goto_3
    if-eqz p3, :cond_7

    :try_start_8
    invoke-interface {p3}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;->onFailed()V

    :cond_7
    const-string v1, "HttpDownloadLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Error in downloadFile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_5

    :try_start_9
    invoke-virtual {v7}, Lcom/mi/mimsgsdk/utils/DiskLruCache$Editor;->abort()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    const-string v1, "HttpDownloadLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Error in downloadFile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v6

    :goto_4
    if-eqz v7, :cond_8

    :try_start_a
    invoke-virtual {v7}, Lcom/mi/mimsgsdk/utils/DiskLruCache$Editor;->abort()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_8
    :goto_5
    throw v0

    :catch_6
    move-exception v1

    const-string v2, "HttpDownloadLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Error in downloadFile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v2

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    goto/16 :goto_2
.end method

.method public static downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDiskLruCacheDownloadedTask;)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDiskLruCacheDownloadedTask;ZZ)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method private static downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDiskLruCacheDownloadedTask;ZZ)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;
    .locals 21

    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Lcom/mi/mimsgsdk/utils/AttachmentManagerUtils;->isEffectiveRes(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "HttpDownloadLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid_resource: Try to download invalid resource after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mi/mimsgsdk/utils/AttachmentManagerUtils;->mFailedDownloadingResStatic:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times try"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    const/4 v5, -0x2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;-><init>(IIILjava/lang/Exception;)V

    :goto_0
    return-object v4

    :cond_0
    const/4 v11, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v10, 0x0

    const-string v5, ""

    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    invoke-static {}, Lcom/mi/mimsgsdk/utils/Network;->isCmwap()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-static {v4}, Lcom/mi/mimsgsdk/utils/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    const-string v16, "X-Online-Host"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v4

    :goto_1
    const-string v4, "Connection"

    const-string v16, "Keep-Alive"

    move-object/from16 v0, v16

    invoke-virtual {v13, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_1

    const-string v4, "Host"

    const-string v16, "kss.ksyun.com"

    move-object/from16 v0, v16

    invoke-virtual {v13, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sun.net.http.allowRestrictedHeaders"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-static {v13}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->setConnectionTimeout(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    :try_start_1
    const-string v6, "HttpDownloadLog"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "the response code is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", connected in "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->getRequestId(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    :try_start_2
    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mi/mimsgsdk/utils/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p1

    invoke-static {v0, v6, v4}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->recordRequestInfo(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_2
    new-instance v5, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    const/4 v13, -0x1

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v5, v13, v0, v1, v2}, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;-><init>(IIILjava/lang/Exception;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v14

    if-nez v4, :cond_3

    const/4 v4, -0x1

    :cond_3
    const/16 v6, 0xc8

    if-eq v4, v6, :cond_4

    const/16 v6, 0x64

    if-eq v4, v6, :cond_4

    const/16 v6, 0xce

    if-ne v4, v6, :cond_5

    :cond_4
    const/4 v4, 0x0

    :cond_5
    const-string v6, "HttpDownloadLog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DownLoadErrorCode"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HttpDownloadLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http downloadFile to "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " cost "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "ms, download size = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_6

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    :goto_3
    move-object v4, v5

    goto/16 :goto_0

    :cond_7
    :try_start_4
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v13, v4

    goto/16 :goto_1

    :cond_8
    :try_start_5
    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mi/mimsgsdk/utils/Network;->hasNetwork(Landroid/content/Context;)Z
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_2

    :catch_0
    move-exception v4

    const-string v6, "HttpDownloadLog"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    :try_start_6
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v16

    new-instance v5, Lcom/mi/mimsgsdk/utils/NetworkUtils$DoneHandlerInputStream;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/mi/mimsgsdk/utils/NetworkUtils$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v7, "HttpDownloadLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "content bytes "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x2800

    new-array v7, v7, [B

    :cond_a
    :goto_4
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_10

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1, v13}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    if-eqz p4, :cond_a

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p4

    move-wide/from16 v1, v18

    invoke-interface {v0, v8, v9, v1, v2}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;->onDownloaded(JJ)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v7

    move-object/from16 v20, v6

    move-object v6, v5

    move-object/from16 v5, v20

    :goto_5
    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v14

    if-nez v4, :cond_b

    const/4 v4, -0x1

    :cond_b
    const/16 v14, 0xc8

    if-eq v4, v14, :cond_c

    const/16 v14, 0x64

    if-eq v4, v14, :cond_c

    const/16 v14, 0xce

    if-ne v4, v14, :cond_d

    :cond_c
    const/4 v4, 0x0

    :cond_d
    const-string v14, "HttpDownloadLog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DownLoadErrorCode"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "HttpDownloadLog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http downloadFile to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms, download size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_e

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_e
    :goto_6
    move-object v6, v5

    move v5, v7

    move-object v7, v10

    move v10, v4

    move v4, v11

    :goto_7
    if-nez v4, :cond_f

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->recordRequestInfo(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static/range {p1 .. p1}, Lcom/mi/mimsgsdk/utils/AttachmentManagerUtils;->updateResInvalidCoefficient(Ljava/lang/String;)V

    :cond_f
    if-eqz v5, :cond_1d

    if-eqz p6, :cond_1d

    invoke-static/range {p1 .. p1}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->getSaftURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v4 .. v11}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;Lcom/mi/mimsgsdk/utils/DiskLruCache$Snapshot;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadDiskCacheProgress;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDiskLruCacheDownloadedTask;ZZ)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    move-result-object v4

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v16, v14

    if-nez v4, :cond_11

    const/4 v4, -0x1

    :cond_11
    const/16 v11, 0xc8

    if-eq v4, v11, :cond_12

    const/16 v11, 0x64

    if-eq v4, v11, :cond_12

    const/16 v11, 0xce

    if-ne v4, v11, :cond_13

    :cond_12
    const/4 v4, 0x0

    :cond_13
    const-string v11, "HttpDownloadLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DownLoadErrorCode"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "HttpDownloadLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http downloadFile to "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " cost "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms, download size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_14

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_14
    :goto_8
    move v5, v12

    move/from16 v20, v4

    move v4, v7

    move-object v7, v10

    move/from16 v10, v20

    goto/16 :goto_7

    :catch_2
    move-exception v5

    const-string v11, "HttpDownloadLog"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_3
    move-exception v6

    const-string v12, "HttpDownloadLog"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_4
    move-exception v4

    move-object/from16 v20, v4

    move v4, v6

    move-object v6, v5

    move-object/from16 v5, v20

    :goto_9
    :try_start_a
    const-string v10, "HttpDownloadLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error to call url:"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " error:"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13, v5}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v16, v14

    if-nez v4, :cond_15

    const/4 v4, -0x1

    :cond_15
    const/16 v10, 0xc8

    if-eq v4, v10, :cond_16

    const/16 v10, 0x64

    if-eq v4, v10, :cond_16

    const/16 v10, 0xce

    if-ne v4, v10, :cond_17

    :cond_16
    const/4 v4, 0x0

    :cond_17
    const-string v10, "HttpDownloadLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DownLoadErrorCode"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "HttpDownloadLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http downloadFile to "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " cost "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms, download size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_18

    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_18
    :goto_a
    move-object v7, v5

    move v10, v4

    move v4, v11

    move v5, v12

    goto/16 :goto_7

    :catch_5
    move-exception v7

    const-string v10, "HttpDownloadLog"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catchall_0
    move-exception v4

    move-object v5, v4

    move v4, v6

    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v14

    if-nez v4, :cond_19

    const/4 v4, -0x1

    :cond_19
    const/16 v6, 0xc8

    if-eq v4, v6, :cond_1a

    const/16 v6, 0x64

    if-eq v4, v6, :cond_1a

    const/16 v6, 0xce

    if-ne v4, v6, :cond_1b

    :cond_1a
    const/4 v4, 0x0

    :cond_1b
    const-string v6, "HttpDownloadLog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DownLoadErrorCode"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HttpDownloadLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http downloadFile to "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " cost "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "ms, download size = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_1c

    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_1c
    :goto_c
    throw v5

    :catch_6
    move-exception v4

    const-string v6, "HttpDownloadLog"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_1d
    new-instance v5, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    if-eqz v4, :cond_1e

    const/4 v4, 0x3

    :goto_d
    long-to-int v6, v8

    invoke-direct {v5, v10, v4, v6, v7}, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;-><init>(IIILjava/lang/Exception;)V

    move-object v4, v5

    goto/16 :goto_0

    :cond_1e
    const/4 v4, 0x2

    goto :goto_d

    :catchall_1
    move-exception v5

    goto :goto_b

    :catchall_2
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    goto :goto_b

    :catch_7
    move-exception v6

    move-object/from16 v20, v6

    move-object v6, v5

    move-object/from16 v5, v20

    goto/16 :goto_9

    :catch_8
    move-exception v5

    goto/16 :goto_9

    :catch_9
    move-exception v7

    move-object/from16 v20, v7

    move-object v7, v5

    move-object/from16 v5, v20

    goto/16 :goto_9

    :catch_a
    move-exception v4

    move v4, v6

    move-object v6, v7

    goto/16 :goto_5

    :catch_b
    move-exception v6

    move-object v6, v7

    goto/16 :goto_5

    :catch_c
    move-exception v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_5
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/File;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;Z)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->downloadFile(Ljava/lang/String;Ljava/io/File;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;ZZZ)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/File;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;ZZZ)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;
    .locals 30
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v17, 0x0

    invoke-static/range {p0 .. p0}, Lcom/mi/mimsgsdk/utils/AttachmentManagerUtils;->isEffectiveRes(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "HttpDownloadLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid_resource: Try to download invalid resource after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mi/mimsgsdk/utils/AttachmentManagerUtils;->mFailedDownloadingResStatic:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " times try"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    const/4 v7, -0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;-><init>(IIILjava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->addDownloadingResource(Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/4 v15, 0x0

    const-string v8, ""

    :try_start_0
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    invoke-static {}, Lcom/mi/mimsgsdk/utils/Network;->isCmwap()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-static {v6}, Lcom/mi/mimsgsdk/utils/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v6

    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    const-string v18, "X-Online-Host"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v6

    :goto_1
    const-string v6, "Connection"

    const-string v14, "Keep-Alive"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept-Encoding"

    const-string v14, "identity"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    const-string v6, "Host"

    const-string v14, "kss.ksyun.com"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sun.net.http.allowRestrictedHeaders"

    const-string v14, "true"

    invoke-static {v6, v14}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v18

    if-eqz p3, :cond_3

    const-wide/16 v24, 0x0

    cmp-long v6, v18, v24

    if-eqz v6, :cond_3

    const-string v6, "Range"

    const-string v14, "bytes=%d-"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v21, v24

    move-object/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "HttpDownloadLog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Range:"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v21, "bytes=%d-"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v12, v18

    :cond_3
    invoke-static/range {v20 .. v20}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->setConnectionTimeout(Ljava/net/HttpURLConnection;)V

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    :try_start_1
    const-string v6, "HttpDownloadLog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "the response code is "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v21, ", connected in "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v22

    move-wide/from16 v0, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->getRequestId(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, -0x1

    if-ne v14, v6, :cond_8

    const-string v6, "HttpDownloadLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DownLoadErrorCode"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mi/mimsgsdk/utils/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    invoke-static {v0, v8, v14}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->recordRequestInfo(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->removeDownloadingResource(Ljava/lang/String;)V

    new-instance v6, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    const/4 v7, -0x1

    const/4 v10, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v7, v10, v0, v1}, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;-><init>(IIILjava/lang/Exception;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v22

    const-string v7, "HttpDownloadLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http downloadFile to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " cost "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "ms, total size = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_5

    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_3
    if-eqz v11, :cond_0

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v8, "HttpDownloadLog"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v20, v6

    goto/16 :goto_1

    :cond_7
    :try_start_5
    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mi/mimsgsdk/utils/Network;->hasNetwork(Landroid/content/Context;)Z
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :catch_1
    move-exception v7

    const-string v8, "HttpDownloadLog"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    const-wide/16 v24, 0x0

    cmp-long v6, v18, v24

    if-lez v6, :cond_9

    const/16 v6, 0xce

    if-eq v14, v6, :cond_9

    const/16 p3, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v12, 0x0

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    :cond_9
    if-eqz p3, :cond_d

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    move-wide/from16 v0, v18

    long-to-int v10, v0

    add-int/2addr v6, v10

    :goto_4
    if-eqz p2, :cond_a

    int-to-long v0, v6

    move-wide/from16 v24, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    move-wide/from16 v3, v24

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;->onDownloaded(JJ)V

    :cond_a
    new-instance v10, Lcom/mi/mimsgsdk/utils/NetworkUtils$DoneHandlerInputStream;

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/mi/mimsgsdk/utils/NetworkUtils$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string v9, "HttpDownloadLog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content bytes "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x2800

    new-array v0, v9, [B

    move-object/from16 v18, v0

    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {v9, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    :try_start_8
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_26

    sget-object v19, Lcom/mi/mimsgsdk/utils/HttpDownloader;->networkCallback:Lcom/mi/mimsgsdk/utils/NetworkUtilsCallback;

    if-eqz v19, :cond_e

    sget-object v19, Lcom/mi/mimsgsdk/utils/HttpDownloader;->networkCallback:Lcom/mi/mimsgsdk/utils/NetworkUtilsCallback;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/utils/NetworkUtilsCallback;->continueDownloading(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v19

    if-nez v19, :cond_e

    const/4 v11, 0x1

    :goto_6
    if-nez v11, :cond_25

    const/4 v6, 0x1

    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v22

    const-string v7, "HttpDownloadLog"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http downloadFile to "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v20, " cost "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "ms, total size = "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_b

    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_b
    :goto_8
    if-eqz v9, :cond_c

    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_c
    :goto_9
    move-object v7, v8

    move-object v10, v15

    move/from16 v9, p3

    move/from16 v15, v17

    move/from16 v27, v11

    move v11, v6

    move v6, v14

    move/from16 v14, v27

    :goto_a
    if-eqz v11, :cond_18

    move v8, v6

    :goto_b
    if-nez v11, :cond_1f

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->recordRequestInfo(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static/range {p0 .. p0}, Lcom/mi/mimsgsdk/utils/AttachmentManagerUtils;->updateResInvalidCoefficient(Ljava/lang/String;)V

    if-eqz v15, :cond_1f

    if-eqz p4, :cond_1f

    invoke-static/range {p0 .. p0}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->getSaftURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    invoke-static/range {p0 .. p0}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->removeDownloadingResource(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v6 .. v11}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->downloadFile(Ljava/lang/String;Ljava/io/File;Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;ZZZ)Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    move-result-object v6

    goto/16 :goto_0

    :cond_d
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v6

    goto/16 :goto_4

    :cond_e
    const/16 v19, 0x0

    :try_start_c
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1, v11}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v0, v11

    move-wide/from16 v20, v0

    add-long v12, v12, v20

    if-eqz p2, :cond_f

    int-to-long v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v20

    invoke-interface {v0, v12, v13, v1, v2}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;->onDownloaded(JJ)V

    :cond_f
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->addDownloadingResource(Ljava/lang/String;J)V
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_5

    :catch_2
    move-exception v6

    move-object v7, v8

    move-object v8, v10

    move-wide v10, v12

    move v12, v14

    :goto_c
    const/4 v6, 0x0

    const/4 v13, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v22

    const-string v14, "HttpDownloadLog"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http downloadFile to "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " cost "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms, total size = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_10

    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_10
    :goto_d
    if-eqz v9, :cond_11

    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :cond_11
    :goto_e
    move/from16 v14, v16

    move/from16 v9, p3

    move/from16 v27, v12

    move/from16 v28, v6

    move/from16 v6, v27

    move-object/from16 v29, v15

    move v15, v13

    move-wide v12, v10

    move-object/from16 v10, v29

    move/from16 v11, v28

    goto/16 :goto_a

    :catch_3
    move-exception v7

    const-string v10, "HttpDownloadLog"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_4
    move-exception v6

    const-string v7, "HttpDownloadLog"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto/16 :goto_9

    :catch_5
    move-exception v8

    const-string v14, "HttpDownloadLog"

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_6
    move-exception v6

    const-string v8, "HttpDownloadLog"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_e

    :catch_7
    move-exception v6

    move-object v7, v6

    move v14, v10

    :goto_f
    const/4 v6, 0x0

    :try_start_f
    const-string v10, "HttpDownloadLog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error to call url:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " error:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v15, v7}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v22

    const-string v10, "HttpDownloadLog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http downloadFile to "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, " cost "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "ms, total size = "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v15}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_12

    :try_start_10
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    :cond_12
    :goto_10
    if-eqz v11, :cond_13

    :try_start_11
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    :cond_13
    :goto_11
    move-object v10, v7

    move v11, v6

    move/from16 v15, v17

    move/from16 v9, p3

    move v6, v14

    move-object v7, v8

    move/from16 v14, v16

    goto/16 :goto_a

    :catch_8
    move-exception v9

    const-string v10, "HttpDownloadLog"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_9
    move-exception v6

    const-string v9, "HttpDownloadLog"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_11

    :catch_a
    move-exception v6

    move v14, v10

    :goto_12
    :try_start_12
    const-string v7, "HttpDownloadLog"

    const-string v10, "unexpected error"

    invoke-static {v7, v10, v6}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v22

    const-string v7, "HttpDownloadLog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http downloadFile to "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v20, " cost "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v18, "ms, total size = "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_14

    :try_start_13
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    :cond_14
    :goto_13
    if-eqz v11, :cond_15

    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    :cond_15
    :goto_14
    move-object v7, v8

    move-object v10, v15

    move v11, v6

    move/from16 v9, p3

    move/from16 v15, v17

    move v6, v14

    move/from16 v14, v16

    goto/16 :goto_a

    :catch_b
    move-exception v7

    const-string v9, "HttpDownloadLog"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_c
    move-exception v6

    const-string v7, "HttpDownloadLog"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_14

    :catchall_0
    move-exception v6

    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v22

    const-string v7, "HttpDownloadLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http downloadFile to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " cost "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "ms, total size = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_16

    :try_start_15
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    :cond_16
    :goto_16
    if-eqz v11, :cond_17

    :try_start_16
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    :cond_17
    :goto_17
    throw v6

    :catch_d
    move-exception v7

    const-string v8, "HttpDownloadLog"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catch_e
    move-exception v7

    const-string v8, "HttpDownloadLog"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_18
    if-nez v6, :cond_19

    const/4 v6, -0x1

    :cond_19
    const/16 v8, 0xc8

    if-eq v6, v8, :cond_1a

    const/16 v8, 0x64

    if-eq v6, v8, :cond_1a

    const/16 v8, 0xce

    if-ne v6, v8, :cond_1b

    :cond_1a
    const/4 v6, 0x0

    :cond_1b
    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/mi/mimsgsdk/utils/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1c

    move v8, v6

    goto/16 :goto_b

    :cond_1c
    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/mi/mimsgsdk/utils/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1d

    move v8, v6

    goto/16 :goto_b

    :cond_1d
    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/mi/mimsgsdk/utils/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1e

    :cond_1e
    move v8, v6

    goto/16 :goto_b

    :cond_1f
    if-eqz p2, :cond_20

    if-eqz v14, :cond_21

    invoke-interface/range {p2 .. p2}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;->onCanceled()V

    :cond_20
    :goto_18
    invoke-static/range {p0 .. p0}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->removeDownloadingResource(Ljava/lang/String;)V

    new-instance v7, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;

    if-eqz v14, :cond_23

    const/4 v6, 0x1

    :goto_19
    long-to-int v9, v12

    invoke-direct {v7, v8, v6, v9, v10}, Lcom/mi/mimsgsdk/utils/HttpDownloader$DownloadResponse;-><init>(IIILjava/lang/Exception;)V

    move-object v6, v7

    goto/16 :goto_0

    :cond_21
    if-nez v11, :cond_22

    invoke-interface/range {p2 .. p2}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;->onFailed()V

    goto :goto_18

    :cond_22
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/mi/mimsgsdk/utils/HttpDownloader$OnDownloadProgress;->onCompleted(Ljava/lang/String;)V

    goto :goto_18

    :cond_23
    if-eqz v11, :cond_24

    const/4 v6, 0x3

    goto :goto_19

    :cond_24
    const/4 v6, 0x2

    goto :goto_19

    :catchall_1
    move-exception v6

    move-object v9, v10

    goto/16 :goto_15

    :catchall_2
    move-exception v6

    move-object v11, v9

    move-object v9, v10

    goto/16 :goto_15

    :catch_f
    move-exception v6

    goto/16 :goto_12

    :catch_10
    move-exception v6

    move-object v9, v10

    goto/16 :goto_12

    :catch_11
    move-exception v6

    move-object v11, v9

    move-object v9, v10

    goto/16 :goto_12

    :catch_12
    move-exception v6

    move-object v7, v6

    goto/16 :goto_f

    :catch_13
    move-exception v6

    move-object v7, v6

    move-object v9, v10

    goto/16 :goto_f

    :catch_14
    move-exception v6

    move-object v7, v6

    move-object v11, v9

    move-object v9, v10

    goto/16 :goto_f

    :catch_15
    move-exception v6

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-wide/from16 v27, v12

    move v12, v10

    move-wide/from16 v10, v27

    goto/16 :goto_c

    :catch_16
    move-exception v6

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-wide v10, v12

    move v12, v14

    goto/16 :goto_c

    :catch_17
    move-exception v6

    move-object v7, v8

    move-object v9, v11

    move-object v8, v10

    move-wide v10, v12

    move v12, v14

    goto/16 :goto_c

    :cond_25
    move v6, v7

    goto/16 :goto_7

    :cond_26
    move/from16 v11, v16

    goto/16 :goto_6
.end method

.method private static getKs3Host(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getKs3ServiceIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->getKs3Host(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v2, "HttpDownloadLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get host address failed,reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getRequestId(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    const-string v3, ""

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v4, ""

    const/4 v2, 0x0

    move v8, v2

    move-object v2, v4

    move v4, v8

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v5

    goto :goto_1

    :cond_0
    const-string v1, "x-kss-request-id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HttpDownloadLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v0, "HttpDownloadLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Server IP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->getKs3ServiceIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    move-object v0, v3

    goto :goto_2
.end method

.method public static getSaftIP()Ljava/lang/String;
    .locals 5

    const/16 v4, 0xc8

    const-string v0, ""

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "http://120.131.2.241/kssiplist"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    if-ne v3, v4, :cond_0

    const-string v2, "HttpDownloadLog"

    const-string v3, "get ip success"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "HttpDownloadLog"

    const-string v3, "get ip failure"

    invoke-static {v1, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v3, "http://123.59.35.94/kssiplist"

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v2, "HttpDownloadLog"

    const-string v3, "get ip second success"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "HttpDownloadLog"

    const-string v2, "get ip second failure"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getSaftURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->getKs3Host(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->getSaftIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hideSoftKeyboard(Landroid/app/Activity;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private static parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ct"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_0
.end method

.method private static recordRequestInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    invoke-static {p0}, Lcom/mi/mimsgsdk/utils/HttpDownloader;->getKs3ServiceIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpDownloadLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service ip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "LogRequestId"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "LogTargetIp"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v0

    const-string v2, "http://mlog.ksyun.com"

    invoke-static {v0, v2, v1}, Lcom/mi/mimsgsdk/utils/Network;->doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    const-string v0, "HttpDownloadLog"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpDownloadLog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCallback(Lcom/mi/mimsgsdk/utils/NetworkUtilsCallback;)V
    .locals 0

    sput-object p0, Lcom/mi/mimsgsdk/utils/HttpDownloader;->networkCallback:Lcom/mi/mimsgsdk/utils/NetworkUtilsCallback;

    return-void
.end method

.method public static setConnectionTimeout(Ljava/net/HttpURLConnection;)V
    .locals 1

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public static showSoftKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
