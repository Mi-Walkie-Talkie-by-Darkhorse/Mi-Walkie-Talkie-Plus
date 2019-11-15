.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;
.super Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;
.source "CreateGroupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;-><init>()V

    return-void
.end method

.method private createGroup()V
    .locals 5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;->getSelectedItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u8fd8\u672a\u641c\u7d22\u597d\u53cb"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/im/account/UserCache;->instance()Lcom/ifengyu/im/account/UserCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/account/UserCache;->getUserInfo()Lcom/ifengyu/im/account/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v1, v0

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lcom/ifengyu/im/account/UserInfo;->nickname:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;->showTipDiaog()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqCreateTempGroup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getBarTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f09009d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRightButtonText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f09009c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initListener()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->initListener()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;->TAG:Ljava/lang/String;

    const-string v1, "initListener"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->onDestroy()V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/GroupEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;->hideTipDialog()V

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity$1;->$SwitchMap$com$ifengyu$im$imservice$event$GroupEvent$Event:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupEvent;->getEvent()Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "\u521b\u5efa\u6210\u529f"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRightButtonClick()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;->TAG:Ljava/lang/String;

    const-string v1, "onRightButtonClick"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;->createGroup()V

    return-void
.end method
