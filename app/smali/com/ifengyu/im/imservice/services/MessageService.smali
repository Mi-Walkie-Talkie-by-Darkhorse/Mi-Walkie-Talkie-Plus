.class public Lcom/ifengyu/im/imservice/services/MessageService;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/services/MessageService$Holder;
    }
.end annotation


# static fields
.field public static final BODY_TYPE_AUDIO:I = 0x2

.field public static final BODY_TYPE_CUSTOM:I = 0x0

.field public static final BODY_TYPE_TEXT:I = 0x1

.field public static final BODY_TYPE_VIDEO:I = 0x3

.field public static final CHANNEL_GROUP:I = 0x3

.field public static final CHANNEL_ROOM:I = 0x2

.field public static final CHANNEL_USER:I = 0x1

.field public static final SYSTEM_MSG_GROUP_FROM_ID:Ljava/lang/String; = "2"

.field public static final SYSTEM_MSG_SINGLE_FROM_ID:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isEnterChatRoom:Z

.field private isInitialized:Z

.field private isPttDown:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoPlayMsgList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentStatus:Lcom/mi/mimsgsdk/ConnectionStatus;

.field private mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

.field private mFileDownloadSampleListener:Lcom/liulishuo/filedownloader/m;

.field private mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

.field private mIMSessionManager:Lcom/ifengyu/im/imservice/services/IMSessionManager;

.field private mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

.field private mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

.field private mTalkGroupId:Ljava/lang/String;

.field private mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

.field private queue:Lcom/liulishuo/filedownloader/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAutoPlayMsgList:Ljava/util/LinkedList;

    invoke-static {}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->instance()Lcom/ifengyu/im/imservice/services/IMSessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mIMSessionManager:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    sget-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->disconnected:Lcom/mi/mimsgsdk/ConnectionStatus;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mCurrentStatus:Lcom/mi/mimsgsdk/ConnectionStatus;

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isEnterChatRoom:Z

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isPttDown:Z

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isInitialized:Z

    new-instance v0, Lcom/ifengyu/im/imservice/services/MessageService$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/services/MessageService$1;-><init>(Lcom/ifengyu/im/imservice/services/MessageService;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->createDownloadListener()Lcom/liulishuo/filedownloader/m;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mFileDownloadSampleListener:Lcom/liulishuo/filedownloader/m;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/im/imservice/services/MessageService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isPttDown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/ifengyu/im/imservice/services/MessageService;)Lcom/mi/mimsgsdk/MsgSdkManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ifengyu/im/imservice/services/MessageService;)Lcom/ifengyu/im/DB/DBInterface;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ifengyu/im/imservice/services/MessageService;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/im/imservice/services/MessageService;->startPlayAudioMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ifengyu/im/imservice/services/MessageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->playNext()V

    return-void
.end method

.method private buildAudioMessage(IILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;-><init>()V

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setMsgId(J)V

    invoke-virtual {v0, p3}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setFromId(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setToId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setSessionType(I)V

    invoke-virtual {v0, v4}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setDirect(I)V

    invoke-virtual {v0, p5, p6}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setTime(J)V

    new-instance v1, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    invoke-direct {v1}, Lcom/ifengyu/im/imservice/model/AudioAttachment;-><init>()V

    invoke-virtual {v1, p7, p8}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->setDuration(J)V

    invoke-virtual {v1, p9}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->setUrl(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setMsgType(I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setAttachment(Lcom/ifengyu/im/imservice/model/MsgAttachment;)V

    invoke-virtual {v0, v4}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setStatus(I)V

    return-object v0
.end method

.method private buildAudioMiMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Lcom/mi/mimsgsdk/service/aidl/MiMessage;
    .locals 4

    new-instance v0, Lcom/mi/mimsgsdk/message/AudioBody;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/message/AudioBody;-><init>()V

    invoke-virtual {v0, p4, p5}, Lcom/mi/mimsgsdk/message/AudioBody;->setLength(J)V

    invoke-virtual {v0, p3}, Lcom/mi/mimsgsdk/message/AudioBody;->setUrl(Ljava/lang/String;)V

    new-instance v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/service/aidl/MiMessage;-><init>()V

    iput-object p1, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    iput-object p2, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    iput-object v0, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    int-to-long v2, p6

    iput-wide v2, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    const/4 v0, 0x2

    iput v0, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    iput p7, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    return-object v1
.end method

.method private createDownloadListener()Lcom/liulishuo/filedownloader/m;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/services/MessageService$4;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/services/MessageService$4;-><init>(Lcom/ifengyu/im/imservice/services/MessageService;)V

    return-object v0
.end method

.method private downloadMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->queue:Lcom/liulishuo/filedownloader/e/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/liulishuo/filedownloader/e/f;

    invoke-direct {v1}, Lcom/liulishuo/filedownloader/e/f;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->queue:Lcom/liulishuo/filedownloader/e/f;

    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/r;->a()Lcom/liulishuo/filedownloader/r;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/r;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/a;->a(Ljava/lang/Object;)Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mFileDownloadSampleListener:Lcom/liulishuo/filedownloader/m;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/a;->a(Lcom/liulishuo/filedownloader/i;)Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->queue:Lcom/liulishuo/filedownloader/e/f;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/e/f;->a(Lcom/liulishuo/filedownloader/a;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->queue:Lcom/liulishuo/filedownloader/e/f;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/e/f;->a()V

    return-void
.end method

.method private initCurrentSession()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->instance(Landroid/content/Context;I)Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->getSessionTalk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mTalkGroupId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private initMiSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/mimsgsdk/MsgSdkManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/MsgSdkManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    :cond_0
    new-instance v7, Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;

    invoke-direct {v7, p0}, Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;-><init>(Lcom/ifengyu/im/imservice/services/MessageService;)V

    new-instance v0, Lcom/ifengyu/im/imservice/services/MessageService$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/im/imservice/services/MessageService$2;-><init>(Lcom/ifengyu/im/imservice/services/MessageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;)V

    invoke-static {}, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->getInstance()Lcom/ifengyu/im/utils/IMSingleThreadExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->execute(Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->initAudio(Lcom/ifengyu/im/imservice/services/AudioRecordAdapter;)V

    return-void
.end method

.method private initMiXun()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getB2Token()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getPublicId()Ljava/lang/String;

    move-result-object v5

    const v0, 0x5f5e10d

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v6, "login#login mi sdk ing\n loginId = %s\n b2Token = %s\n publicKey = %s\n publicId = %s\n appId = %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    aput-object v4, v7, v9

    aput-object v2, v7, v10

    aput-object v5, v7, v11

    aput-object v3, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ifengyu/library/util/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v8

    aput-object v4, v0, v9

    aput-object v2, v0, v10

    aput-object v5, v0, v11

    aput-object v3, v0, v12

    invoke-static {v0}, Lcom/ifengyu/library/util/i;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "login#login mi sdk failed,because some params is null"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/im/imservice/services/MessageService;->initMiSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static instance()Lcom/ifengyu/im/imservice/services/MessageService;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService$Holder;->INSTANCE:Lcom/ifengyu/im/imservice/services/MessageService;

    return-object v0
.end method

.method static final synthetic lambda$handleDataSendResponse$0$MessageService(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->getInstance()Lcom/ifengyu/im/imservice/services/MessageObserverHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->notifyMessageStatusChange(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method private playNext()V
    .locals 12

    const-wide/16 v2, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    new-instance v0, Lcom/ifengyu/im/imservice/services/MessageService$5;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/services/MessageService$5;-><init>(Lcom/ifengyu/im/imservice/services/MessageService;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->setMediaCallback(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAutoPlayMsgList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/library/util/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->changeToHeadset()V

    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    const/16 v6, 0xa

    invoke-virtual {v4}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-virtual/range {v1 .. v10}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->addToPlayList(JJILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;Z)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->resume()V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v1, v11}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->playNext(I)V

    invoke-virtual {v0, v11}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setStatus(I)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)J

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v10}, Lcom/ifengyu/im/imservice/services/MessageService;->changeToSpeaker(Z)V

    goto :goto_0
.end method

.method private startPlayAudioMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAutoPlayMsgList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->playNext()V

    goto :goto_0
.end method

.method private syncAllGroupMessage()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->isGroupReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getAllGroupList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->syncGroupMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public changeToHeadset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    return-void
.end method

.method public changeToSpeaker(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public doOnStart()V
    .locals 0

    return-void
.end method

.method public getCurrentStatus()Lcom/mi/mimsgsdk/ConnectionStatus;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mCurrentStatus:Lcom/mi/mimsgsdk/ConnectionStatus;

    return-object v0
.end method

.method public getGroupSessionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTalkGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mTalkGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public handleConnectionStateChanged(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "onConnectionStateChanged:disconnected"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->disconnected:Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->setCurrentStatus(Lcom/mi/mimsgsdk/ConnectionStatus;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/ConnectionStatus;->disconnected:Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "onConnectionStateChanged:connecting"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->connecting:Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->setCurrentStatus(Lcom/mi/mimsgsdk/ConnectionStatus;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/ConnectionStatus;->connecting:Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "onConnectionStateChanged:connected"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->connected:Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->setCurrentStatus(Lcom/mi/mimsgsdk/ConnectionStatus;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/ConnectionStatus;->connected:Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "onConnectionStateChanged:logining"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->logining:Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->setCurrentStatus(Lcom/mi/mimsgsdk/ConnectionStatus;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/ConnectionStatus;->logining:Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "onConnectionStateChanged:logined"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->logined:Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->setCurrentStatus(Lcom/mi/mimsgsdk/ConnectionStatus;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/ConnectionStatus;->logined:Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->syncAllGroupMessage()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleDataSendResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 7

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMessageEntity(ILcom/mi/mimsgsdk/service/aidl/MiMessage;Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    iget v1, p2, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    if-nez v1, :cond_2

    sget-object v1, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v2, "message data send success"

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setStatus(I)V

    :goto_0
    invoke-static {}, Lcom/ifengyu/library/util/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataSendResponse message send result:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "retCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",retMsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",to = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p3, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",msgSeq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p3, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",msgType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sendTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    iget-object v4, v0, Lcom/ifengyu/im/imservice/model/MessageEntity;->fromId:Ljava/lang/String;

    iget-object v5, v0, Lcom/ifengyu/im/imservice/model/MessageEntity;->toId:Ljava/lang/String;

    iget v6, v0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgType:I

    invoke-virtual/range {v1 .. v6}, Lcom/ifengyu/im/DB/DBInterface;->getMessageByMsgId(JLjava/lang/String;Ljava/lang/String;I)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setId(Ljava/lang/Long;)V

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setAttachment(Lcom/ifengyu/im/imservice/model/MsgAttachment;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)J

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mIMSessionManager:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->updateSession(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    new-instance v1, Lcom/ifengyu/im/imservice/services/MessageService$$Lambda$0;

    invoke-direct {v1, v0}, Lcom/ifengyu/im/imservice/services/MessageService$$Lambda$0;-><init>(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget-object v1, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v2, "message data send failure"

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setStatus(I)V

    goto/16 :goto_0
.end method

.method handleReceiveMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/16 v11, 0x40d

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "onReceiveMessage:channel=%d, msgId = %s, from = %s, to = %s, bodyType = %d, sendTime=%d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v4, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    aput-object v3, v2, v9

    iget-object v3, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    aput-object v3, v2, v10

    const/4 v3, 0x4

    iget v4, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->getLoginId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "Ignore messages sent by myself"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget v1, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    if-nez v1, :cond_2

    iget v1, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    const v2, 0x5acb8e00

    if-gt v1, v2, :cond_2

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "Ignore custom messages up to time 1523289600 ago"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMessageEntity(ILcom/mi/mimsgsdk/service/aidl/MiMessage;Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v2, "messageEntity:content = %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/im/protobuf/helper/MessageParseEngine;->parseGroupNotifyMsg(Ljava/lang/String;)Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setCommand(Lcom/ifengyu/im/imservice/entity/NotifyCommand;)V

    if-eqz v7, :cond_0

    iget v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    const/16 v2, 0x433

    if-eq v1, v2, :cond_0

    iget v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    const/16 v2, 0x419

    if-ne v1, v2, :cond_3

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    if-eqz v1, :cond_3

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->getResultCode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    iget-object v2, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v2, v2, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqGroupDetailInfo(IZLcom/ifengyu/im/imservice/callback/Packetlistener;)V

    :cond_3
    const-string v1, "1"

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getToId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/ifengyu/im/DB/DBInterface;->queryMessageByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setId(Ljava/lang/Long;)V

    :cond_4
    iget v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    if-ne v1, v11, :cond_5

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeType:I

    if-ne v1, v9, :cond_5

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->leaveType:I

    if-ne v1, v9, :cond_5

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setFromId(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setSessionType(I)V

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setToId(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)J

    invoke-static {}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->instance()Lcom/ifengyu/im/imservice/services/IMSessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->updateSession(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    new-instance v1, Lcom/ifengyu/im/imservice/event/PriorityEvent;

    invoke-direct {v1}, Lcom/ifengyu/im/imservice/event/PriorityEvent;-><init>()V

    sget-object v2, Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;->MSG_RECEIVED_MESSAGE:Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;

    iput-object v2, v1, Lcom/ifengyu/im/imservice/event/PriorityEvent;->event:Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;

    iput-object v0, v1, Lcom/ifengyu/im/imservice/event/PriorityEvent;->object:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/services/MessageService;->triggerEvent(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v1

    if-ne v1, v9, :cond_0

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->downloadMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "2"

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getToId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/ifengyu/im/DB/DBInterface;->getMessageByMsgId(JLjava/lang/String;Ljava/lang/String;I)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setId(Ljava/lang/Long;)V

    :cond_7
    iget v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    if-ne v1, v11, :cond_5

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeType:I

    if-ne v1, v9, :cond_5

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->leaveType:I

    if-ne v1, v9, :cond_5

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeUidList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, v7, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeUidList:Ljava/util/List;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_0
.end method

.method public handleReceiveOldGroupMessage(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/MiMessage;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveOldGroupMessage:arg0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    const/4 v4, 0x3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->getLoginId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMessageEntity(ILcom/mi/mimsgsdk/service/aidl/MiMessage;Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/event/MessageHistoryEvent;

    invoke-direct {v1, v2}, Lcom/ifengyu/im/imservice/event/MessageHistoryEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public initAudio(Lcom/ifengyu/im/imservice/services/AudioRecordAdapter;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "msg sdk is not initialized, please initialize"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->ctx:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/ifengyu/im/imservice/services/MessageService$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/services/MessageService$3;-><init>(Lcom/ifengyu/im/imservice/services/MessageService;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->setAudioRecordListener(Lcom/mi/mimsgsdk/AudioRecordListener;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

    invoke-virtual {v0, v1, v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->audioMsgSdkInit(Landroid/content/Context;Lcom/mi/mimsgsdk/AudioRecordListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->setAudioRecordListener(Lcom/mi/mimsgsdk/AudioRecordListener;)V

    goto :goto_0
.end method

.method public isEnterChatRoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isEnterChatRoom:Z

    return v0
.end method

.method public loadHistoryMsg(ILjava/lang/String;JI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ifengyu/im/DB/DBInterface;->getHistoryMsg(ILjava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService$6;->$SwitchMap$com$ifengyu$im$imservice$event$BT_PUBLIC_MSG:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "ptt down"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isPttDown:Z

    invoke-virtual {p0, v2}, Lcom/ifengyu/im/imservice/services/MessageService;->startRecord(Z)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "ptt up"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isPttDown:Z

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->stopRecord()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoginSuccess()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->initMiXun()V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->initCurrentSession()V

    return-void
.end method

.method public pullOldGroupMessage(Ljava/lang/String;JI)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mi/mimsgsdk/MsgSdkManager;->pullOldGroupMessage(Ljava/lang/String;JI)Z

    return-void
.end method

.method public removeAudioRecordListener()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->clear()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ifengyu/library/util/a;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->destroy()Z

    iput-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    :cond_0
    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isInitialized:Z

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isPttDown:Z

    iput-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

    iput-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public sendAudioMessage(ILjava/lang/String;Ljava/lang/String;J)Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v8

    invoke-static {}, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->getInstance()Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->makelocalUniqueMsgId()I

    move-result v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, v9, v2

    long-to-int v7, v2

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/im/imservice/services/MessageService;->buildAudioMiMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->sendMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move v5, p1

    move-object/from16 v8, p2

    move-wide/from16 v11, p4

    move-object/from16 v13, p3

    invoke-direct/range {v4 .. v13}, Lcom/ifengyu/im/imservice/services/MessageService;->buildAudioMessage(IILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setId(Ljava/lang/Long;)V

    return-object v0
.end method

.method public sendAudioMessageToTalkGroup(Ljava/lang/String;J)Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 6

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->getTalkGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "current session id is null,can not send message"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/MessageService;->getTalkGroupId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/im/imservice/services/MessageService;->sendAudioMessage(ILjava/lang/String;Ljava/lang/String;J)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public sendMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    const/16 v1, 0x7530

    invoke-virtual {v0, p1, p2, v1}, Lcom/mi/mimsgsdk/MsgSdkManager;->sendMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)V

    return-void
.end method

.method public setAudioRecordListener(Lcom/mi/mimsgsdk/AudioRecordListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mWrapAudioRecordListener:Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/services/WrapAudioRecordListener;->setAudioRecordListener(Lcom/mi/mimsgsdk/AudioRecordListener;)V

    :cond_0
    return-void
.end method

.method public setCurrentStatus(Lcom/mi/mimsgsdk/ConnectionStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mCurrentStatus:Lcom/mi/mimsgsdk/ConnectionStatus;

    return-void
.end method

.method public setEnterChatRoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isEnterChatRoom:Z

    return-void
.end method

.method public setInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->isInitialized:Z

    return-void
.end method

.method public setTalkGroupId(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mTalkGroupId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService;->ctx:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->instance(Landroid/content/Context;I)Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/services/MessageService;->getGroupSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->setSessionTalk(Ljava/lang/String;)V

    return-void
.end method

.method public startRecord(Z)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/library/util/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "bluetooth is connected and press ptt,opening sco to record"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/services/MessageService;->TAG:Ljava/lang/String;

    const-string v1, "bluetooth is not connected or press phone button,start recording directly"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->startRecord()V

    goto :goto_0
.end method

.method public stopHeadset()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->stopRecord()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/MsgSdkManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public syncGroupMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService;->mMsgSdkManager:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/MsgSdkManager;->syncGroupMessage(Ljava/lang/String;)Z

    return-void
.end method

.method public triggerEvent(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    return-void
.end method
