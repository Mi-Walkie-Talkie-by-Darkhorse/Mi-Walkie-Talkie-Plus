.class public Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;
.super Ljava/lang/Object;
.source "MediaPlayerObserver.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$PlayStatusListener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static createObserver(Landroid/content/Context;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$PlayStatusListener;)Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;
    .locals 2

    new-instance v0, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;

    new-instance v1, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$1;

    invoke-direct {v1, p1}, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$1;-><init>(Lcom/xiaomi/channel/common/audio/MediaPlayerObserver$PlayStatusListener;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
