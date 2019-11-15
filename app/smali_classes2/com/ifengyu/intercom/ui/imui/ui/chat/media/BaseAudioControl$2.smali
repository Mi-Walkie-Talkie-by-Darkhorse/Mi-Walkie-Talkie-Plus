.class Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$2;
.super Ljava/lang/Object;
.source "BaseAudioControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playRunnable run when currentAudioPlayer == null"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->start(I)V

    goto :goto_0
.end method
