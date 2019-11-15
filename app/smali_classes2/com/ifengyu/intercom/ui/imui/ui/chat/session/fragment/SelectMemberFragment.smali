.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
.source "SelectMemberFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_CREATOR_ID:Ljava/lang/String; = "creator_id"


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

.field private mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;

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

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mGroupMembers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->searchEntityLists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->popBackStack()V

    return-void
.end method

.method public static newInstance(I)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private searchEntityLists(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->getSearchContactList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method private showMakesureDialog(Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 5

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8f6c\u8ba9\u7fa4\u4e3b"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const-string v1, "\u786e\u5b9a\u9009\u62e9 %s \u4e3a\u65b0\u7fa4\u4e3b\uff0c\u4f60\u5c06\u81ea\u52a8\u653e\u5f03\u7fa4\u4e3b\u8eab\u4efd"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a$b;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;

    move-result-object v0

    const v1, 0x7f09006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    const v1, 0x7f090075

    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$$Lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$$Lambda$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;Lcom/ifengyu/im/DB/entity/UserEntity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a$b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/dialog/a$b;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a$b;->c()Lcom/ifengyu/library/widget/dialog/a;

    return-void
.end method

.method private transferCreator(Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->showTipDiaog()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSessionId:I

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v2

    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$3;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqTrandferCreator(IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mGroupMembers:Ljava/util/List;

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

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSessionId:I

    :cond_0
    return-void
.end method

.method protected initWidget(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mTitleBar:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getGroupMembers(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mGroupMembers:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mGroupMembers:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/imui/base/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mLlNoSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSearchEditText:Lcom/ifengyu/library/widget/view/ClearEditText;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ClearEditText;->setHint(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSearchEditText:Lcom/ifengyu/library/widget/view/ClearEditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSearchEditText:Lcom/ifengyu/library/widget/view/ClearEditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method final synthetic lambda$initWidget$0$SelectMemberFragment(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->popBackStack()V

    return-void
.end method

.method final synthetic lambda$showMakesureDialog$1$SelectMemberFragment(Lcom/ifengyu/im/DB/entity/UserEntity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->transferCreator(Lcom/ifengyu/im/DB/entity/UserEntity;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->showMakesureDialog(Lcom/ifengyu/im/DB/entity/UserEntity;)V

    return-void
.end method
