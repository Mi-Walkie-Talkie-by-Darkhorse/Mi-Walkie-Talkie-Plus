.class public Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;
.super Ljava/lang/Thread;
.source "StylesIconsUpdate.java"


# instance fields
.field private final CONNECTION_TIMEOUT:I

.field private volatile canceled:Z

.field private mEngineID:I

.field mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

.field mReceiveDataLen:I

.field mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

.field netWorkData:Ljava/io/ByteArrayOutputStream;

.field private successed:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/autonavi/ae/gmap/GLMapEngine;Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->netWorkData:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mReceiveDataLen:I

    .line 4
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->canceled:Z

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->successed:Z

    const/16 v1, 0x2710

    .line 6
    iput v1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->CONNECTION_TIMEOUT:I

    .line 7
    iput v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mEngineID:I

    .line 8
    iput p1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mEngineID:I

    .line 9
    iput-object p3, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    .line 10
    iput-object p2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    return-void
.end method

.method private getResourceHeaderData(Ljava/io/ByteArrayOutputStream;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget v1, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->type:I

    .line 2
    iget-object v0, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->fullName:Ljava/lang/String;

    const-string v2, "_|\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 3
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-static {v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v1

    .line 5
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 6
    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v0

    .line 7
    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 8
    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget v0, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->clientVersion:I

    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v0

    .line 9
    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 10
    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget v0, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I

    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v0

    .line 11
    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 12
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    return p1
.end method

.method private putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->getResourceHeaderData(Ljava/io/ByteArrayOutputStream;)I

    const/4 v1, -0x1

    .line 3
    invoke-static {v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 5
    iget v1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mEngineID:I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->PutResourceData(I[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->canceled:Z

    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mapdataver=6&type=30&name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget-object v1, v1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&cv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget v1, v1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->clientVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&sv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget v1, v1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x2710

    .line 7
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 10
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->netWorkData:Ljava/io/ByteArrayOutputStream;

    .line 13
    invoke-direct {p0, v2}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->getResourceHeaderData(Ljava/io/ByteArrayOutputStream;)I

    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 14
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    iget-boolean v4, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->canceled:Z

    if-nez v4, :cond_1

    .line 15
    iget-object v4, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->netWorkData:Ljava/io/ByteArrayOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 16
    iget v4, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mReceiveDataLen:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mReceiveDataLen:I

    goto :goto_0

    .line 17
    :cond_1
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->canceled:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mReceiveDataLen:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_2

    .line 18
    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v2, :cond_4

    .line 19
    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v3, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mEngineID:I

    iget-object v4, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->netWorkData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->PutResourceData(I[B)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0, v2}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0, v2}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 22
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_5
    :goto_2
    if-eqz v1, :cond_8

    .line 23
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_0
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7

    :catch_2
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_7

    :catch_4
    move-object v0, v1

    .line 25
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0, v2}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_6

    .line 26
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    nop

    :cond_6
    :goto_4
    if-eqz v0, :cond_8

    .line 27
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_7
    move-exception v2

    move-object v0, v1

    .line 29
    :goto_5
    :try_start_7
    iget-object v3, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0, v3}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V

    .line 30
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_7

    .line 31
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    :catch_8
    nop

    :cond_7
    :goto_6
    if-eqz v0, :cond_8

    .line 32
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    return-void

    :catchall_2
    move-exception v2

    :goto_7
    if-eqz v1, :cond_9

    .line 34
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_8

    :catch_a
    nop

    :cond_9
    :goto_8
    if-eqz v0, :cond_a

    .line 35
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_9

    :catch_b
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :cond_a
    :goto_9
    throw v2
.end method

.method public declared-synchronized start(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->url:Ljava/lang/String;

    .line 4
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
