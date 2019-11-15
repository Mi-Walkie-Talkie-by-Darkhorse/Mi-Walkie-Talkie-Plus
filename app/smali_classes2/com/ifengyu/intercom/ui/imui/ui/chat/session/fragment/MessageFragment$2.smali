.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$2;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->onEvent(Lcom/ifengyu/im/imservice/event/PriorityEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

.field final synthetic val$event:Lcom/ifengyu/im/imservice/event/PriorityEvent;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;Lcom/ifengyu/im/imservice/event/PriorityEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$2;->val$event:Lcom/ifengyu/im/imservice/event/PriorityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->getInstance()Lcom/ifengyu/im/imservice/services/MessageObserverHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$2;->val$event:Lcom/ifengyu/im/imservice/event/PriorityEvent;

    iget-object v0, v0, Lcom/ifengyu/im/imservice/event/PriorityEvent;->object:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->notifyReceiveMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method
