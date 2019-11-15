.class Lcom/xiaomi/channel/common/audio/CustomAudioManager$2;
.super Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;
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
.method constructor <init>(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$2;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/AudioTalkMediaPlayer$MediaPlayCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$2;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$200(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$2;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mi/mimsgsdk/AudioRecordListener;->onPlayEnd(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$2;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/AudioRecordListener;->onPlayBegin(Ljava/lang/String;)V

    return-void
.end method

.method public onStoped(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$2;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$200(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioManager$2;->this$0:Lcom/xiaomi/channel/common/audio/CustomAudioManager;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/CustomAudioManager;->access$000(Lcom/xiaomi/channel/common/audio/CustomAudioManager;)Lcom/mi/mimsgsdk/AudioRecordListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/AudioRecordListener;->onPlayEnd(Ljava/lang/String;Z)V

    return-void
.end method
