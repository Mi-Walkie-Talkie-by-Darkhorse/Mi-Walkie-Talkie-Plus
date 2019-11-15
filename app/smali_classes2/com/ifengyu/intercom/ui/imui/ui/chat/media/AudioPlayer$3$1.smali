.class Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;

.field final synthetic val$var1:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$1;->this$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$1;->val$var1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$1;->this$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$600(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$1;->this$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$1;->this$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    move-result-object v0

    const-string v1, "OnErrorListener what:extra:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$1;->val$var1:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
