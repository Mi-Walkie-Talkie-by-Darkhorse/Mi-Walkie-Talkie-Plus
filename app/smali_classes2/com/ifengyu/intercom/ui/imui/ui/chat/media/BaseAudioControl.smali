.class public abstract Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;
.super Ljava/lang/Object;
.source "BaseAudioControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;,
        Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;,
        Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControllerState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

.field private basePlayerListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl",
            "<TT;>.BasePlayer",
            "Listener;"
        }
    .end annotation
.end field

.field protected currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

.field private currentAudioStreamType:I

.field protected currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

.field protected isEarPhoneModeEnable:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private mSuffix:Z

.field private mSuffixPlayer:Landroid/media/MediaPlayer;

.field protected needSeek:Z

.field private origAudioStreamType:I

.field playRunnable:Ljava/lang/Runnable;

.field protected seekPosition:J

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->isEarPhoneModeEnable:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->needSeek:Z

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffixPlayer:Landroid/media/MediaPlayer;

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffix:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->basePlayerListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->playRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffix:Z

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffixPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffixPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioStreamType:I

    return v0
.end method

.method static synthetic access$302(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->state:I

    return p1
.end method

.method private changeAudioStreamType(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->seekPosition:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->needSeek:Z

    iput p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioStreamType:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->start(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->origAudioStreamType:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioStreamType:I

    goto :goto_0
.end method


# virtual methods
.method public changeAudioControlListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->getOnPlayListener()Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->setAudioControlListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V

    :cond_0
    return-void
.end method

.method public changeToHeadset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public changeToSpeaker(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getAudioControlListener()Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    return-object v0
.end method

.method public getCurrentAudioStreamType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioStreamType:I

    return v0
.end method

.method public abstract getPlayingAudio()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected getUserSettingAudioStreamType()I
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->isEarPhoneModeEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public isPlayingAudio()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->state:I

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method protected playSuffix()V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f080000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffixPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffixPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffixPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffixPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mSuffixPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method protected resetAudioController(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->setOnPlayListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->state:I

    return-void
.end method

.method public restoreAudioStreamType()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->isPlayingAudio()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->origAudioStreamType:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->getCurrentAudioStreamType()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->origAudioStreamType:I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->changeAudioStreamType(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEarPhoneModeEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->isEarPhoneModeEnable:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->updateAudioStreamType(I)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->updateAudioStreamType(I)Z

    goto :goto_0
.end method

.method protected setOnPlayListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V
    .locals 2

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-direct {v0, p0, v1, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->basePlayerListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->basePlayerListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->setOnPlayListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->basePlayerListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->setAudioControlListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V

    return-void
.end method

.method protected startAudio(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->isPlayingAudio()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->stopAudio()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-interface {v3, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;->isAudioEqual(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/library/util/a;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->changeToHeadset()V

    :goto_1
    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->state:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->setOnPlayListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V

    if-eqz p4, :cond_3

    iput p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->origAudioStreamType:I

    :cond_3
    iput p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioStreamType:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->playRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->state:I

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-interface {p2, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;->onAudioControllerReady(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->changeToSpeaker(Z)V

    goto :goto_1
.end method

.method public startPlayAudio(Ljava/lang/Object;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->getUserSettingAudioStreamType()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->startPlayAudio(Ljava/lang/Object;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;I)V

    return-void
.end method

.method public startPlayAudio(Ljava/lang/Object;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;",
            "I)V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->startPlayAudioDelay(JLjava/lang/Object;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;I)V

    return-void
.end method

.method public startPlayAudioDelay(JLjava/lang/Object;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->getUserSettingAudioStreamType()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->startPlayAudioDelay(JLjava/lang/Object;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;I)V

    return-void
.end method

.method public abstract startPlayAudioDelay(JLjava/lang/Object;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;",
            "I)V"
        }
    .end annotation
.end method

.method public stopAudio()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->stop()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->stopHeadset()V

    return-void

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->playRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->resetAudioController(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;->onEndPlay(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    goto :goto_0
.end method

.method public stopHeadset()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    return-void
.end method

.method public updateAudioStreamType(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->isPlayingAudio()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->getCurrentAudioStreamType()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->changeAudioStreamType(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method
