.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$1;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "SystemMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->agreeOrRejectInvite(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;

.field final synthetic val$msg:Lcom/ifengyu/im/imservice/model/MessageEntity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$1;->val$msg:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 1

    const-string v0, "\u53d1\u9001\u5931\u8d25"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$1;->val$msg:Lcom/ifengyu/im/imservice/model/MessageEntity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setStatus(I)V

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$1;->val$msg:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)J

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 1

    const-string v0, "\u53d1\u9001\u8d85\u65f6"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
