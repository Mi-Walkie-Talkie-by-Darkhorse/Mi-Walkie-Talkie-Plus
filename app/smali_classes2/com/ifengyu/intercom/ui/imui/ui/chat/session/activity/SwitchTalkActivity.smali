.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;
.source "SwitchTalkActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;
    }
.end annotation


# instance fields
.field mEmptyLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10017b
    .end annotation
.end field

.field private mGroupAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;

.field mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b9
    .end annotation
.end field

.field mRvGroupList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10017c
    .end annotation
.end field

.field private mSessionId:I

.field mTitleBar:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100097
    .end annotation
.end field

.field mTvTalkGroupId:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10017a
    .end annotation
.end field

.field mTvTalkGroupName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100179
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mSessionId:I

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mSessionId:I

    return v0
.end method

.method private refreshCurrentUI()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->findGroup(I)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTalkGroupName:Landroid/widget/TextView;

    const-string v2, "%s\uff08%d\uff09"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUserCnt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTalkGroupId:Landroid/widget/TextView;

    const-string v2, "\u7fa4\u7ec4ID\uff1a%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTalkGroupName:Landroid/widget/TextView;

    const-string v1, "\u5f53\u524d\u7fa4\u7ec4\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTalkGroupId:Landroid/widget/TextView;

    const-string v1, "\u8fd8\u672a\u8bbe\u7f6e\u5f53\u524d\u7fa4\u7ec4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f04004c

    return v0
.end method

.method protected initData()V
    .locals 5

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->instance()Lcom/ifengyu/im/imservice/services/MessageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->getTalkGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mSessionId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->refreshCurrentUI()V

    invoke-static {}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->instance()Lcom/ifengyu/im/imservice/services/IMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->getRecentListInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    const-string v3, "1"

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "2"

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mGroupAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method protected initListener()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mGroupAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTitle:Landroid/widget/TextView;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mRvGroupList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mRvGroupList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mRvGroupList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mGroupAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method final synthetic lambda$initView$0$SwitchTalkActivity(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->finish()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mGroupAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getPeerId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mSessionId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mSessionId:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mGroupAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity$GroupAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->refreshCurrentUI()V

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->instance()Lcom/ifengyu/im/imservice/services/MessageService;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mSessionId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/services/MessageService;->setTalkGroupId(Ljava/lang/String;)V

    goto :goto_0
.end method
