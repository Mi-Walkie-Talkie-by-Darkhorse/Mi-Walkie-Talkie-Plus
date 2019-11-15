.class public Lcom/mi/milinkforgame/sdk/session/SessionConst;
.super Ljava/lang/Object;
.source "SessionConst.java"


# static fields
.field public static final ACC_NEED_CLIENT_RETRY_TIMES:I = 0x1

.field public static final BACKUP_IP:I = 0x5

.field public static final CDN_IP:I = 0x6

.field public static final CDN_PICTURE_URL:Ljava/lang/String; = "http://d.g.mi.com/t.html"

.field public static final CONN_FAILED:I = 0x1

.field public static final CONTINUOUS_RECV_TIMEOUT_PACKAGE_MAX_COUNT:I = 0x3

.field public static final DOMAIN_IP:I = 0x4

.field public static final ERROR_MSG:Ljava/lang/String; = "ERROR_MSG"

.field public static final HANDSHAKE_OTHERERROR_FAILED:I = 0x2

.field public static final HANDSHAKE_PACKERROR_FAILED:I = 0x3

.field public static final HEART_BEAT_SCENE_AFTER_HANDSHAKE_NORMAL:B = 0x2t

.field public static final HEART_BEAT_SCENE_AFTER_HANDSHAKE_START:B = 0x1t

.field public static final HEART_BEAT_SCENE_EXIT_POWERSAVING:B = 0x5t

.field public static final HEART_BEAT_SCENE_LONG_TIMEOUT:B = 0x4t

.field public static final HEART_BEAT_SCENE_SHORT_TIMEOUT:B = 0x3t

.field public static final MSG_CHECK_SESSION_TIMER:I = 0x4

.field public static final MSG_TYPE_ADD_CACHE_REQUEST:I = 0x9

.field public static final MSG_TYPE_B2_TOKEN_EXPIRED:I = 0xf

.field public static final MSG_TYPE_DATA_RESPONSE:I = 0x5

.field public static final MSG_TYPE_DATA_RESPONSE_ERROR:I = 0x8

.field public static final MSG_TYPE_GET_SERVICE_TOKEN:I = 0x11

.field public static final MSG_TYPE_HEART_BEAT_RESULT:I = 0xc

.field public static final MSG_TYPE_INVALID_PACKET:I = 0x13

.field public static final MSG_TYPE_KICKED_BY_SERVER:I = 0x14

.field public static final MSG_TYPE_OPEN_SESSION_FAIL:I = 0x15

.field public static final MSG_TYPE_OPEN_SESSION_REQUEST:I = 0x3

.field public static final MSG_TYPE_OPEN_SESSION_SUCCESS:I = 0x1

.field public static final MSG_TYPE_OPEN_SESSION_TIMER:I = 0xb

.field public static final MSG_TYPE_OVERLOAD_CLOSE_TIMER:I = 0xe

.field public static final MSG_TYPE_RELEASE_WAKE_LOCK:I = 0xa

.field public static final MSG_TYPE_SERVER_LINE_BROKEN:I = 0x16

.field public static final MSG_TYPE_SERVER_OVERLOAD:I = 0xd

.field public static final MSG_TYPE_SERVICE_TOKEN_EXPIRED:I = 0x10

.field public static final MSG_TYPE_SESSION_ERROR:I = 0x6

.field public static final MSG_TYPE_SHOULD_CHECK_UPDATE:I = 0x12

.field public static final NONE_CONNECTION_TYPE:I = 0x0

.field public static final OPTI_IP:I = 0x1

.field public static final PACKET_TYPE_DOWNSTREAM:I = 0x0

.field public static final PACKET_TYPE_TLV:I = 0x1

.field public static final RECENTLY_IP:I = 0x3

.field public static final REDIRECT_IP:I = 0x2

.field public static final SCORE_IP:I = 0x8

.field public static final SOCKET_RECV_BUFFER:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "SessionConst"

.field public static final TCP_CONNECTION_TYPE:I = 0x1

.field public static final TEST_IP:I = 0x7

.field private static final TEST_PIC_CONNECT_TIMEOUT:I = 0x1388

.field public static final TEST_PIC_FAIL:I = 0x1

.field public static final TEST_PIC_NEED_REDIRECT:I = 0x2

.field public static final TEST_PIC_OK:I = 0x0

.field private static final TEST_PIC_READ_TIMEOUT:I = 0x3a98

.field public static final TIME_OUT_MAX_RETRY_TIMES:I = 0x2

.field private static conTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sIsNewApn:Z

.field private static serverTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static uniqueSessionNO:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->uniqueSessionNO:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v3, Lcom/mi/milinkforgame/sdk/session/SessionConst;->sIsNewApn:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->conTypeMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->serverTypeMap:Landroid/util/SparseArray;

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->conTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->conTypeMap:Landroid/util/SparseArray;

    const-string v1, "tcp"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->serverTypeMap:Landroid/util/SparseArray;

    const-string v1, "opt"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->serverTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "redirect"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->serverTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "recently"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->serverTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "dns"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->serverTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "bak"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->serverTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "cdn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->serverTypeMap:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSessionNO()I
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->uniqueSessionNO:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static getProtocol(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->conTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSeverType(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->serverTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isInternetAvailable()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://d.g.mi.com/t.html"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?time="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x1388

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Cache-Control"

    const-string v4, "no-cache"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    const-string v1, "SessionConst"

    const-string v3, "isInternetAvailable error"

    invoke-static {v1, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v0, v2

    :goto_2
    return v0

    :cond_1
    :try_start_3
    const-string v3, "SessionConst"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInternetAvailable result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "milink.test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_1
.end method

.method public static isNewApn()Z
    .locals 2

    sget-boolean v0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->sIsNewApn:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mi/milinkforgame/sdk/session/SessionConst;->sIsNewApn:Z

    :cond_0
    return v0
.end method

.method public static setNewApn(Z)V
    .locals 0

    sput-boolean p0, Lcom/mi/milinkforgame/sdk/session/SessionConst;->sIsNewApn:Z

    return-void
.end method
