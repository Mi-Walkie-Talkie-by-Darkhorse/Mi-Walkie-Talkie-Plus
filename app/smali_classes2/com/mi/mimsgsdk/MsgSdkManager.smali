.class public Lcom/mi/mimsgsdk/MsgSdkManager;
.super Ljava/lang/Object;
.source "MsgSdkManager.java"

# interfaces
.implements Lcom/mi/mimsgsdk/AudioMsgSdkInterface;
.implements Lcom/mi/mimsgsdk/MsgApiInterface;


# static fields
.field private static final BUGLYAPPID:Ljava/lang/String; = "cb0e2bcdda"

.field public static final CHANNEL_GROUP:I = 0x3

.field public static final CHANNEL_ROOM:I = 0x2

.field public static final CHANNEL_USER:I = 0x1

.field public static final SIGNAL_CONFERENCE_MEMBERS:I = 0x65

.field public static final SIGNAL_LOGIN_CHECK:I = 0x64

.field public static final SIGNAL_USERNAME_TRANS:I = 0x66

.field private static final TAG:Ljava/lang/String;

.field public static final appid:Ljava/lang/String; = "10001"

.field private static volatile gUid2SMidMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/mi/mimsgsdk/MsgSdkManager;

.field private static volatile sMid2GuidMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile startTime:J


# instance fields
.field private DEFAULT_TIMEOUT:I

.field private volatile initParams:Lcom/mi/mimsgsdk/InitParams;

.field private isDebug:Z

.field private mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

.field private volatile mConferenceId:J

.field private volatile mEngineCallback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

.field private volatile mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

.field private volatile mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mi/mimsgsdk/MsgSdkManager;->startTime:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->sMid2GuidMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->gUid2SMidMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->isDebug:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->DEFAULT_TIMEOUT:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mConferenceId:J

    new-instance v0, Lcom/mi/mimsgsdk/InitParams;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/InitParams;-><init>()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->getAppId()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/MsgSdkManager;->initCrash(Landroid/content/Context;)V

    new-instance v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MsgSdkManager constructor, version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/MsgSdkManager;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->sInstance:Lcom/mi/mimsgsdk/MsgSdkManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "maybe forget call destroy() before recreate"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-object p0, Lcom/mi/mimsgsdk/MsgSdkManager;->sInstance:Lcom/mi/mimsgsdk/MsgSdkManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/InitParams;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mi/mimsgsdk/MsgSdkManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/MsgSdkManager;->joinAgoraChannel(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/voip/MiEngineCallback;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mEngineCallback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->sMid2GuidMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->gUid2SMidMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mi/mimsgsdk/MsgSdkManager;ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/mimsgsdk/MsgSdkManager;->sendVideoMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/service/MiMsgServiceClient;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mi/mimsgsdk/MsgSdkManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mConferenceId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/mi/mimsgsdk/MsgSdkManager;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/MsgSdkManager;->getConferenceMemberAsync(J)V

    return-void
.end method

.method private getConferenceMemberAsync(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConferenceMemberAsync, conferenceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->getConferenceMember(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "getConferenceMemberAsync error"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->sInstance:Lcom/mi/mimsgsdk/MsgSdkManager;

    return-object v0
.end method

.method public static getMuid(I)J
    .locals 2

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->sMid2GuidMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mUid:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static getProcessName(I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private initCrash(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/CrashReport$UserStrategy;

    invoke-direct {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/mi/mimsgsdk/utils/VersionUtils;->getMiSDKVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport$UserStrategy;->setAppVersion(Ljava/lang/String;)Lcom/tencent/bugly/mimsg/BuglyStrategy;

    invoke-static {}, Lcom/mi/mimsgsdk/utils/VersionUtils;->getMiSDKChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport$UserStrategy;->setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/mimsg/BuglyStrategy;

    invoke-static {}, Lcom/mi/mimsgsdk/UserInfo;->getInstance()Lcom/mi/mimsgsdk/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/UserInfo;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    const-string v1, "cb0e2bcdda"

    iget-boolean v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->isDebug:Z

    invoke-static {p1, v1, v2, v0}, Lcom/tencent/bugly/mimsg/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/mimsg/crashreport/CrashReport$UserStrategy;)V

    return-void
.end method

.method private joinAgoraChannel(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->joinRoom(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "join room failed, voipmanage is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendVideoMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->sendVideoMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "sendVideoMessage failed: e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustPlaybackSignalVolume(I)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-ltz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->adjustPlaybackSignalVolume(I)V

    :goto_1
    return-void

    :cond_0
    const/16 p1, 0x64

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "adjustPlaybackSignalVolume fail, mVoipManager is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public audioMsgSdkInit(Landroid/content/Context;Lcom/mi/mimsgsdk/AudioRecordListener;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;-><init>(Landroid/content/Context;Lcom/mi/mimsgsdk/AudioRecordListener;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    return-void
.end method

.method public closeMic()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->stopSpeaker()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "stop speaker failed, voipmanager is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public convertWavWithUrl(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVoiceWithUrl but url is blank!, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->playVoiceWithUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "audioMsgSdk has not yet init,mAudioManager = null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public convertWavWithUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVoiceWithUrl but url is blank!, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->playVoiceWithUrl(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "audioMsgSdk has not yet init,mAudioManager = null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()Z
    .locals 4

    const/4 v3, 0x0

    sput-object v3, Lcom/mi/mimsgsdk/MsgSdkManager;->sInstance:Lcom/mi/mimsgsdk/MsgSdkManager;

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->destroy()Z

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->sMid2GuidMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->sMid2GuidMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_2
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->gUid2SMidMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->gUid2SMidMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3
    iput-object v3, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mEngineCallback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public downloadMediaFile(ILjava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "downloadMediaFile"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->upload:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "mixun_sdk_download-%d-uid-%s-appid-%s"

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    iget-object v2, v2, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    int-to-long v6, p1

    aput-wide v6, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->downloadMediaFile(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "downloadMediaFile failed e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public enableAudioVolumeIndication(II)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->enableAudioVolumeIndication(II)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "enableAudioVolumeIndication failed, voipmanager is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableLowBitrateMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->enableLowBitrateMode(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "enable low bit rate mode fail, voipManager is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enterConference(J)V
    .locals 9

    const/4 v5, 0x0

    iput-wide p1, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mConferenceId:J

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterConference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "agora-mixun_sdk_voip-enter-uid-%s-appid-%s"

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    iget-object v2, v2, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    new-array v3, v5, [J

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mConferenceId:J

    const/16 v1, 0xbb8

    iget-object v4, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    iget-object v4, v4, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->sendChannelCheckMessage(JILjava/lang/String;)Z

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->getConferenceMember(J)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v2, "agora-mixun_sdk_voip-enter-code-%d-uid-%s-appid-%s"

    iget-object v3, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    iget-object v3, v3, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [J

    const-wide/16 v6, -0x64

    aput-wide v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "enter conference error"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public exitConference()V
    .locals 4

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "agora-mixun_sdk_voip-leave-uid-%s-appid-%s"

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    iget-object v2, v2, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [J

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->leaveRoom()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "leave room failed, voipmanager is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInitParams()Lcom/mi/mimsgsdk/InitParams;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    return-object v0
.end method

.method public getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/utils/VersionUtils;->getMiSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/mi/mimsgsdk/InitParams;)V
    .locals 7

    if-nez p1, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "InitParams = null...Please call init!!!"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/InitParams;->getgUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/InitParams;->getpSkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/InitParams;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/InitParams;->getB2Token()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/InitParams;->getpId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/InitParams;->getListener()Lcom/mi/mimsgsdk/IMXMsgCallback;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mi/mimsgsdk/MsgSdkManager;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)Z

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)Z
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v7, 0x0

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "init must call in worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manager init start, gUid.len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pSkey.len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " b2Token.len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p4, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "init failed because some args is empty!"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_2

    new-instance v1, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    const/4 v2, -0x2

    iput v2, v1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    iput-object v0, v1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    invoke-interface {p6, v1}, Lcom/mi/mimsgsdk/IMXMsgCallback;->onInitResult(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V

    :cond_2
    move v0, v7

    :goto_3
    return v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_5
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/mi/mimsgsdk/InitParams;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/InitParams;-><init>()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/InitParams;->setgUid(Ljava/lang/String;)Lcom/mi/mimsgsdk/InitParams;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mi/mimsgsdk/InitParams;->setAppId(Ljava/lang/String;)Lcom/mi/mimsgsdk/InitParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mi/mimsgsdk/InitParams;->setpSkey(Ljava/lang/String;)Lcom/mi/mimsgsdk/InitParams;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/mi/mimsgsdk/InitParams;->setB2Token(Ljava/lang/String;)Lcom/mi/mimsgsdk/InitParams;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/mi/mimsgsdk/InitParams;->setpId(Ljava/lang/String;)Lcom/mi/mimsgsdk/InitParams;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/mi/mimsgsdk/InitParams;->setListener(Lcom/mi/mimsgsdk/IMXMsgCallback;)Lcom/mi/mimsgsdk/InitParams;

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->init:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "mixun_sdk_init-uid-%s-appid-%s"

    new-array v2, v7, [J

    invoke-static {v0, v1, p1, v2}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteServiceInit()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    new-instance v6, Lcom/mi/mimsgsdk/MsgSdkManager$1;

    invoke-direct {v6, p0, p6}, Lcom/mi/mimsgsdk/MsgSdkManager$1;-><init>(Lcom/mi/mimsgsdk/MsgSdkManager;Lcom/mi/mimsgsdk/IMXMsgCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "init Exception"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    goto :goto_3
.end method

.method public muteUser(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->gUid2SMidMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    iget v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mediaMuid:I

    invoke-virtual {v1, v0, p2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->muteUser(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "this conference has not this user"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openMic()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->startSpeaker()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "start speaker failed, voipmanager is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVoiceWithUrl(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVoiceWithUrl but url is blank!, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->playVoiceWithUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "audioMsgSdk has not yet init,mAudioManager = null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVoiceWithUrl(Ljava/lang/String;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;)V
    .locals 3
    .param p2    # Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVoiceWithUrl but url is blank!, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->playVoiceWithUrl(Ljava/lang/String;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "audioMsgSdk has not yet init,mAudioManager = null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pullOldGroupMessage(Ljava/lang/String;JI)Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pullOldUserMsg msgSeq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->pullOldGroupMessage(Ljava/lang/String;JI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "pullOldGroupMsg failed e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pullOldUserMessage(JI)Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pullOldUserMsg msgSeq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->pullOldUserMessage(JI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "pullOldUserMsg failed  e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requireGameSoundCancellation()Z
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->requireGameSoundCancellation()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "require game sound cancellation fail, voipManager is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendAsync(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;ILcom/mi/mimsgsdk/service/SendListener;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->sendAsyncWithResponse(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;ILcom/mi/mimsgsdk/service/aidl/ISendCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAsync error ,e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendAudioMessage(Ljava/lang/String;JILjava/lang/String;J)V
    .locals 4

    new-instance v0, Lcom/mi/mimsgsdk/message/AudioBody;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/message/AudioBody;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/mi/mimsgsdk/message/AudioBody;->setLength(J)V

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/message/AudioBody;->setUrl(Ljava/lang/String;)V

    const-string v1, "version_need_update"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/message/AudioBody;->setContent([B)V

    new-instance v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/service/aidl/MiMessage;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    iget-object v2, v2, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    iput-object p5, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    iput-wide p6, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    iput-object v0, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    iget v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->DEFAULT_TIMEOUT:I

    invoke-virtual {p0, p4, v1, v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->sendAudioMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    return-void
.end method

.method public sendAudioMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->sendAudioMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "sendAudioMessage failed: e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendGroupMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 3

    :try_start_0
    iget-object v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->sendGroupMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "sendGroupMessage failed : e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)V
    .locals 2

    iget v0, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    iget-object v1, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/mi/mimsgsdk/utils/StatUtils;->addStatisticsItem(IILjava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/MsgSdkManager$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/mi/mimsgsdk/MsgSdkManager$2;-><init>(Lcom/mi/mimsgsdk/MsgSdkManager;Lcom/mi/mimsgsdk/service/aidl/MiMessage;II)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/e/e;->b()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/d;)Lrx/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a;->b()Lrx/f;

    return-void
.end method

.method public sendProtoMessage(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendRoomMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 3

    :try_start_0
    iget-object v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->sendRoomMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "sendRoomMessage failed: e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendStat(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in app process, stat content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->scribe(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "sendStat fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 3

    :try_start_0
    iget-object v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "sendUserMessage failed : e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->setSpeakerphoneOn(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "audioMsgSdk has not yet init, mAudioManager = null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSyncLimit(I)Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->setSyncLimit(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "setSyncLimit failed e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAudio()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->startListen()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "start listen failed, voipmanager is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRecord()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->startRecord()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "audioMsgSdk has not yet init,mAudioManager = null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAudio()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->stopListen()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "stop listen failed, voipmanager is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopPlayVoice()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->stopPlay()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "audioMsgSdk has not yet init,mAudioManager = null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mAudioManager:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->stopRecord()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "audioMsgSdk has not yet init, mAudioManager = null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncGroupMessage(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncGroupMsg groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->syncGroupMessage(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "syncGroupMsg failed  e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uploadImage(Ljava/lang/String;Lcom/mi/mimsgsdk/callback/UploadImageCallback;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v3, "uploadImage"

    invoke-static {v0, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "jpg"

    aput-object v0, v4, v2

    const-string v0, "jpeg"

    aput-object v0, v4, v1

    const/4 v0, 0x2

    const-string v3, "png"

    aput-object v3, v4, v0

    const/4 v0, 0x3

    const-string v3, "ico"

    aput-object v3, v4, v0

    const/4 v0, 0x4

    const-string v3, "bmp"

    aput-object v3, v4, v0

    const/4 v0, 0x5

    const-string v3, "gif"

    aput-object v3, v4, v0

    const/4 v0, 0x6

    const-string v3, "tif"

    aput-object v3, v4, v0

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->upload:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v3, "mixun_sdk_upload-%d-uid-%s-appid-%s"

    iget-object v4, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    iget-object v4, v4, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    new-array v5, v1, [J

    const-wide/16 v6, 0x2

    aput-wide v6, v5, v2

    invoke-static {v0, v3, v4, v5}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    new-instance v3, Lcom/mi/mimsgsdk/MsgSdkManager$3;

    invoke-direct {v3, p0, p2}, Lcom/mi/mimsgsdk/MsgSdkManager$3;-><init>(Lcom/mi/mimsgsdk/MsgSdkManager;Lcom/mi/mimsgsdk/callback/UploadImageCallback;)V

    invoke-interface {v0, p1, v3}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->uploadImage(Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v3, "uploadImage Exception"

    invoke-static {v1, v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    goto :goto_0
.end method

.method public uploadLogs(Ljava/lang/String;IJZLjava/lang/String;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->uploadLogs(Ljava/lang/String;IJZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public uploadVideo(Lcom/mi/mimsgsdk/video/VideoBody;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v1, "uploadVideo"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/MiMessage;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    iput-object p1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    :try_start_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mServiceClient:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->uploadVideo(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->upload:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "mixun_sdk_upload-%d-uid-%s-appid-%s"

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    iget-object v2, v2, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    const-wide/16 v6, 0x4

    aput-wide v6, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/MsgSdkManager;->TAG:Ljava/lang/String;

    const-string v2, "uploadVideo failed: e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public voipMsgSdkInit(Lcom/mi/mimsgsdk/voip/MiEngineCallback;Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mEngineCallback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    new-instance v0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;-><init>()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->mVoipManager:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    new-instance v1, Lcom/mi/mimsgsdk/MsgSdkManager$4;

    invoke-direct {v1, p0, p1}, Lcom/mi/mimsgsdk/MsgSdkManager$4;-><init>(Lcom/mi/mimsgsdk/MsgSdkManager;Lcom/mi/mimsgsdk/voip/MiEngineCallback;)V

    invoke-virtual {v0, v1, p2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->MiVoipEngineInit(Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;Landroid/content/Context;)V

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "agora-mixun_sdk_voip-launch-uid-%s-appid-%s"

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager;->initParams:Lcom/mi/mimsgsdk/InitParams;

    iget-object v2, v2, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [J

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    :cond_0
    return-void
.end method
