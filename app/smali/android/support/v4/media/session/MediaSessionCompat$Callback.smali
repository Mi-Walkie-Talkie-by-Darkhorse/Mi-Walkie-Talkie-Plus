.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;
    }
.end annotation


# instance fields
.field final mCallbackObj:Ljava/lang/Object;

.field mSessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi24;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi23;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 0

    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFastForward()V
    .locals 0

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPlay()V
    .locals 0

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepare()V
    .locals 0

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    return-void
.end method

.method public onRemoveQueueItemAt(I)V
    .locals 0

    return-void
.end method

.method public onRewind()V
    .locals 0

    return-void
.end method

.method public onSeekTo(J)V
    .locals 0

    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 0

    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 0

    return-void
.end method

.method public onSetShuffleModeEnabled(Z)V
    .locals 0

    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
