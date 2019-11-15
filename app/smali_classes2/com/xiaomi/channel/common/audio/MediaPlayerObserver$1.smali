.class final Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$1;
.super Landroid/os/Handler;
.source "MediaPlayerObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;->createObserver(Landroid/content/Context;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$PlayStatusListener;)Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$PlayStatusListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$PlayStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$1;->val$listener:Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$PlayStatusListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$1;->val$listener:Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$PlayStatusListener;

    check-cast v0, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    invoke-interface {v1, v0}, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$PlayStatusListener;->onPlayStatusChanged(Lcom/xiaomi/channel/common/audio/PlayerStatus;)V

    :cond_0
    return-void
.end method
