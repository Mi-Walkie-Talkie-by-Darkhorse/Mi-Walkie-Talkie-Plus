.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;
.source "SystemMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;
    }
.end annotation


# instance fields
.field mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b9
    .end annotation
.end field

.field mRvMsgList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10017d
    .end annotation
.end field

.field private mSystemMsgAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

.field mTvEmptyView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10016a
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->agreeOrRegectApply(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->agreeOrRejectInvite(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->isActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->mSystemMsgAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->isActivated()Z

    move-result v0

    return v0
.end method

.method private agreeOrRegectApply(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getCommand()Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/entity/ApplyNotify;

    invoke-direct {v1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;-><init>()V

    iget-object v2, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v2, v2, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorId:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setCreatorId(I)V

    iget-object v2, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v2, v2, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupId:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setGroupId(I)V

    iget-object v2, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v2, v2, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setGroupName(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v0, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserId:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setReqUserId(I)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->rspApplyJoinGroup(Lcom/ifengyu/im/imservice/entity/ApplyNotify;ZLcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method private agreeOrRejectInvite(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getCommand()Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/im/imservice/entity/InviteNotify;

    invoke-direct {v2}, Lcom/ifengyu/im/imservice/entity/InviteNotify;-><init>()V

    iget-object v3, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v3, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupId:I

    invoke-virtual {v2, v3}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setGroupId(I)V

    iget-object v3, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget-object v3, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setGroupName(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v3, v3, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->inviteUserId:I

    invoke-virtual {v2, v3}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setInvitedUserId(I)V

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setInvitedUserName(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    iget v0, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserId:I

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setReqUserId(I)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    invoke-virtual {v0, v2, p2, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->rspAcceptOrRejectGroupInvite(Lcom/ifengyu/im/imservice/entity/InviteNotify;ZLcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSystemMsg()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/DBInterface;->getAllSystemMsg()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method static final synthetic lambda$initData$0$SystemMsgActivity(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->command:Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    const/16 v2, 0x41c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x41f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x416

    if-eq v1, v2, :cond_0

    const/16 v2, 0x419

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method final synthetic bridge$lambda$0$SystemMsgActivity()Lio/reactivex/k;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->getSystemMsg()Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f04004d

    return v0
.end method

.method protected initData()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;)V

    invoke-static {v0}, Lio/reactivex/k;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$1;->$instance:Lio/reactivex/b/g;

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lio/reactivex/b/g;)Lio/reactivex/k;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$2;->$instance:Lio/reactivex/internal/util/a$a;

    invoke-virtual {v0, v1}, Lio/reactivex/k;->filter(Lio/reactivex/b/p;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/k;->toList()Lio/reactivex/s;

    move-result-object v0

    invoke-static {}, Lio/reactivex/e/a;->b()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/s;->b(Lio/reactivex/r;)Lio/reactivex/s;

    move-result-object v0

    invoke-static {}, Lio/reactivex/a/b/a;->a()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/s;->a(Lio/reactivex/r;)Lio/reactivex/s;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->mSystemMsgAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$3;->get$Lambda(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;)Lio/reactivex/b/f;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$4;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$4;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/s;->a(Lio/reactivex/b/f;Lio/reactivex/b/f;)Lio/reactivex/disposables/b;

    return-void
.end method

.method protected initListener()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$5;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$$Lambda$5;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->mTvTitle:Landroid/widget/TextView;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->mSystemMsgAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->mRvMsgList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->mRvMsgList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->mSystemMsgAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity$SystemMsgAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->mRvMsgList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->instance()Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    move-result-object v0

    invoke-static {v3, v3}, Lcom/ifengyu/im/protobuf/helper/EntityChangeEngine;->getSessionKey(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->readUnreadSession(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$initData$1$SystemMsgActivity(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method final synthetic lambda$initListener$2$SystemMsgActivity(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SystemMsgActivity;->finish()V

    return-void
.end method
