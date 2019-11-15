.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;
.super Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;
.source "InviteContactActivity.java"


# instance fields
.field private mSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;-><init>()V

    return-void
.end method

.method private inviteContact()V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "\u8fd8\u672a\u641c\u7d22\u597d\u53cb"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->showTipDiaog()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->mSessionId:I

    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity$1;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqInviteUserJoinGroup(ILjava/util/List;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getBarTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f090114

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRightButtonText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initBundle(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->initBundle(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->mSessionId:I

    :cond_0
    return-void
.end method

.method protected onRightButtonClick()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->inviteContact()V

    return-void
.end method
