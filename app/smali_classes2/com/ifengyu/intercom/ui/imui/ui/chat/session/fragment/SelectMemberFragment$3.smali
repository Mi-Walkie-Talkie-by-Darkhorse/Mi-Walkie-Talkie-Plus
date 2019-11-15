.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$3;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "SelectMemberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->transferCreator(Lcom/ifengyu/im/DB/entity/UserEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->hideTipDialog()V

    const v0, 0x7f090223

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->hideTipDialog()V

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "creator_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)V

    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->hideTipDialog()V

    const v0, 0x7f090223

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    return-void
.end method
