.class Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$1;
.super Ljava/lang/Object;
.source "BaseAudioControl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->playSuffix()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->access$002(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    return-void
.end method
