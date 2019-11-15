.class Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;
.super Landroid/os/Handler;
.source "CustomAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/CustomAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/common/audio/CustomAudioManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive msg can not recognize! msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->stopRecord()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "rmsdB"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v1}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRmsChanged(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onRecordFailed()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$1;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/mimsgsdk/AudioRecordListener;->onAudioCoderInitializationFailed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
