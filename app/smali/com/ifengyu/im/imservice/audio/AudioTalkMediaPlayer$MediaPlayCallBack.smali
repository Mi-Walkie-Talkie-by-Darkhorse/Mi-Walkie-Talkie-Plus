.class public abstract Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;
.super Ljava/lang/Object;
.source "AudioTalkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MediaPlayCallBack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onStarted(Ljava/lang/String;)V
.end method

.method public abstract onStoped(Ljava/lang/String;Z)V
.end method
