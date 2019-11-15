.class public Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;
.super Ljava/lang/Object;
.source "AudioTalkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayPair"
.end annotation


# instance fields
.field public attId:J

.field public localPath:Ljava/lang/String;

.field public mMarkAsHeard:Z

.field public mObserver:Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;

.field public mTargetAccountName:Ljava/lang/String;

.field public messageType:I

.field public msgId:J


# direct methods
.method public constructor <init>(JJILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->messageType:I

    iput-object p6, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->msgId:J

    check-cast p1, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;

    iget-wide v4, p1, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->msgId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$PlayPair;->msgId:J

    long-to-int v0, v0

    return v0
.end method
