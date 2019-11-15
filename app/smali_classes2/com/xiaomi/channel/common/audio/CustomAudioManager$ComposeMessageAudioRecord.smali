.class public Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;
.super Lcom/xiaomi/channel/common/audio/MLAudioRecord;
.source "CustomAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/CustomAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComposeMessageAudioRecord"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/common/audio/CustomAudioManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/channel/common/audio/MLAudioRecord;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public creatAudioPath()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$AttachmentUtils;->makeDirsIfNeeded(I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyyMMdd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".spx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/channel/common/audio/CommonUtils;->getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEndingRecord()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onEndingRecord()V

    return-void
.end method

.method public onRecordFailed()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordFailed()V

    return-void
.end method

.method public onRecordFinished()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->getLatestRecord()Lcom/xiaomi/channel/common/audio/CustomAudioMsg;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;->getLength()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordFinished(Ljava/lang/String;J)V

    return-void
.end method

.method public onRecordInitializationCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordInitializationCancelled()V

    return-void
.end method

.method public onRecordInitializationFailed()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordInitializationFailed()V

    return-void
.end method

.method public onRecordInitializationSucceed()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordInitializationSucceed()V

    invoke-super {p0}, Lcom/xiaomi/channel/common/audio/MLAudioRecord;->onRecordInitializationSucceed()V

    return-void
.end method

.method public onRecordStart()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$ComposeMessageAudioRecord;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordStart()V

    return-void
.end method
