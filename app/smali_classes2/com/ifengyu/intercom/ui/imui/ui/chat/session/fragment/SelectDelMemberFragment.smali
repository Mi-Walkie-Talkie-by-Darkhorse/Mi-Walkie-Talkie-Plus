.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
.source "SelectDelMemberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;
    }
.end annotation


# instance fields
.field private mGroupMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation
.end field

.field mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b9
    .end annotation
.end field

.field mLlNoSearchResult:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100271
    .end annotation
.end field

.field mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100166
    .end annotation
.end field

.field private mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;

.field mSearchEditText:Lcom/ifengyu/library/widget/view/ClearEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100270
    .end annotation
.end field

.field private mSessionId:I

.field mTitleBar:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100097
    .end annotation
.end field

.field mTvRight:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001ba
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

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mGroupMembers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->searchEntityLists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->popBackStack()V

    return-void
.end method

.method private kickOutUsers()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->showTipDiaog()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSessionId:I

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;)V

    invoke-virtual {v0, v1, v4, v2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqkickOutUser(ILjava/util/List;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public static newInstance(I)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private searchEntityLists(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->getSearchContactList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f04009f

    return v0
.end method

.method public getSearchContactList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mGroupMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-static {p1, v0}, Lcom/ifengyu/im/utils/IMUIHelper;->handleContactSearch(Ljava/lang/String;Lcom/ifengyu/im/DB/entity/UserEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected initBundle(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->initBundle(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSessionId:I

    :cond_0
    return-void
.end method

.method protected initWidget(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mTitleBar:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mTvRight:Landroid/widget/TextView;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getGroupMembers(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mGroupMembers:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mGroupMembers:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mLlNoSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchEditText:Lcom/ifengyu/library/widget/view/ClearEditText;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ClearEditText;->setHint(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchEditText:Lcom/ifengyu/library/widget/view/ClearEditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchEditText:Lcom/ifengyu/library/widget/view/ClearEditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method final synthetic lambda$initWidget$0$SelectDelMemberFragment(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->popBackStack()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->kickOutUsers()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1001ba
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;->toggleSelect(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mTvRight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment$SearchAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
