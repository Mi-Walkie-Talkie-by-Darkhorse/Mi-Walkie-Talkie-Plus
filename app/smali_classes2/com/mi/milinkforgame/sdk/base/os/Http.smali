.class public Lcom/mi/milinkforgame/sdk/base/os/Http;
.super Ljava/lang/Object;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;,
        Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxyMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT:I = 0xea60

.field public static final DEFAULT_READ_TIMEOUT:I = 0xea60

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final HEADER_X_ONLINE_HOST:Ljava/lang/String; = "X-Online-Host"

.field public static final HTTP_CLIENT_ERROR:I = 0x190

.field public static final HTTP_CODE_ERROR:I = 0x1000

.field public static final HTTP_CONNECT_ERROR:I = 0x400

.field public static final HTTP_REDIRECT:I = 0x12c

.field public static final HTTP_SERVER_ERROR:I = 0x1f4

.field public static final HTTP_SUCCESS:I = 0xc8

.field public static final HTTP_URL_NOT_AVALIBLE:I = 0x800

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PROTOCOL_HOST_SPLITTER:C = '/'

.field public static final PROTOCOL_PORT_SPLITTER:C = ':'

.field public static final PROTOCOL_PREFIX:Ljava/lang/String; = "http://"

.field public static final PROTOCOL_PREFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/mi/milinkforgame/sdk/base/os/Http;->PROTOCOL_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;)I
    .locals 7

    const v5, 0xea60

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/mi/milinkforgame/sdk/base/os/Http;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;II)I

    move-result v0

    return v0
.end method

.method public static doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;II)I
    .locals 7

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/mi/milinkforgame/sdk/base/os/Http;->doRequest(Ljava/lang/String;Ljava/lang/String;[BZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;II)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0
.end method

.method public static doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;IILjava/lang/String;)I
    .locals 8

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/mi/milinkforgame/sdk/base/os/Http;->doRequest(Ljava/lang/String;Ljava/lang/String;[BZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0
.end method

.method public static doRequest(Ljava/lang/String;Ljava/lang/String;[BZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;)I
    .locals 7

    const v5, 0xea60

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/mi/milinkforgame/sdk/base/os/Http;->doRequest(Ljava/lang/String;Ljava/lang/String;[BZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;II)I

    move-result v0

    return v0
.end method

.method public static doRequest(Ljava/lang/String;Ljava/lang/String;[BZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;II)I
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/mi/milinkforgame/sdk/base/os/Http;->doRequest(Ljava/lang/String;Ljava/lang/String;[BZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static doRequest(Ljava/lang/String;Ljava/lang/String;[BZLcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;IILjava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    if-eqz p4, :cond_9

    :try_start_0
    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/base/os/Http;->splitUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v2, v0

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, p5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "Host"

    invoke-virtual {v0, v1, p7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "Content-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string v1, "X-Online-Host"

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz p3, :cond_5

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_2
    const-string v3, "http://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_5
    :try_start_3
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_4
    const/16 v0, 0x800

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_5
    const/16 v0, 0x400

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_6
    const/16 v0, 0x1000

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_7

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    move-object v0, p0

    goto/16 :goto_0
.end method

.method public static download(Ljava/lang/String;Ljava/io/File;)I
    .locals 10

    const/4 v2, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isWap()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;->Default:Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_8

    :try_start_0
    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/base/os/Http;->splitUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x7530

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v4, 0x3a98

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz v1, :cond_0

    const-string v1, "X-Online-Host"

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/base/os/Http;->isSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x2000

    new-array v5, v5, [B

    :goto_3
    const/4 v6, -0x1

    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-eq v6, v7, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    :goto_4
    const/16 v4, 0x10

    :try_start_3
    const-string v5, "Http"

    const-string v6, "Download Failed"

    invoke-static {v4, v5, v6, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->autoTrace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v0, 0x400

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_5
    const/4 v1, 0x4

    const-string v3, "Http"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download Result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->autoTrace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_2
    move-object v1, v2

    goto/16 :goto_0

    :cond_3
    :try_start_4
    const-string v4, "http://"

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_6
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v3

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_7
    const/16 v4, 0x10

    :try_start_6
    const-string v5, "Http"

    const-string v6, "Download Failed"

    invoke-static {v4, v5, v6, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->autoTrace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v0, 0x1000

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_8
    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_7

    :catch_3
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_4

    :catch_5
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_4

    :cond_6
    move v0, v3

    goto :goto_5

    :cond_7
    move-object v1, v2

    goto :goto_6

    :cond_8
    move-object v3, v2

    move-object v0, p0

    goto/16 :goto_1
.end method

.method public static isSuccess(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12b

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static splitUrl(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v2, Lcom/mi/milinkforgame/sdk/base/os/Http;->PROTOCOL_PREFIX_LENGTH:I

    if-ge v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    const/16 v0, 0x2f

    sget v2, Lcom/mi/milinkforgame/sdk/base/os/Http;->PROTOCOL_PREFIX_LENGTH:I

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    sget v2, Lcom/mi/milinkforgame/sdk/base/os/Http;->PROTOCOL_PREFIX_LENGTH:I

    if-gt v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    const/4 v2, 0x0

    sget v3, Lcom/mi/milinkforgame/sdk/base/os/Http;->PROTOCOL_PREFIX_LENGTH:I

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "http://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string v0, ""

    aput-object v0, v1, v4

    goto :goto_2
.end method
