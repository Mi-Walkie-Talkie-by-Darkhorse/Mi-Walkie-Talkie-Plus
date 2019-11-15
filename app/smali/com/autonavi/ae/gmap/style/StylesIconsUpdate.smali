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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->netWorkData:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mReceiveDataLen:I

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->canceled:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->successed:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->CONNECTION_TIMEOUT:I

    iput v1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mEngineID:I

    iput p1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mEngineID:I

    iput-object p3, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iput-object p2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    return-void
.end method

.method private getResourceHeaderData(Ljava/io/ByteArrayOutputStream;)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget v0, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->type:I

    iget-object v1, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget-object v1, v1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->fullName:Ljava/lang/String;

    const-string v2, "_|\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-static {v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget v0, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->clientVersion:I

    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget v0, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I

    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method private putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->getResourceHeaderData(Ljava/io/ByteArrayOutputStream;)I

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

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

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->canceled:Z

    return-void
.end method

.method public run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapdataver=6&type=30&name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget-object v2, v2, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&cv="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget v2, v2, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->clientVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&sv="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mRetFileRecoder:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    iget v2, v2, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_d

    const/4 v0, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    :cond_2
    const/16 v0, 0x2710

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x2710

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->netWorkData:Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->netWorkData:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->getResourceHeaderData(Ljava/io/ByteArrayOutputStream;)I

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_4

    iget-boolean v4, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->canceled:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->netWorkData:Ljava/io/ByteArrayOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget v4, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mReceiveDataLen:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mReceiveDataLen:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_2
    iget-object v3, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0, v3}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :cond_3
    :goto_4
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    :try_start_5
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->canceled:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mReceiveDataLen:I

    const/16 v3, 0xb

    if-le v0, v3, :cond_7

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v3, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mEngineID:I

    iget-object v4, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->netWorkData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->PutResourceData(I[B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_6
    :goto_6
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_7
    :try_start_9
    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_8

    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :cond_8
    :goto_8
    if-eqz v1, :cond_0

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    :try_start_c
    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->mMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->putErrordata(Lcom/autonavi/ae/gmap/GLMapEngine;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :goto_9
    if-eqz v2, :cond_a

    :try_start_d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_a
    :goto_a
    if-eqz v1, :cond_b

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_b
    :goto_b
    throw v0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v2

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v2, v1

    goto/16 :goto_3

    :cond_c
    move-object v2, v1

    goto/16 :goto_1

    :cond_d
    move-object v2, v1

    goto :goto_5
.end method

.method public declared-synchronized start(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->url:Ljava/lang/String;

    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
