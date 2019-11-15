.class public abstract Lcom/xiaomi/channel/common/audio/MLAudioRecord;
.super Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;
.source "MLAudioRecord.java"


# static fields
.field private static mComposingMessageId:J


# instance fields
.field private mIsCancelled:Z

.field private mIsStopRecordingAction:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/MLAudioRecord;->mIsCancelled:Z

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/MLAudioRecord;->mIsStopRecordingAction:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const v0, 0xea60

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/channel/common/audio/MLAudioRecord;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method

.method public static isComposing(J)Z
    .locals 2

    sget-wide v0, Lcom/xiaomi/channel/common/audio/MLAudioRecord;->mComposingMessageId:J

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onRecordInitializationSucceed()V
    .locals 0

    return-void
.end method

.method public setCancelled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/channel/common/audio/MLAudioRecord;->mIsCancelled:Z

    return-void
.end method

.method public stopRecordingAction()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/MLAudioRecord;->mIsStopRecordingAction:Z

    return-void
.end method
