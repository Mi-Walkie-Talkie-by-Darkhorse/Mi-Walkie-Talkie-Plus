.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity$1;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "InviteContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->inviteContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->hideTipDialog()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->hideTipDialog()V

    const-string v0, "\u5df2\u53d1\u51fa\u597d\u53cb\u9080\u8bf7"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->finish()V

    return-void
.end method

.method public onTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->hideTipDialog()V

    const v0, 0x7f090155

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    return-void
.end method
