.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$4;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "ChatRoomInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->leaveGroup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->hideTipDialog()V

    const v0, 0x7f090155

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->hideTipDialog()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->finish()V

    return-void
.end method

.method public onTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->hideTipDialog()V

    const v0, 0x7f090155

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    return-void
.end method
