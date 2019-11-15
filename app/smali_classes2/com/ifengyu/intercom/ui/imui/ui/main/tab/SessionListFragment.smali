.class public Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
.source "SessionListFragment.java"

# interfaces
.implements Lcom/ifengyu/library/widget/a/a$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;

.field private c:Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;

.field private d:Z

.field private e:Z

.field private f:Lcom/ifengyu/library/widget/recyclerview/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/library/widget/recyclerview/e/b",
            "<",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mDeviceStatusView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100232
    .end annotation
.end field

.field mDfTalkUnreadNumber:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100280
    .end annotation
.end field

.field mDisplayView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100230
    .end annotation
.end field

.field mEmptyView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100237
    .end annotation
.end field

.field mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b9
    .end annotation
.end field

.field mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001bb
    .end annotation
.end field

.field mItemTalkGroup:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10027a
    .end annotation
.end field

.field mIvAvatarNone:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10027c
    .end annotation
.end field

.field mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10027d
    .end annotation
.end field

.field mIvWarning:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10022f
    .end annotation
.end field

.field mNoNetworkView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10022e
    .end annotation
.end field

.field mReconnectProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100231
    .end annotation
.end field

.field mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100236
    .end annotation
.end field

.field mTitleBar:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100097
    .end annotation
.end field

.field mTvDeviceStatus:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100234
    .end annotation
.end field

.field mTvLeft:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b8
    .end annotation
.end field

.field mTvRight:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001ba
    .end annotation
.end field

.field mTvTalkDataTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10027f
    .end annotation
.end field

.field mTvTalkLastMsg:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100282
    .end annotation
.end field

.field mTvTalkNickName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100281
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;-><init>()V

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->d:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->e:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$6;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->f:Lcom/ifengyu/library/widget/recyclerview/e/b;

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)Lcom/ifengyu/library/widget/recyclerview/e/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->f:Lcom/ifengyu/library/widget/recyclerview/e/b;

    return-object v0
.end method

.method private a(Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 9

    const/4 v2, 0x1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getAllGroupList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v3

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v4

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v5

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUserCnt()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getlistGroupMemberIds()Ljava/util/Set;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    iget-object v2, v3, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqCreateTempGroup(Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/TeamMessageActivity;->start(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private a(Lcom/ifengyu/im/imservice/entity/RecentInfo;I)V
    .locals 3

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u4f1a\u8bdd"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u662f\u5426\u5220\u9664?"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u5220\u9664"

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/i;

    invoke-direct {v2, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/i;-><init>(Lcom/ifengyu/im/imservice/entity/RecentInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method static final synthetic a(Lcom/ifengyu/im/imservice/entity/RecentInfo;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->instance()Lcom/ifengyu/im/imservice/services/IMSessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->reqRemoveSession(Lcom/ifengyu/im/imservice/entity/RecentInfo;)V

    return-void
.end method

.method private a(Lcom/ifengyu/im/imservice/event/LoginEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->d:Z

    return-void
.end method

.method private a(Lcom/ifengyu/im/imservice/event/SocketEvent;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->e:Z

    invoke-static {p1}, Lcom/ifengyu/im/utils/IMUIHelper;->getSocketErrorTip(Lcom/ifengyu/im/imservice/event/SocketEvent;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    const-string v2, "login#errorTip:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Lcom/ifengyu/im/imservice/entity/RecentInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/entity/RecentInfo;I)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b:Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDfTalkUnreadNumber:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    if-lez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDfTalkUnreadNumber:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private b(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Z)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$4;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$4;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Z)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->rspApplyJoinGroup(Lcom/ifengyu/im/imservice/entity/ApplyNotify;ZLcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method private b(Lcom/ifengyu/im/imservice/entity/InviteNotify;Z)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$3;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Z)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->rspAcceptOrRejectGroupInvite(Lcom/ifengyu/im/imservice/entity/InviteNotify;ZLcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method private b(Lcom/ifengyu/im/imservice/event/LoginEvent;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_AUTH_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->g()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mNoNetworkView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDisplayView:Landroid/widget/TextView;

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mNoNetworkView:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/a;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->e:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->e:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDisplayView:Landroid/widget/TextView;

    const v1, 0x7f090154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_INNER_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    if-ne p1, v0, :cond_0

    invoke-static {p1}, Lcom/ifengyu/im/utils/IMUIHelper;->getLoginErrorTip(Lcom/ifengyu/im/imservice/event/LoginEvent;)I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->l()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isKickout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDisplayView:Landroid/widget/TextView;

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mNoNetworkView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mNoNetworkView:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/b;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDisplayView:Landroid/widget/TextView;

    const v1, 0x7f090154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00ec

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/ifengyu/library/widget/a/a;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Lcom/ifengyu/library/widget/a/a;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    const/high16 v0, 0x7f110000

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/a/a;->a(I)V

    invoke-virtual {v1, p0}, Lcom/ifengyu/library/widget/a/a;->setOnMenuItemClickListener(Lcom/ifengyu/library/widget/a/a$b;)V

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/a/a;->b()V

    return-void
.end method

.method private e()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/account/UserCache;->instance()Lcom/ifengyu/im/account/UserCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/account/UserCache;->clear()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->setKickout(Z)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logOut()V

    return-void
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4e0b\u7ebf\u901a\u77e5"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u60a8\u7684\u8d26\u53f7\u5df2\u5728\u5176\u4ed6\u8bbe\u5907\u767b\u5f55\uff0c\u662f\u5426\u91cd\u65b0\u767b\u5f55?"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Z)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Z)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u91cd\u65b0\u767b\u5f55"

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/c;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a(Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;)V

    return-void
.end method

.method private i()V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->c:Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->c:Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->f:Lcom/ifengyu/library/widget/recyclerview/e/b;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method private j()V
    .locals 3

    const/16 v2, 0x8

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setAdapter(Lcom/ifengyu/library/widget/groupicon/a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkNickName:Landroid/widget/TextView;

    const-string v1, "\u5f53\u524d\u7fa4\u7ec4\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkDataTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkLastMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setImagesData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvAvatarNone:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDfTalkUnreadNumber:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->setVisibility(I)V

    return-void
.end method

.method private k()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->isUserDataReady()Z

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->instance()Lcom/ifengyu/im/imservice/services/IMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->isSessionListReady()Z

    move-result v1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->isGroupReady()Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->instance()Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->getTotalUnreadCount()I

    move-result v1

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    const-string v2, "unread#total cnt %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->a(I)V

    invoke-static {}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->instance()Lcom/ifengyu/im/imservice/services/IMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->getRecentListInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTalk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkNickName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkDataTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getUpdateTime()J

    move-result-wide v4

    invoke-static {v4, v5, v7}, Lcom/ifengyu/library/util/k;->a(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkLastMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getLatestMsgData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getAvatar()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setImagesData(Ljava/util/List;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    invoke-virtual {v2, v6}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvAvatarNone:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getUnReadCnt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b(I)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->c:Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/adapter/RecentContactAdapter;->setNewData(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkNickName:Landroid/widget/TextView;

    const-string v2, "\u5f53\u524d\u7fa4\u7ec4\u4e3a\u7a7a"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkDataTime:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkLastMsg:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setImagesData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    invoke-virtual {v0, v8}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvAvatarNone:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v6}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b(I)V

    goto :goto_1
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    invoke-static {}, Lcom/ifengyu/library/util/a;->c()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const v0, 0x7f0900b5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b:Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$5;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$5;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b:Lcom/ifengyu/intercom/ui/imui/ui/chat/RecentContactsCallback;

    goto :goto_0
.end method

.method private n()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/library/util/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getRxPermissions()Lcom/tbruyelle/rxpermissions2/b;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/a;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/b;->b([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/j;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/b/f;)Lio/reactivex/disposables/b;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->o()V

    goto :goto_0
.end method

.method private o()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/qrcode/BaseScanActivity;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x63

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->f()V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->d(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/ifengyu/im/imservice/entity/ApplyNotify;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Z)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u7533\u8bf7\u52a0\u7fa4"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "%s\u8bf7\u6c42\u52a0\u5165%s\u7fa4\u804a\uff0c\u662f\u5426\u540c\u610f\uff1f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getReqUserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getGroupName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    const-string v1, "\u62d2\u7edd"

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/g;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/g;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Lcom/ifengyu/im/imservice/entity/ApplyNotify;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u540c\u610f"

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/h;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/h;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Lcom/ifengyu/im/imservice/entity/ApplyNotify;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method final synthetic a(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Z)V

    return-void
.end method

.method public a(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "%s\u5df2\u540c\u610f\u4f60\u52a0\u5165%s\u7fa4\u804a"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getCreatorId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getGroupName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "%s\u5df2\u62d2\u7edd\u4f60\u52a0\u5165%s\u7fa4\u804a"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getCreatorId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getGroupName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    const-string v3, "\u63d0\u793a"

    invoke-virtual {v0, v3}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1, v6}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, v6}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public a(Lcom/ifengyu/im/imservice/entity/InviteNotify;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Z)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u7fa4\u804a\u9080\u8bf7"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "%s\u9080\u8bf7\u60a8\u52a0\u5165%s\u7fa4\u804a\uff0c\u662f\u5426\u63a5\u53d7\uff1f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getReqUserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getGroupName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    const-string v1, "\u62d2\u7edd"

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/e;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/e;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Lcom/ifengyu/im/imservice/entity/InviteNotify;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u63a5\u53d7"

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/f;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/f;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Lcom/ifengyu/im/imservice/entity/InviteNotify;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method final synthetic a(Lcom/ifengyu/im/imservice/entity/InviteNotify;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b(Lcom/ifengyu/im/imservice/entity/InviteNotify;Z)V

    return-void
.end method

.method public a(Lcom/ifengyu/im/imservice/entity/InviteNotify;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "%s\u5df2\u63a5\u53d7\u52a0\u5165%s\u7fa4\u804a"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getInvitedUserName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getGroupName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "%s\u5df2\u62d2\u7edd\u52a0\u5165%s\u7fa4\u804a"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getInvitedUserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getGroupName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    const-string v3, "\u63d0\u793a"

    invoke-virtual {v0, v3}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1, v6}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, v6}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method final synthetic a(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android:camera"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->o()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u5728\u5b89\u5168\u4e2d\u5fc3-\u6388\u6743\u7ba1\u7406-\u5e94\u7528\u6743\u9650\u7ba1\u7406-\u6781\u8702\u5bf9\u8bb2\u4e2d\u5f00\u542f\u76f8\u673a\u6743\u9650\uff0c\u4ee5\u6b63\u5e38\u4f7f\u7528\u76f8\u673a\u529f\u80fd"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/a/a;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u5728\u8bbe\u7f6e-\u5e94\u7528-\u6781\u8702\u5bf9\u8bb2-\u6743\u9650\u4e2d\u5f00\u542f\u76f8\u673a\u6743\u9650\uff0c\u4ee5\u6b63\u5e38\u4f7f\u7528\u76f8\u673a\u529f\u80fd"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/CreateGroupActivity;->start(Landroid/content/Context;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/services/NearbyService;->instance()Lcom/ifengyu/im/imservice/services/NearbyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/NearbyService;->queryNearbyUser()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->n()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100368
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$7;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$7;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    const-string v1, "noNetworkView clicked"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/im/utils/NetworkUtil;->isNetWorkAvalible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->e:Z

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->relogin()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f090156

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    goto :goto_0
.end method

.method final synthetic b(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Z)V

    return-void
.end method

.method final synthetic b(Lcom/ifengyu/im/imservice/entity/InviteNotify;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b(Lcom/ifengyu/im/imservice/entity/InviteNotify;Z)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$8;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$8;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic c(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    const-string v1, "noNetworkView clicked"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/im/utils/NetworkUtil;->isNetWorkAvalible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->relogin()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f090156

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->c(I)V

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f040091

    return v0
.end method

.method protected initData()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->initData()V

    return-void
.end method

.method protected initWidget(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTitleBar:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTitle:Landroid/widget/TextView;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/d;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->m()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->j()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->i()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->h()V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100232,
            0x7f100235,
            0x7f10027a,
            0x7f1001bb
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0900b5

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f09016e

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f09017a

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.FROM_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->instance()Lcom/ifengyu/im/imservice/services/MessageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->getTalkGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/TeamMessageActivity;->start(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->d(Landroid/view/View;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1001bb -> :sswitch_3
        0x7f100232 -> :sswitch_0
        0x7f100235 -> :sswitch_1
        0x7f10027a -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/ifengyu/im/imservice/event/ChatEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->i:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/ChatEvent;->getEvent()Lcom/ifengyu/im/imservice/event/ChatEvent$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/ChatEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/ChatEvent;->getUserEntity()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/DB/entity/UserEntity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/GroupEvent;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupEvent# -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->f:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupEvent;->getEvent()Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->k()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->k()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupEvent;->getGroupEntity()Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/TeamMessageActivity;->start(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupNotifyEvent# -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->d:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->getEvent()Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->getInvitedNotify()Lcom/ifengyu/im/imservice/entity/InviteNotify;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/entity/InviteNotify;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->getApplyNotify()Lcom/ifengyu/im/imservice/entity/ApplyNotify;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/entity/ApplyNotify;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->getApplyNotify()Lcom/ifengyu/im/imservice/entity/ApplyNotify;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->getApplyNotify()Lcom/ifengyu/im/imservice/entity/ApplyNotify;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Z)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->getInvitedNotify()Lcom/ifengyu/im/imservice/entity/InviteNotify;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/entity/InviteNotify;Z)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->getInvitedNotify()Lcom/ifengyu/im/imservice/entity/InviteNotify;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/entity/InviteNotify;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/LoginEvent;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    const-string v1, "LoginEvent# -> %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->a:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    const-string v1, "login#recv handleDoingLogin event"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDisplayView:Landroid/widget/TextView;

    const v1, 0x7f09011f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    const-string v1, "login#login OK"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->e:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mNoNetworkView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/ReconnectEvent;)V
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    const-string v1, "ReconnectEvent# -> %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->c:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/SessionEvent;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionEvent# -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->e:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/SessionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->k()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/SocketEvent;)V
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    const-string v1, "SocketEvent# -> %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->b:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/SocketEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->d()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->d()V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/im/imservice/event/SocketEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/UnreadEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->g:[I

    iget-object v1, p1, Lcom/ifengyu/im/imservice/event/UnreadEvent;->event:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->k()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/UserInfoEvent;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserInfoEvent# -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$9;->h:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->k()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDeviceStatusView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDeviceStatusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->l()V

    goto :goto_0
.end method
