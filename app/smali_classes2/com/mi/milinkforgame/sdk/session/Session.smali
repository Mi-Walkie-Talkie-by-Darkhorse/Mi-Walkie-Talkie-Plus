.class public Lcom/mi/milinkforgame/sdk/session/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;
.implements Lcom/mi/milinkforgame/sdk/session/MsgProcessor;


# static fields
.field private static final CONNECTED_STATE:I = 0x2

.field private static final CONNECTING_STATE:I = 0x1

.field private static final FAST_CHECK_PING_TIME_OUT:I = 0x1770

.field private static final HANDSHAKE_INITED_STATE:I = 0x4

.field private static final HANDSHAKE_INITING_STATE:I = 0x3

.field private static final MSG_CHECK_TIMEOUT:I = 0x3

.field private static final MSG_CONNECT:I = 0x1

.field private static final MSG_DISCONNECT:I = 0x4

.field private static final MSG_HANDLE_REQUEST:I = 0x2

.field private static final NO_CONNECT_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Session"


# instance fields
.field private mBindRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

.field private mCanClose:Z

.field private mClientIp:Ljava/lang/String;

.field private mClientIsp:Ljava/lang/String;

.field private mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

.field private mConnectStartTime:J

.field private mContinuousRecv110Count:I

.field private mCurState:I

.field private mDnsWaitTime:J

.field public mFlagForSessionManager:I

.field private mHandShakeRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

.field private mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

.field private mHeartBeatRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

.field private mIsHandshakeRequestFailed:Z

.field private mLastReceivedFastPingTime:J

.field private mLastSendFastCheckPingTime:J

.field private mLogTag:Ljava/lang/String;

.field private mLogoffRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

.field private mNeedClientInfo:Z

.field private mOpenSessionDoneTime:J

.field private mOpenSessionSucessReturnInfo:Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;

.field private mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mi/milinkforgame/sdk/session/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mRecBufSink:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;

.field private mRecBuffer:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;

.field private mRecvDataProcessUtil:Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;

.field private mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mi/milinkforgame/sdk/session/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

.field private mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

.field private mSessionNO:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    iput-boolean v5, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mNeedClientInfo:Z

    iput v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mSessionNO:I

    iput-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConnectStartTime:J

    iput-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mOpenSessionDoneTime:J

    iput-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mDnsWaitTime:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLastSendFastCheckPingTime:J

    iput-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLastReceivedFastPingTime:J

    const-string v0, "Session"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;-><init>(Lcom/mi/milinkforgame/sdk/session/Session;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRecvDataProcessUtil:Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;

    iput v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mContinuousRecv110Count:I

    iput-boolean v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCanClose:Z

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Session$1;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/Session$1;-><init>(Lcom/mi/milinkforgame/sdk/session/Session;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRecBufSink:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Session$2;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/Session$2;-><init>(Lcom/mi/milinkforgame/sdk/session/Session;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Session$3;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/Session$3;-><init>(Lcom/mi/milinkforgame/sdk/session/Session;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mHandShakeRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Session$4;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/Session$4;-><init>(Lcom/mi/milinkforgame/sdk/session/Session;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mBindRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Session$5;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/Session$5;-><init>(Lcom/mi/milinkforgame/sdk/session/Session;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mHeartBeatRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Session$6;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/Session$6;-><init>(Lcom/mi/milinkforgame/sdk/session/Session;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogoffRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    iput-boolean v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mIsHandshakeRequestFailed:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mClientIp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mClientIsp:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionConst;->generateSessionNO()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mSessionNO:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[No:%d]"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mSessionNO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    iput-object v6, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    iput-object v6, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRecBufSink:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;

    const/high16 v2, 0x10000

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mSessionNO:I

    invoke-direct {v0, v1, v2, v3}, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;-><init>(Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;II)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRecBuffer:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;

    iput v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/milinkforgame/sdk/session/Session;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mNeedClientInfo:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mi/milinkforgame/sdk/session/Session;Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionHandshakeSuccess(Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mi/milinkforgame/sdk/session/Session;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mNeedClientInfo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mClientIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mi/milinkforgame/sdk/session/Session;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mClientIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mClientIsp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mi/milinkforgame/sdk/session/Session;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mClientIsp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/mi/milinkforgame/sdk/session/Session;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mIsHandshakeRequestFailed:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mi/milinkforgame/sdk/session/Session;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionHandshakeFail(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mi/milinkforgame/sdk/session/Session;Lcom/mi/milinkforgame/sdk/session/Request;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/session/Session;->isFastCheckPing(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/mi/milinkforgame/sdk/session/Session;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLastReceivedFastPingTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mi/milinkforgame/sdk/session/Session;)Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRecvDataProcessUtil:Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mi/milinkforgame/sdk/session/Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/Session;->handlePendingStatisticTimeoutedRequestMap()V

    return-void
.end method

.method static synthetic access$900(Lcom/mi/milinkforgame/sdk/session/Session;)Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    return-object v0
.end method

.method private checkIsReadTimeOut()V
    .locals 10

    const/16 v9, 0x203

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Request;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->isFastCheckPing(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->isTimeout()Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v4

    move v3, v4

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->isTimeout()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    move v1, v3

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Request;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Request read time out, seq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getListener()Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getListener()Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    move-result-object v2

    const-string v7, "request time out"

    invoke-interface {v2, v9, v7}, Lcom/mi/milinkforgame/sdk/session/ResponseListener;->onDataSendFailed(ILjava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getCurrentNetworkDetailInfo()Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "checkIsReadTimeOut, fast ping timeout, reconnect"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/mi/milinkforgame/sdk/session/Session;->disConnect(I)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/Session;->fastCheckPing()V

    goto :goto_3

    :cond_8
    move v3, v4

    goto/16 :goto_1
.end method

.method private fastCheckPing()V
    .locals 6

    const/4 v3, 0x1

    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v0, "milink.ping"

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getSequence()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setSeqNo(I)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Request;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/mi/milinkforgame/sdk/session/Request;-><init>(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/ResponseListener;ZZB)V

    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/session/Request;->setTimeOut(I)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start fast ping, seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    return-void
.end method

.method private handShake()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->setType(I)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v2, "milink.handshake"

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Request;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mHandShakeRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/mi/milinkforgame/sdk/session/Request;-><init>(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/ResponseListener;ZZB)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start hand shake, seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    return-void
.end method

.method private handlePendingStatisticTimeoutedRequestMap()V
    .locals 14

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Request;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTimeoutedRequest seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/Session;->isJustSentFastCheckPing()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLastSendFastCheckPingTime:J

    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLastReceivedFastPingTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSentTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLastSendFastCheckPingTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeouted, reason:ret_code_ping_time_out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "milink.ping"

    :goto_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerPort()I

    move-result v3

    :goto_3
    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSize()I

    move-result v10

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v12

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_2

    :cond_3
    move v3, v11

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeouted, reason:ret_code_time_out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v4, "milink.ping"

    :goto_4
    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    :goto_5
    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerPort()I

    move-result v3

    :goto_6
    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSize()I

    move-result v10

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v12

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    const-string v2, ""

    goto :goto_5

    :cond_7
    move v3, v11

    goto :goto_6

    :cond_8
    return-void
.end method

.method private isFastCheckPing(Lcom/mi/milinkforgame/sdk/session/Request;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Request;->isPingRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Request;->getTimeOut()I

    move-result v0

    const/16 v1, 0x1770

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isJustSentFastCheckPing()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLastSendFastCheckPingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2ee0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onOpenSessionBuildConnectFail(I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mOpenSessionDoneTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onOpenSessionFail(Lcom/mi/milinkforgame/sdk/session/Session;I)Z

    return-void
.end method

.method private onOpenSessionBuildConnectSuccess()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/Session;->handShake()V

    return-void
.end method

.method private onOpenSessionHandshakeFail(I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mOpenSessionDoneTime:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onOpenSessionFail(Lcom/mi/milinkforgame/sdk/session/Session;I)Z

    return-void
.end method

.method private onOpenSessionHandshakeSuccess(Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mOpenSessionDoneTime:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mOpenSessionSucessReturnInfo:Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onOpenSessionSuccess(Lcom/mi/milinkforgame/sdk/session/Session;I)Z

    return-void
.end method

.method private onSessionError(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onSessionError(Lcom/mi/milinkforgame/sdk/session/Session;I)Z

    return-void
.end method

.method private postMessage(ILjava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mConn == null!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    invoke-interface {v1, p1, p2, p3, p0}, Lcom/mi/milinkforgame/sdk/connection/IConnection;->postMessage(ILjava/lang/Object;ILcom/mi/milinkforgame/sdk/session/MsgProcessor;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMessage must be full ! uMsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addContinuousRecv110Count()V
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mContinuousRecv110Count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mContinuousRecv110Count:I

    return-void
.end method

.method public bind()V
    .locals 6

    const/4 v4, 0x1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getGId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->setGid(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getB2TokenStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->setB2(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->generateSSecurity()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getPrivateKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->setPrivacyKey(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->setSUID(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start fastlogin, suid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->isInitByAppLogin()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->setPassportlogin(Z)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    invoke-virtual {v0, v4}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->setOnoff(Z)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    const-string v0, "milink.bind"

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Request;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mBindRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/mi/milinkforgame/sdk/session/Request;-><init>(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/ResponseListener;ZZB)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start bind, seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onLogining()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v2, "start fastlogin, suid is empty"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkExceedMaxContinuousRecv110Count()Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContinuousRecv110Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mContinuousRecv110Count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mContinuousRecv110Count:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/Session;->onServerLineBroken()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkRequestsTimeout()Z
    .locals 3

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/Session;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mi/milinkforgame/sdk/session/Session;->postMessage(ILjava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public close()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCanClose:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v2, "connecting! can not close"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v2, "stop begin"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    invoke-interface {v1}, Lcom/mi/milinkforgame/sdk/connection/IConnection;->stop()Z

    iput-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    iput-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "stop over"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disConnect()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->disConnect(I)V

    return-void
.end method

.method public disConnect(I)V
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disConnect, errorCallBackErrorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/mi/milinkforgame/sdk/session/Session;->postMessage(ILjava/lang/Object;I)Z

    return-void
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mClientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIsp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mClientIsp:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsWaitTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mDnsWaitTime:J

    return-wide v0
.end method

.method public getOpenSessionSucessReturnInfo()Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mOpenSessionSucessReturnInfo:Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;

    return-object v0
.end method

.method public getOpenSessionTimecost()J
    .locals 4

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mOpenSessionDoneTime:J

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConnectStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    return-object v0
.end method

.method public getServerProfileForStatistic()Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    return-object v0
.end method

.method public getSessionNO()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mSessionNO:I

    return v0
.end method

.method public handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v2, "handleRequest request == null"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRequest seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNeedClientInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mNeedClientInfo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mSessionNO:I

    invoke-virtual {p1, v1}, Lcom/mi/milinkforgame/sdk/session/Request;->setHandleSessionNO(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->postMessage(ILjava/lang/Object;I)Z

    move-result v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    invoke-interface {v1}, Lcom/mi/milinkforgame/sdk/connection/IConnection;->wakeUp()V

    goto :goto_0
.end method

.method public heartBeat()V
    .locals 6

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeat;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getConfigTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;->setTimeStamp(J)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;->setSUID(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start heartbeat, suid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v2, "milink.heartbeat"

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeat;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Request;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mHeartBeatRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/mi/milinkforgame/sdk/session/Request;-><init>(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/ResponseListener;ZZB)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start heartbeat, seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v2, "start heartbeat, suid is empty"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public logoff()V
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginOff;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder;->setSUID(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginOff;

    move-result-object v0

    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    invoke-virtual {v1, v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedResponse(Z)V

    const-string v2, "milink.loginoff"

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdLoginOff;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Request;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogoffRspListener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/mi/milinkforgame/sdk/session/Request;-><init>(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/ResponseListener;ZZB)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start logoff, seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    return-void
.end method

.method public onAccNeedRetryWithClientInfo(Lcom/mi/milinkforgame/sdk/session/Request;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Session"

    const-string v1, "onAccNeedRetryWithClientInfo"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mNeedClientInfo:Z

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Request;->getRetryCount()I

    move-result v0

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Request;->addRetryCount()V

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/session/Session;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Session"

    const-string v1, "try 118 too many times"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnect(ZI)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCanClose:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionBuildConnectSuccess()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0
.end method

.method public onDisconnect()Z
    .locals 4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "OnDisconnect"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRecBuffer:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->reset()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Request;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getListener()Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getListener()Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    move-result-object v0

    const/16 v2, 0x204

    const-string v3, "network broken"

    invoke-interface {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/session/ResponseListener;->onDataSendFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/Session;->handlePendingStatisticTimeoutedRequestMap()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public onError(I)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mIsHandshakeRequestFailed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError but handshake failed has already notice SM, socketStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mIsHandshakeRequestFailed:Z

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError socketStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError wrong state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x20e

    if-ne p1, v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionHandshakeFail(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionHandshakeFail(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/session/Session;->onSessionError(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onMsgProc(ILjava/lang/Object;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMsgProc, uMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wParam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnMsgProc unknow uMsgID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "OnMsgProc mServerProfile == null!!!"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfileForStatistic:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->isDefaultHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->getInstance()Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->getDomainIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct {p0, v4}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->setServerIP(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getOpenSessionAddressSet()Ljava/util/HashSet;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConnectStartTime:J

    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConnectStartTime:J

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mDnsWaitTime:J

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerPort()I

    move-result v2

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProxyIP()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getPorxyPort()I

    move-result v4

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getConnetionTimeout()I

    move-result v5

    invoke-interface/range {v0 .. v6}, Lcom/mi/milinkforgame/sdk/connection/IConnection;->connect(Ljava/lang/String;ILjava/lang/String;III)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    check-cast p2, Lcom/mi/milinkforgame/sdk/session/Request;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->isValidNow()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "seq=%d,cmd=%s is invalid"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->getData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3e6

    const-string v1, "package is already over the valid time"

    invoke-virtual {p2, v0, v1}, Lcom/mi/milinkforgame/sdk/session/Request;->onDataSendFailed(ILjava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/mi/milinkforgame/sdk/session/Request;->setSentTime(J)V

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->getData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "milink.bind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mNeedClientInfo:Z

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v3, "set mNeedClientInfo=true when send login or fastlogin"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-boolean v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mNeedClientInfo:Z

    invoke-virtual {v0, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedClientInfo(Z)V

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->toBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->needResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-direct {p0, p2}, Lcom/mi/milinkforgame/sdk/session/Session;->isFastCheckPing(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLastSendFastCheckPingTime:J

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1838

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection send data, seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->getTimeOut()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/mi/milinkforgame/sdk/connection/IConnection;->sendData([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    move-result-object v0

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "connection send data, but data = null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/Session;->checkIsReadTimeOut()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    invoke-interface {v0}, Lcom/mi/milinkforgame/sdk/connection/IConnection;->disconnect()Z

    :cond_9
    iput v6, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    if-lez p3, :cond_0

    invoke-direct {p0, p3}, Lcom/mi/milinkforgame/sdk/session/Session;->onSessionError(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRecv([B)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recv data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRecBuffer:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mRecBuffer:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;

    invoke-virtual {v1, p1}, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->append([B)V
    :try_end_0
    .catch Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/16 v2, 0x205

    invoke-virtual {p0, v2}, Lcom/mi/milinkforgame/sdk/session/Session;->disConnect(I)V

    iget v1, v1, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;->errCode:I

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onInvalidPacket()Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSendBegin(I)Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send begin: seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onSendEnd(I)Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send end: seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->trySetMaxSendSeqNo(I)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->tryAcquireWakeLockForSendIfNeed()V

    const/4 v0, 0x0

    return v0
.end method

.method public onServerLineBroken()V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onServerLineBroken(Lcom/mi/milinkforgame/sdk/session/Session;)Z

    return-void
.end method

.method public onStart()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTimeOut(II)Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send time out: seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public openSession(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)Z
    .locals 6

    const/16 v5, 0x232

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/Session;->resetContinuousRecv110Count()V

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mIsHandshakeRequestFailed:Z

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mNeedClientInfo:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openSession fail, serverprofile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22d

    invoke-direct {p0, v1}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionBuildConnectFail(I)V

    :goto_0
    return v0

    :cond_1
    iput v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mCurState:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLastSendFastCheckPingTime:J

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v3

    if-eq v2, v3, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v3, "openSession if"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milinkforgame/sdk/connection/IConnection;->stop()Z

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_4

    new-instance v2, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mSessionNO:I

    invoke-direct {v2, v3, p0}, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;-><init>(ILcom/mi/milinkforgame/sdk/connection/IConnectionCallback;)V

    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    :cond_4
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    :try_start_0
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milinkforgame/sdk/connection/IConnection;->start()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-nez v2, :cond_7

    invoke-direct {p0, v5}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v4, "connection start failed"

    invoke-static {v3, v4, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v3, "openSession else"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_6

    new-instance v2, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mSessionNO:I

    invoke-direct {v2, v3, p0}, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;-><init>(ILcom/mi/milinkforgame/sdk/connection/IConnectionCallback;)V

    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    :cond_6
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milinkforgame/sdk/connection/IConnection;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    :try_start_1
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mConn:Lcom/mi/milinkforgame/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milinkforgame/sdk/connection/IConnection;->start()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_2
    if-nez v2, :cond_7

    invoke-direct {p0, v5}, Lcom/mi/milinkforgame/sdk/session/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    const-string v4, "connection start failed"

    invoke-static {v3, v4, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    goto :goto_2

    :cond_7
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mServerProfile:Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->postMessage(ILjava/lang/Object;I)Z

    move v0, v1

    goto/16 :goto_0
.end method

.method public ping()V
    .locals 6

    const/4 v3, 0x1

    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v0, "milink.ping"

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getSequence()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setSeqNo(I)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Request;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/mi/milinkforgame/sdk/session/Request;-><init>(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/ResponseListener;ZZB)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start ping, seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    return-void
.end method

.method public resetContinuousRecv110Count()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Session;->mContinuousRecv110Count:I

    return-void
.end method
