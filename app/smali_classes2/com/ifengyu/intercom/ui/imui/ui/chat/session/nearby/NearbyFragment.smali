.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
.source "NearbyFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;
    }
.end annotation


# instance fields
.field mEmptyView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100237
    .end annotation
.end field

.field private mNearbyAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;

.field mRvNearbyList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100268
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refreshNearbyList()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mNearbyAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f040098

    return v0
.end method

.method protected initData()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/imservice/services/NearbyService;->instance()Lcom/ifengyu/im/imservice/services/NearbyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/NearbyService;->queryNearbyUser()V

    return-void
.end method

.method protected initWidget(Landroid/view/View;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;Landroid/content/Context;Ljava/util/List;Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$1;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mNearbyAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mRvNearbyList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mRvNearbyList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mRvNearbyList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mNearbyAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mNearbyAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mNearbyAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;->setSelectedItems(Ljava/util/List;)V

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

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/NearbyEvent;)V
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$1;->$SwitchMap$com$ifengyu$im$imservice$event$NearbyEvent$Event:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/NearbyEvent;->getEvent()Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/NearbyEvent;->getUserList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v3

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mNearbyAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/RefreshEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$1;->$SwitchMap$com$ifengyu$im$imservice$event$RefreshEvent:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/RefreshEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->refreshNearbyList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mNearbyAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

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
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->mNearbyAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment$NearbyAdapter;->toggleSelect(I)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_RECENT_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

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
