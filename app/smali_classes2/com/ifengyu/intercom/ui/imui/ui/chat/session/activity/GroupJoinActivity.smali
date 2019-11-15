.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;
.source "GroupJoinActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnCloseListener;
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;
    }
.end annotation


# instance fields
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

.field mLlContent:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e8
    .end annotation
.end field

.field private mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

.field mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e9
    .end annotation
.end field

.field private mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

.field mSearchView:Landroid/support/v7/widget/SearchView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e7
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

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)Lcom/ifengyu/intercom/ui/imui/base/loading/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    return-object v0
.end method

.method private showApplyJoinGroupDialog(Lcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 3

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7533\u8bf7\u52a0\u7fa4"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u786e\u8ba4\u52a0\u5165\u8be5\u7fa4\uff1f"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u7533\u8bf7"

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$$Lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$$Lambda$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f04002a

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initListener()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView;->setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f04005c

    sput v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->c:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mLlContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->a(Ljava/lang/Object;Lcom/ifengyu/intercom/ui/imui/base/loading/b;)Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4, v3}, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->b()V

    return-void
.end method

.method final synthetic lambda$initView$0$GroupJoinActivity(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->finish()V

    return-void
.end method

.method final synthetic lambda$showApplyJoinGroupDialog$1$GroupJoinActivity(Lcom/ifengyu/im/DB/entity/GroupEntity;Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v1, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->peerId:I

    iget v2, p1, Lcom/ifengyu/im/DB/entity/GroupEntity;->creatorId:I

    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$1;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqApplyJoinGroup(IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClose()Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClose:"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/GroupEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->hideTipDialog()V

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$3;->$SwitchMap$com$ifengyu$im$imservice$event$GroupEvent$Event:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupEvent;->getEvent()Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupEvent;->getGroupEntity()Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query group result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupEvent;->getGroupEntity()Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;->clear()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->c()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->c()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->showApplyJoinGroupDialog(Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$SearchAdapter;->clear()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryTextSubmit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->showTipDiaog()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqGroupDetailInfo(IZLcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    const-string v0, "text"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
