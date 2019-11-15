.class public Lcom/xiaomi/channel/common/audio/CustomAudioManager;
.super Ljava/lang/Object;
.source "CustomAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;,
        Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioRecord:Lcom/xiaomi/channel/common/audio/MLAudioRecord;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsInRecordMode:Z

.field private mIsSpeakerphoneOn:Z

.field private mListener:Lcom/mi/mimsgsdk/AudioRecordListener;

.field private mOldAudioMode:I

.field private mOldIsSpeakerphoneOn:Z

.field private mOldRingMode:I

.field private mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

.field final mediaPlayerCallBack:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mi/mimsgsdk/AudioRecordListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mIsSpeakerphoneOn:Z

    new-instance v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;-><init>(Lcom/xiaomi/channel/common/audio/CustomAudioManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager$2;-><init>(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mediaPlayerCallBack:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mListener:Lcom/mi/mimsgsdk/AudioRecordListener;

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;-><init>(Lcom/xiaomi/channel/common/audio/CustomAudioManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioRecord:Lcom/xiaomi/channel/common/audio/MLAudioRecord;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mListener:Lcom/mi/mimsgsdk/AudioRecordListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->setOldAudioConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/channel/common/audio/CustomAudioManager;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->playVoice(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private downloadAttachment(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/xiaomi/channel/common/audio/CustomAudioManager$4;-><init>(Lcom/xiaomi/channel/common/audio/CustomAudioManager;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getOldAudioConfig()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mOldAudioMode:I

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mOldRingMode:I

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mOldIsSpeakerphoneOn:Z

    return-void
.end method

.method private playVoice(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 11

    const-wide/16 v2, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->getOldAudioConfig()V

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->setPlayAudioConfig()V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->clearMediaCallback()V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mediaPlayerCallBack:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->setMediaCallback(Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->clearPlayList()V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->stop()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->resume()V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    const/16 v6, 0xa

    const-string v8, ""

    const/4 v9, 0x0

    move-wide v4, v2

    move-object v7, p1

    invoke-virtual/range {v1 .. v10}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->addToPlayList(JJILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;Z)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    iget-boolean v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mIsSpeakerphoneOn:Z

    if-eqz v1, :cond_2

    const/4 v10, 0x3

    :cond_2
    invoke-virtual {v0, v10, p2, p3}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->playNext(IZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "playVoice failed because localPath is null!"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOldAudioConfig()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mOldAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mOldRingMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mOldIsSpeakerphoneOn:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method private setPlayAudioConfig()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device build version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mIsSpeakerphoneOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1
.end method


# virtual methods
.method public getLatestRecord()Lcom/xiaomi/channel/common/audio/CustomAudioMsg;
    .locals 4

    new-instance v0, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;

    invoke-direct {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioRecord:Lcom/xiaomi/channel/common/audio/MLAudioRecord;

    invoke-virtual {v1}, Lcom/xiaomi/channel/common/audio/MLAudioRecord;->getAudioLen()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;->setLength(J)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioRecord:Lcom/xiaomi/channel/common/audio/MLAudioRecord;

    invoke-virtual {v1}, Lcom/xiaomi/channel/common/audio/MLAudioRecord;->getAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;->setLocalPath(Ljava/lang/String;)V

    return-object v0
.end method

.method public playVoiceWithUrl(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->playVoiceWithUrl(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public playVoiceWithUrl(Ljava/lang/String;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "please provide a callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play voice by local url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->playVoice(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play voice by url url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".spx"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->downloadAttachment(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVoiceWithUrl(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/xiaomi/channel/common/audio/CustomAudioManager$3;-><init>(Lcom/xiaomi/channel/common/audio/CustomAudioManager;ZLjava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play voice by local url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->playVoice(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play voice by url url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ".spx"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->downloadAttachment(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mIsSpeakerphoneOn:Z

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->setPlayAudioConfig()V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->setEarphoneStatus(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startRecord()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioRecord:Lcom/xiaomi/channel/common/audio/MLAudioRecord;

    sget v1, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->ACTION_START:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/MLAudioRecord;->onTouch(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mIsInRecordMode:Z

    return-void
.end method

.method public stopPlay()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mPlayer:Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mIsInRecordMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mAudioRecord:Lcom/xiaomi/channel/common/audio/MLAudioRecord;

    sget v1, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->ACTION_STOP:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/MLAudioRecord;->onTouch(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->mIsInRecordMode:Z

    :cond_0
    return-void
.end method
