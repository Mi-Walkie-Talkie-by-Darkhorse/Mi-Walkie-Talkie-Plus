.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
.source "SeeRoomMemberFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;
    }
.end annotation


# static fields
.field public static final REQUEST_ADD_MEMBER:I = 0x10

.field public static final REQUEST_DELETE_MEMBER:I = 0x11


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

.field private mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;

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

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mGroupMembers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->searchEntityLists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSessionId:I

    return v0
.end method

.method static final synthetic lambda$showUserInfoDialog$1$SeeRoomMemberFragment(ZLcom/ifengyu/im/DB/entity/UserEntity;Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/event/ChatEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/ChatEvent$Event;->START_CHAT:Lcom/ifengyu/im/imservice/event/ChatEvent$Event;

    invoke-direct {v1, v2, p1}, Lcom/ifengyu/im/imservice/event/ChatEvent;-><init>(Lcom/ifengyu/im/imservice/event/ChatEvent$Event;Lcom/ifengyu/im/DB/entity/UserEntity;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static newInstance(I)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private openKickoutUserUI()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSessionId:I

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->newInstance(I)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectDelMemberFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->startFragment(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V

    return-void
.end method

.method private refreshUI()V
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->findGroup(I)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getCreatorId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSessionId:I

    invoke-virtual {v2, v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getGroupMembers(I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mGroupMembers:Ljava/util/List;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mGroupMembers:Ljava/util/List;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mTvTitle:Landroid/widget/TextView;

    const-string v3, "\u7fa4\u7ec4\u6210\u5458\uff08%s\uff09"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mGroupMembers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-direct {v2}, Lcom/ifengyu/im/DB/entity/UserEntity;-><init>()V

    invoke-virtual {v2, v7}, Lcom/ifengyu/im/DB/entity/UserEntity;->setItemType(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mGroupMembers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v1, v0, :cond_1

    new-instance v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setItemType(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mGroupMembers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mGroupMembers:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0
.end method

.method private searchEntityLists(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->getSearchContactList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method private showUserInfoDialog(Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v3

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->TAG:Ljava/lang/String;

    const-string v1, "my user info is null, please check whether to login success"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-ne v3, v0, :cond_1

    move v0, v1

    :goto_1
    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->mainName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v3

    const-string v4, "ID:%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->peerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setSubTitle(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/ifengyu/im/DB/entity/UserEntity;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setImageUrl(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v2

    if-eqz v0, :cond_2

    const v1, 0x7f090075

    :goto_2
    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$$Lambda$1;

    invoke-direct {v3, v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$$Lambda$1;-><init>(ZLcom/ifengyu/im/DB/entity/UserEntity;)V

    invoke-virtual {v2, v1, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->show()Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const v1, 0x7f090043

    goto :goto_2
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f04009e

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mGroupMembers:Ljava/util/List;

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

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getItemType()I

    move-result v3

    if-nez v3, :cond_0

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

    if-eqz p1, :cond_0

    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSessionId:I

    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->refreshUI()V

    return-void
.end method

.method protected initWidget(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mTitleBar:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v3, Lcom/ifengyu/library/widget/recyclerview/b/a;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/ifengyu/library/widget/recyclerview/b/a;-><init>(IIZ)V

    invoke-virtual {v2, v3}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mLlNoSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->setOnItemClickListener(Lcom/ifengyu/intercom/ui/imui/base/BaseRecyclerAdapter$a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSearchEditText:Lcom/ifengyu/library/widget/view/ClearEditText;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ClearEditText;->setHint(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSearchEditText:Lcom/ifengyu/library/widget/view/ClearEditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method final synthetic lambda$initWidget$0$SeeRoomMemberFragment(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->popBackStack()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->refreshUI()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->refreshUI()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSearchAdapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment$SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->showUserInfoDialog(Lcom/ifengyu/im/DB/entity/UserEntity;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->mSessionId:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/InviteContactActivity;->start(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SeeRoomMemberFragment;->openKickoutUserUI()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
