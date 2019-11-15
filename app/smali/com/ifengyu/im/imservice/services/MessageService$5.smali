.class Lcom/ifengyu/im/imservice/services/MessageService$5;
.super Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/services/MessageService;->playNext()V
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

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/MessageService$5;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStoped(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService$5;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->stopHeadset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageService$5;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->access$500(Lcom/ifengyu/im/imservice/services/MessageService;)V

    return-void
.end method
