.class public abstract Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;
.source "BaseSearchContactActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$ContactPageAdapter;,
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;,
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;
    }
.end annotation


# static fields
.field private static final TAB_TITLES:[Ljava/lang/CharSequence;


# instance fields
.field mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b9
    .end annotation
.end field

.field private mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

.field mNearbyContent:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100167
    .end annotation
.end field

.field mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100166
    .end annotation
.end field

.field mRvTopList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100164
    .end annotation
.end field

.field protected mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

.field mSearchContent:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100165
    .end annotation
.end field

.field mSearchView:Landroid/support/v7/widget/SearchView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e7
    .end annotation
.end field

.field mTabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000ca
    .end annotation
.end field

.field private mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

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

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100168
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "\u9644\u8fd1\u7684\u4eba"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8fd1\u671f\u8054\u7cfb\u4eba"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->TAB_TITLES:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;)Lcom/ifengyu/intercom/ui/imui/base/loading/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->TAB_TITLES:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private initSearchList()V
    .locals 5

    const/4 v3, 0x0

    const v0, 0x7f04005c

    sput v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->c:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchContent:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->a(Ljava/lang/Object;Lcom/ifengyu/intercom/ui/imui/base/loading/b;)Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mLoadingStateManager:Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;Landroid/content/Context;Ljava/util/List;Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$1;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initSearchView()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    return-void
.end method

.method private initTab()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;->newInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/NearbyFragment;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->newInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$ContactPageAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$ContactPageAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;Landroid/support/v4/app/FragmentManager;[Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    const v1, 0x7f0200d1

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initTopList()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;Landroid/content/Context;Ljava/util/List;Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mRvTopList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mRvTopList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private requestUserInfo(I)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->reqUserInfo(ILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method


# virtual methods
.method protected abstract getBarTitle()Ljava/lang/String;
.end method

.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f040044

    return v0
.end method

.method protected abstract getRightButtonText()Ljava/lang/String;
.end method

.method public getRvTopList()Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mRvTopList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopDispalyAdapter()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    return-object v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initListener()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$$Lambda$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$$Lambda$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$$Lambda$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getBarTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTvRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->getRightButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTvRight:Landroid/widget/TextView;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$$Lambda$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->initSearchView()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->initTopList()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->initSearchList()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->initTab()V

    return-void
.end method

.method final synthetic lambda$initListener$2$BaseSearchContactActivity(Landroid/view/View;I)V
    .locals 2

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->delete(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;->notifyDataSetChanged()V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$initListener$3$BaseSearchContactActivity(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->delete(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;->toggleSelect(I)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mRvTopList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mTopDisplayAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$TopDisplayAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method final synthetic lambda$initView$0$BaseSearchContactActivity(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->finish()V

    return-void
.end method

.method final synthetic lambda$initView$1$BaseSearchContactActivity(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->onRightButtonClick()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$SearchAdapter;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mNearbyContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    :cond_0
    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryTextSubmit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->requestUserInfo(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method protected abstract onRightButtonClick()V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    const-string v0, "text"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
