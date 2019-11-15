.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

.field private final arg$2:Lcom/ifengyu/im/imservice/model/MessageEntity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter$$Lambda$1;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter$$Lambda$1;->arg$2:Lcom/ifengyu/im/imservice/model/MessageEntity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter$$Lambda$1;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter$$Lambda$1;->arg$2:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;->lambda$bindData$1$SystemMsgActivity$SystemMsgAdapter(Lcom/ifengyu/im/imservice/model/MessageEntity;Landroid/view/View;)V

    return-void
.end method
