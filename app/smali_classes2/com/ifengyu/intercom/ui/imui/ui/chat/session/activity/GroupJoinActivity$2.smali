.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "GroupJoinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->onQueryTextSubmit(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->hideTipDialog()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->c()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->hideTipDialog()V

    instance-of v0, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query group result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->c()V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->hideTipDialog()V

    return-void
.end method
