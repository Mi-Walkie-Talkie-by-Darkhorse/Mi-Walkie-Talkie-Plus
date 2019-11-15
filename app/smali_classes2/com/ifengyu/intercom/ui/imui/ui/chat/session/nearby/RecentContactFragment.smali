.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
.source "RecentContactFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;
    }
.end annotation


# instance fields
.field mEmptyView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100237
    .end annotation
.end field

.field private mRecentAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

.field mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100236
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRecentAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

    return-object v0
.end method

.method static final synthetic lambda$initData$0$RecentContactFragment(Lcom/ifengyu/im/DB/entity/GroupEntity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUserCnt()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final synthetic lambda$initData$1$RecentContactFragment(Lcom/ifengyu/im/DB/entity/GroupEntity;)Lio/reactivex/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getlistGroupMemberIds()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method static final synthetic lambda$initData$2$RecentContactFragment(Ljava/lang/Integer;)Lcom/ifengyu/im/DB/entity/UserEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->findContact(I)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f04009a

    return v0
.end method

.method protected initData()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->initData()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getAllGroupList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$$Lambda$0;->$instance:Lio/reactivex/b/p;

    invoke-virtual {v0, v2}, Lio/reactivex/k;->filter(Lio/reactivex/b/p;)Lio/reactivex/k;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$$Lambda$1;->$instance:Lio/reactivex/b/g;

    invoke-virtual {v0, v2}, Lio/reactivex/k;->flatMap(Lio/reactivex/b/g;)Lio/reactivex/k;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$$Lambda$2;->$instance:Lio/reactivex/b/g;

    invoke-virtual {v0, v2}, Lio/reactivex/k;->map(Lio/reactivex/b/g;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/e/a;->a()Lio/reactivex/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/a/b/a;->a()Lio/reactivex/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/k;->observeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lio/reactivex/k;->subscribe(Lio/reactivex/q;)V

    :cond_0
    return-void
.end method

.method protected initWidget(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->initWidget(Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;Landroid/content/Context;Ljava/util/List;Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$1;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRecentAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRecentAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRecentAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRecentAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;->setSelectedItems(Ljava/util/List;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onDestroy()V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/RefreshEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$2;->$SwitchMap$com$ifengyu$im$imservice$event$RefreshEvent:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/RefreshEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->refreshRecentList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRecentAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getTopDispalyAdapter()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->delete(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRecentAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;->toggleSelect(I)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_NEARBY_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->add(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getRvTopList()Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    move-result-object v0

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public refreshRecentList()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRecentAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment$RecentAdapter;->notifyDataSetChanged()V

    return-void
.end method
