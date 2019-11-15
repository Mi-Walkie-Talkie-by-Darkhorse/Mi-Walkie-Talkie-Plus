.class public Lcom/mi/milinkforgame/sdk/session/SessionManager;
.super Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;
.source "SessionManager.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$MiLinkAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;
    }
.end annotation


# static fields
.field private static final AUTO_INTERNAL_OPEN_DELAY:I = 0xbb8

.field private static final CHECK_CONNECTION_IS_ALIVE_INTERVAL:I = 0xea60

.field private static final CHECK_SESSION_INTERVAL:I = 0x7d0

.field private static final CHECK_WAKE_LOCK_TIMEOUT:I = 0x5

.field private static final ERRNO_CONNECT_TIME_OUT:I = 0x6e

.field private static final ERRNO_NET_UNREACHABLE:I = 0x65

.field private static final ERRNO_NO_ROUTE:I = 0x71

.field private static final ERRNO_REFUSED:I = 0x6f

.field private static final ERRNO_TAG:Ljava/lang/String; = ",errno="

.field private static final FLAG_ABANDON_SESSION:I = 0x3

.field private static final FLAG_MASTER_SESSION:I = 0x4

.field private static final FLAG_TRTING_SESSION:I = 0x1

.field private static final LOGIN_TRY_TIMES:I = 0x5

.field public static final MILINK_OPEN_RET_CODE_ALL_TIME_OUT:I = 0x6

.field public static final MILINK_OPEN_RET_CODE_FAIL:I = 0x1

.field public static final MILINK_OPEN_RET_CODE_MULTI_UNAVAILABLE:I = 0x7

.field public static final MILINK_OPEN_RET_CODE_NETWORK_CHANGE:I = 0x4

.field public static final MILINK_OPEN_RET_CODE_NET_UNREACHABLE:I = 0x5

.field public static final MILINK_OPEN_RET_CODE_NO_ROUTE:I = 0x2

.field public static final MILINK_OPEN_RET_CODE_OK:I = 0x0

.field public static final MILINK_OPEN_RET_CODE_REFUSED:I = 0x3

.field private static final OPEN_SESSION_TRY_TIMES:I = 0x5

.field private static final SESSION_RECONNECT_TIMES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SessionManager"

.field private static final TCP_FAIL_TAG:Ljava/lang/String; = "TcpConn:connect_nonb connect fail "

.field private static maxRecvSeqNo:I

.field private static maxSendSeqNo:I

.field private static sInstance:Lcom/mi/milinkforgame/sdk/session/SessionManager;


# instance fields
.field private mAppInited:Z

.field private mConnectPrintLogCallback:Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl$ConnectPrintLogCallback;

.field private mEnableConnectionManualMode:Z

.field private mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

.field private mInitByAppLogin:Z

.field private mInternalAutoOpenRunnable:Ljava/lang/Runnable;

.field private mInternalManualOpenRunnable:Ljava/lang/Runnable;

.field private mInternalNormalOpenRunnable:Ljava/lang/Runnable;

.field private mIsLogoff:Z

.field private mIsNeedBackGroudReset:Z

.field private mListener:Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;

.field private mLock:Ljava/lang/Object;

.field private mLoginRunnable:Ljava/lang/Runnable;

.field private mLoginTryTimes:I

.field private mLogoffRunnable:Ljava/lang/Runnable;

.field private mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

.field private mNetworkDetailInfoOnOpen:Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;

.field private mNetworkReveiver:Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;

.field private final mOpenSessionAddressSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenSessionTryTimes:I

.field private mOpenStartTime:J

.field private final mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mServerManager:Lcom/mi/milinkforgame/sdk/session/IServerManager;

.field private final mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/Session;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionReconnectTryTimes:I

.field private mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->maxRecvSeqNo:I

    sput v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->maxSendSeqNo:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "SessionManager"

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionAddressSet:Ljava/util/HashSet;

    iput-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mServerManager:Lcom/mi/milinkforgame/sdk/session/IServerManager;

    iput-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mListener:Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;

    iput-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mNetworkReveiver:Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;

    iput-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mIsLogoff:Z

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEnableConnectionManualMode:Z

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mIsNeedBackGroudReset:Z

    iput v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionTryTimes:I

    iput v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionReconnectTryTimes:I

    iput v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLoginTryTimes:I

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mAppInited:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenStartTime:J

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInitByAppLogin:Z

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$1;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$1;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mConnectPrintLogCallback:Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl$ConnectPrintLogCallback;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$2;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$2;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$3;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$3;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalManualOpenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$4;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$4;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalNormalOpenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$10;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$10;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLoginRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$11;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$11;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionManager created, milinkversion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getMiLinkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getMiLinkSubVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mConnectPrintLogCallback:Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl$ConnectPrintLogCallback;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->addConnectPrintLogCallback(Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl$ConnectPrintLogCallback;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->start()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mServerManager:Lcom/mi/milinkforgame/sdk/session/IServerManager;

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLock:Ljava/lang/Object;

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->addListener(Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$MiLinkAlarmListener;)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;

    invoke-direct {v0, p0, v3}, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;Lcom/mi/milinkforgame/sdk/session/SessionManager$1;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mNetworkReveiver:Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mNetworkReveiver:Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->setCurrentNetworkInfo()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mNetworkReveiver:Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/base/Global;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->getInstance()Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->startResolve()V

    return-void
.end method

.method private abandonAllSession()V
    .locals 5

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Session;

    iget v2, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    iput v2, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandon all session, ip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", protocol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",No="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandon all session, s.getServerProfile()=null, sessionNO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->internalAutoOpen()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->internalClose()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mNetworkDetailInfoOnOpen:Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/session/Session;
    .locals 1

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getSession()Lcom/mi/milinkforgame/sdk/session/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/mi/milinkforgame/sdk/session/SessionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mIsNeedBackGroudReset:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->internalManualOpen()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mi/milinkforgame/sdk/session/SessionManager;)I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLoginTryTimes:I

    return v0
.end method

.method static synthetic access$2308(Lcom/mi/milinkforgame/sdk/session/SessionManager;)I
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLoginTryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLoginTryTimes:I

    return v0
.end method

.method static synthetic access$2402(Lcom/mi/milinkforgame/sdk/session/SessionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mIsLogoff:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->resetAllTryTimes()V

    return-void
.end method

.method static synthetic access$300(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->internalNormalOpen()V

    return-void
.end method

.method static synthetic access$500(Lcom/mi/milinkforgame/sdk/session/SessionManager;Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalNormalOpenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalManualOpenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->acquireWakeLock(I)V

    return-void
.end method

.method private acquireWakeLock(I)V
    .locals 5

    const/16 v4, 0xa

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    const-string v2, "SessionManager"

    const-string v3, "Wakelock ACQUIRED :)"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "mns"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "SessionManager"

    const-string v3, "acquireWakeLock exception"

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private getEstimateWakeTimeForSendData()I
    .locals 3

    const/4 v0, 0x5

    sget v1, Lcom/mi/milinkforgame/sdk/session/SessionManager;->maxSendSeqNo:I

    sget v2, Lcom/mi/milinkforgame/sdk/session/SessionManager;->maxRecvSeqNo:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0xf

    if-ge v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v2, 0x14

    if-ge v1, v2, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;
    .locals 2

    const-class v1, Lcom/mi/milinkforgame/sdk/session/SessionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/SessionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextServerProfile(Lcom/mi/milinkforgame/sdk/session/Session;I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextServerProfile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[Session No:%d] "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mServerManager:Lcom/mi/milinkforgame/sdk/session/IServerManager;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Session;->getServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/mi/milinkforgame/sdk/session/IServerManager;->getNext(Lcom/mi/milinkforgame/sdk/session/ServerProfile;I)[Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "SessionManager"

    const-string v1, "newServerProfile == null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p1, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Session;->close()Z

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->isHaveTryingSession()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "already no trying session"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    const/16 v0, 0x204

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenStartTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onOpenSessionResult(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SessionManager"

    const-string v1, "this session is trying session but masterSession is not null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iput v6, p1, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/mi/milinkforgame/sdk/session/Session;->openSession(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)Z

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {v2}, Lcom/mi/milinkforgame/sdk/session/Session;-><init>()V

    iput v6, v2, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/session/Session;->openSession(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)Z

    goto :goto_2
.end method

.method private getSession()Lcom/mi/milinkforgame/sdk/session/Session;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/mi/milinkforgame/sdk/session/SessionManager$12;->$SwitchMap$com$mi$milinkforgame$sdk$data$Const$MiLinkSdkState:[I

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;

    invoke-direct {v1, p0, p1}, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;Lcom/mi/milinkforgame/sdk/session/Request;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_0
.end method

.method private internalAutoOpen()V
    .locals 3

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalAutoOpen mOpenSessionTryTimes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionTryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionTryTimes:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionTryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionTryTimes:I

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->internalOpen()V

    :cond_0
    return-void
.end method

.method private internalClose()V
    .locals 2

    const-string v0, "SessionManager"

    const-string v1, "internalClose"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->stopTimer()V

    return-void
.end method

.method private internalManualOpen()V
    .locals 3

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalManualOpen,mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->resetAllTryTimes()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mServerManager:Lcom/mi/milinkforgame/sdk/session/IServerManager;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->internalOpen()V

    return-void
.end method

.method private internalNormalOpen()V
    .locals 3

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalNormalOpen,mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->internalOpen()V

    return-void
.end method

.method private internalOpen()V
    .locals 4

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "can not open session, network is not available."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SessionManager"

    const-string v1, "app not login internalOpen cancel"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    const-string v0, "SessionManager"

    const-string v1, "can not open session, mHandler == null."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mIsLogoff:Z

    if-eqz v0, :cond_3

    const-string v0, "SessionManager"

    const-string v1, "can not open session, app has logoff"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open session, internalOpen with mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-eq v0, v1, :cond_4

    const-string v0, "SessionManager"

    const-string v1, "mState is not No_Sesssion state,cancel paoma"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionAddressSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenStartTime:J

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getCurrentNetworkDetailInfo()Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mNetworkDetailInfoOnOpen:Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->startTimer()V

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$12;->$SwitchMap$com$mi$milinkforgame$sdk$data$Const$MiLinkSdkState:[I

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalOpen wrong state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mServerManager:Lcom/mi/milinkforgame/sdk/session/IServerManager;

    iget-boolean v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mIsNeedBackGroudReset:Z

    invoke-interface {v0, v1}, Lcom/mi/milinkforgame/sdk/session/IServerManager;->reset(Z)[Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v0, "SessionManager"

    const-string v1, "serverProfileList is null ,internalOpne cancel"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_7

    aget-object v2, v1, v0

    if-nez v2, :cond_6

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    new-instance v2, Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {v2}, Lcom/mi/milinkforgame/sdk/session/Session;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/session/Session;->openSession(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)Z

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connecting:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isAllSessionErrorCode(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionAddressSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isHaveTryingSession()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Session;

    iget v0, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiUnavailable()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionAddressSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x71

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 4

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-string v0, "SessionManager"

    const-string v2, "Wakelock RELEASED :)"

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "SessionManager"

    const-string v3, "releaseWakeLock exception"

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetAllTryTimes()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionTryTimes:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionReconnectTryTimes:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLoginTryTimes:I

    return-void
.end method

.method private sendCacheRequest()Z
    .locals 4

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getSession()Lcom/mi/milinkforgame/sdk/session/Session;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "sendCacheRequest session == null impossible!!!"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCacheRequest size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Request;

    if-nez v0, :cond_1

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->isValidNow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V
    .locals 5

    const/4 v4, 0x3

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$12;->$SwitchMap$com$mi$milinkforgame$sdk$data$Const$MiLinkSdkState:[I

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mListener:Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mListener:Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-interface {v1, v0, v2}, Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;->onSessionStateChanged(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)Z

    :cond_1
    return-void

    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Session;

    iput v4, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->close()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Session;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    iput v4, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->close()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private startTimer()V
    .locals 4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopTimer()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateSession(Lcom/mi/milinkforgame/sdk/session/Session;I)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "SessionManager"

    const-string v3, "update session function."

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    iput v2, p1, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Session;->getServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->abandonAllSession()V

    :cond_1
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mServerManager:Lcom/mi/milinkforgame/sdk/session/IServerManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mServerManager:Lcom/mi/milinkforgame/sdk/session/IServerManager;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Session;->getServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mi/milinkforgame/sdk/session/IServerManager;->save(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)Z

    :cond_2
    const-string v2, "SessionManager"

    const-string v3, "updateSession in no session or tring session"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/Session;->close()Z

    :cond_3
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    sget-object v2, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v2}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    const-string v2, "SessionManager"

    const-string v3, "connected, start milink login"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->login()V

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenStartTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onOpenSessionResult(IJ)Z

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/Session;->getOpenSessionSucessReturnInfo()Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->getClientIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->getClientIsp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->getBackupServerList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;->getOptmumServerList()Ljava/util/ArrayList;

    move-result-object v2

    const-string v6, "SessionManager"

    const-string v7, "clientip:%s clientIsp;%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v0

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/base/Global;->setClientIp(Ljava/lang/String;)V

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/base/Global;->setClientIsp(Ljava/lang/String;)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientIsp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->setOptmumServerList(Ljava/lang/String;Ljava/util/List;)V

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->setBackupServerList(Ljava/util/List;)V

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public autoOpen()Z
    .locals 2

    const-string v0, "SessionManager"

    const-string v1, "autoOpen"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalNormalOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public close()Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/milinkforgame/sdk/session/SessionManager$6;

    invoke-direct {v1, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$6;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public forceOpen()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SessionManager"

    const-string v2, "forceOpen"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SessionManager"

    const-string v2, "can not forceOpen session, network is not available."

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    const-string v1, "SessionManager"

    const-string v2, "can not forceOpen session, mHandler == null."

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->acquireWakeLock()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;

    invoke-direct {v1, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getOpenSessionAddressSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionAddressSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public initApp()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mAppInited:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mIsLogoff:Z

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->resetAllTryTimes()V

    return-void
.end method

.method public isInitByAppLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInitByAppLogin:Z

    return v0
.end method

.method public login()V
    .locals 3

    const/16 v2, 0x11

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mIsLogoff:Z

    if-eqz v0, :cond_1

    const-string v0, "SessionManager"

    const-string v1, "can not login, app has logoff"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Logining:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-ne v0, v1, :cond_2

    const-string v0, "SessionManager"

    const-string v1, "milink is logining"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SessionManager"

    const-string v1, "app not login, cancel milink login"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mAppInited:Z

    if-nez v0, :cond_4

    const-string v0, "SessionManager"

    const-string v1, "app not init"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_4
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->manualOpen()Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connecting:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLoginRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLoginRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public logoff()V
    .locals 4

    const-string v0, "SessionManager"

    const-string v1, "milink logoff"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->doPostDataAtOnce()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Logined:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->logoff()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public manualOpen()Z
    .locals 2

    const-string v0, "SessionManager"

    const-string v1, "manualOpen"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalNormalOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalManualOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalManualOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public normalOpen()Z
    .locals 2

    const-string v0, "SessionManager"

    const-string v1, "normalOpen"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalNormalOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalNormalOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public onAlarmArrived()V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SessionManager"

    const-string v1, "onAlarmArrived, app not login"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SessionManager"

    const-string v1, "onAlarmArrived"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->resetAllTryTimes()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->acquireWakeLock()V

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session manager state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->tryConnectIfNeed()Z

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/milinkforgame/sdk/session/SessionManager$9;

    invoke-direct {v1, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$9;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onB2TokenExpired()Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInvalidPacket()Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKickedByServer(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$KickMessage;)Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoginResult(Z)V
    .locals 3

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoginResult succeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Logined:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->sendCacheRequest()Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    goto :goto_0
.end method

.method public onLogining()V
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Logining:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    return-void
.end method

.method public onLogoffCmdReturn()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOpenSessionFail(Lcom/mi/milinkforgame/sdk/session/Session;I)Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOpenSessionResult(IJ)Z
    .locals 18

    const-string v4, "SessionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOpenSessionResult, errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->stopTimer()V

    invoke-direct/range {p0 .. p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->isMultiUnavailable()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SessionManager"

    const-string v5, "statistic milink.open, code=7"

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "milink.open"

    const/4 v9, 0x7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v16}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    :goto_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    const-string v4, "SessionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOpenSessionResult reconnect times:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionTryTimes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mListener:Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;

    if-nez v4, :cond_8

    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_1
    const/16 v4, 0x6e

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->isAllSessionErrorCode(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SessionManager"

    const-string v5, "statistic milink.open, code=6"

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "milink.open"

    const/4 v9, 0x6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v16}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x71

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->isAllSessionErrorCode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "SessionManager"

    const-string v5, "statistic milink.open, code=2"

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "milink.open"

    const/4 v9, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v16}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x6f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->isAllSessionErrorCode(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "SessionManager"

    const-string v5, "statistic milink.open, code=3"

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "milink.open"

    const/4 v9, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v16}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x65

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->isAllSessionErrorCode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "SessionManager"

    const-string v5, "statistic milink.open, code=5"

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "milink.open"

    const/4 v9, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v16}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/mi/milinkforgame/sdk/session/SessionManager$7;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v5, v0, v1, v2}, Lcom/mi/milinkforgame/sdk/session/SessionManager$7;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;J)V

    const-string v6, "MiLinkCheckInternetAvailable"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_6
    const-string v4, "SessionManager"

    const-string v5, "check isInternetAvailable, but network is unavailable"

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    if-eqz v4, :cond_0

    const-string v4, "SessionManager"

    const-string v5, "mMasterSession = [Session No:%d] "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v8}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/session/Session;->getServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/session/Session;->getServerProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerPort()I

    move-result v7

    const-string v8, "milink.open"

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v16}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mListener:Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;

    const-wide/16 v6, 0x0

    move/from16 v0, p1

    invoke-interface {v4, v6, v7, v0}, Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;->onOpenSessionResult(JI)Z

    move-result v4

    goto/16 :goto_2
.end method

.method public onOpenSessionSuccess(Lcom/mi/milinkforgame/sdk/session/Session;I)Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onServerLineBroken(Lcom/mi/milinkforgame/sdk/session/Session;)Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onServiceTokenExpired()Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSessionError(Lcom/mi/milinkforgame/sdk/session/Session;I)Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onShouldCheckUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 11

    const/16 v8, 0x232

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage unknown msgid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Session;

    iget v1, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    if-ne v1, v7, :cond_1

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage OPEN_SESSION_SUCCESS is AbandonSession No:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->close()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage OPEN_SESSION_SUCCESS No:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    if-eq v1, v9, :cond_2

    iget v1, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, "SessionManager"

    const-string v2, "update session"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->updateSession(Lcom/mi/milinkforgame/sdk/session/Session;I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->close()Z

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage OPEN_SESSION_SUCCESS is unknown session No:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "SessionManager"

    const-string v1, "release wake lock"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->releaseWakeLock()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Session;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    if-ne v2, v7, :cond_4

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is AbandonSession No:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->close()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_TYPE_OPEN_SESSION_FAIL errCode:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mMasterSession:Lcom/mi/milinkforgame/sdk/session/Session;

    if-ne v0, v1, :cond_5

    const-string v1, "SessionManager"

    const-string v2, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is mMasterSession No:%d, mState = %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->autoOpen()Z

    goto/16 :goto_0

    :cond_5
    iget v1, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    if-ne v1, v9, :cond_6

    const-string v1, "SessionManager"

    const-string v2, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is isTryingSession No:%d, mState = %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getNextServerProfile(Lcom/mi/milinkforgame/sdk/session/Session;I)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is unknown session No:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->close()Z

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getSession()Lcom/mi/milinkforgame/sdk/session/Session;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->checkRequestsTimeout()Z

    :cond_7
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Session;

    iget v2, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    if-ne v2, v9, :cond_8

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->checkRequestsTimeout()Z

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->startTimer()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Session;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    if-ne v2, v7, :cond_a

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_TYPE_OPEN_SESSION_HANDSHAKE_FAIL is AbandonSession No:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->close()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-string v2, "SessionManager"

    const-string v3, "handleMessage SESSION_ERROR reason = %d, No:%d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v2}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    if-ne v1, v8, :cond_b

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mListener:Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mListener:Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v8, v1, v2}, Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;->onError(ILjava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SESSION_ERROR mSessionReconnectTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionReconnectTryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOpenSessionTryTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mOpenSessionTryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionReconnectTryTimes:I

    if-ge v1, v10, :cond_c

    new-instance v1, Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/session/Session;-><init>()V

    iput v9, v1, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connecting:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v2}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getServerProfileForStatistic()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->openSession(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)Z

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionReconnectTryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionReconnectTryTimes:I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->autoOpen()Z

    goto/16 :goto_0

    :cond_d
    const-string v0, "SessionManager"

    const-string v1, "on seesion error network isAvailable = false"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Session;

    iget v1, v0, Lcom/mi/milinkforgame/sdk/session/Session;->mFlagForSessionManager:I

    if-ne v1, v7, :cond_e

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_TYPE_SERVER_LINE_BROKEN is AbandonSession No:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->close()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    const-string v1, "SessionManager"

    const-string v2, "handleMessage MSG_TYPE_SERVER_LINE_BROKEN No:%d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setState(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mServerManager:Lcom/mi/milinkforgame/sdk/session/IServerManager;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->normalOpen()Z

    goto/16 :goto_0

    :cond_f
    const-string v0, "SessionManager"

    const-string v1, "on server line broken network isAvailable = false"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "SessionManager"

    const-string v1, "b2 token expired, relogin"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->logoffMiLink()V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->login()V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "SessionManager"

    const-string v1, "service token expired, call app onEventServiceTokenExpired"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLoginRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    invoke-interface {v0}, Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;->onEventServiceTokenExpired()V

    const-string v0, "SessionManager"

    const-string v1, " notify app service token expired success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-wide/16 v2, 0x0

    const-string v0, ""

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_10

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$KickMessage;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$KickMessage;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$KickMessage;->getTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$KickMessage;->getDevice()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v5, "SessionManager"

    const-string v6, "kicked by server, type is %d,time is %d s,device is %s call app onKickedByServer"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v9

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mLoginRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-interface {v4, v1, v2, v3, v0}, Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;->onEventKickedByServer(IJLjava/lang/String;)V

    const-string v0, "SessionManager"

    const-string v1, " notify app kicked by server success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "SessionManager"

    const-string v1, "no service token, call app onEventGetServiceToken"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    invoke-interface {v0}, Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;->onEventGetServiceToken()V

    const-string v0, "SessionManager"

    const-string v1, " notify app get service token success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "SessionManager"

    const-string v1, "app should check update."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    invoke-interface {v0}, Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;->onEventShouldCheckUpdate()V

    const-string v0, "SessionManager"

    const-string v1, " notify app should check update success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "SessionManager"

    const-string v1, "invalid packet, call app onEventInvalidPacket "

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    invoke-interface {v0}, Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;->onEventInvalidPacket()V

    const-string v0, "SessionManager"

    const-string v1, " notify app invalid packet success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    move v1, v4

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public sendData(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "send data ,cmd can not be null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getSequence()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setSeqNo(I)V

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/Request;

    const/4 v5, 0x2

    move-object v1, p1

    move-object v2, p3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/mi/milinkforgame/sdk/session/Request;-><init>(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/ResponseListener;ZZB)V

    invoke-virtual {v0, p2}, Lcom/mi/milinkforgame/sdk/session/Request;->setTimeOut(I)V

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    move-result v3

    goto :goto_0
.end method

.method public setCallback(Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;)V
    .locals 2

    const-string v0, "SessionManager"

    const-string v1, "register event callback."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mEventCallBack:Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;

    return-void
.end method

.method public setInitByAppLogin(Z)V
    .locals 3

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsInitByAppLogin isInitByAppLogin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mInitByAppLogin:Z

    return-void
.end method

.method public setSessionManagerListener(Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mListener:Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;

    return-void
.end method

.method public tryAcquireWakeLockForSendIfNeed()V
    .locals 1

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getEstimateWakeTimeForSendData()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->acquireWakeLock(I)V

    :cond_0
    return-void
.end method

.method public tryConnectIfNeed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    sget-object v2, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->normalOpen()Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    sget-object v2, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connecting:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->mState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Connected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->login()V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized trySetMaxRecvSeqNo(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->maxRecvSeqNo:I

    if-le p1, v0, :cond_0

    sput p1, Lcom/mi/milinkforgame/sdk/session/SessionManager;->maxRecvSeqNo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trySetMaxSendSeqNo(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/mi/milinkforgame/sdk/session/SessionManager;->maxSendSeqNo:I

    if-le p1, v0, :cond_0

    sput p1, Lcom/mi/milinkforgame/sdk/session/SessionManager;->maxSendSeqNo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
