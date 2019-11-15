.class public interface abstract Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;
.super Ljava/lang/Object;
.source "CustomAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/CustomAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadCallback"
.end annotation


# virtual methods
.method public abstract onDownloadFailed(Ljava/lang/String;)V
.end method

.method public abstract onDownloadSuccess(Ljava/lang/String;)V
.end method
