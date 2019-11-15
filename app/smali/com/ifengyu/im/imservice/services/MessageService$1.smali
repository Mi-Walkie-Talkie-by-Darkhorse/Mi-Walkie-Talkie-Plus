.class Lcom/ifengyu/im/imservice/services/MessageService$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/services/MessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/services/MessageService;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/services/MessageService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/MessageService$1;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive#bluetooth state off"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService$1;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->stopHeadset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive#bluetooth disconnected"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService$1;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->stopHeadset()V

    goto :goto_0

    :cond_2
    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive#audio sco is established"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService$1;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->access$100(Lcom/ifengyu/im/imservice/services/MessageService;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive#and ptt key is down,start recording"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService$1;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->access$200(Lcom/ifengyu/im/imservice/services/MessageService;)Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->startRecord()V

    goto :goto_0
.end method
