.class public Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;
.super Lcom/ifengyu/intercom/ui/base/p;
.source "GroupAllMemberFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/talk/d3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/p<",
        "Lcom/ifengyu/intercom/ui/talk/d3/b;",
        "Lcom/ifengyu/intercom/ui/talk/c3/d0;",
        ">;",
        "Lcom/ifengyu/intercom/ui/talk/d3/b;"
    }
.end annotation


# instance fields
.field private C:Lcom/ifengyu/intercom/ui/talk/b3/h;

.field private D:Lcom/ifengyu/intercom/ui/talk/b3/g;

.field private E:Lcom/shanlitech/et/model/Group;

.field etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901bc
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field rvSearchList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/p;-><init>()V

    return-void
.end method

.method private B3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->E:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v3}, Lcom/shanlitech/et/model/Group;->getAllMemberCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f1101df

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/v;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/h;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/d0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/d0;->w()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/talk/b3/h;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/h;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/h;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->z3()V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o3()V

    return-void
.end method

.method private synthetic C3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/g;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result p2

    const/16 p3, 0x3e9

    if-ne p2, p3, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p1

    const/4 p3, 0x3

    invoke-static {p2, p1, p3}, Lcom/ifengyu/intercom/ui/activity/UserInfoActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/User;I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->h3()V

    return-void
.end method

.method private synthetic E3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/d0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/d0;->w()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->E:Lcom/shanlitech/et/model/Group;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->M3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->E:Lcom/shanlitech/et/model/Group;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/y2;->T3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/y2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p1

    const/4 p3, 0x3

    invoke-static {p2, p1, p3}, Lcom/ifengyu/intercom/ui/activity/UserInfoActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/User;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic G3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o2()V

    return-void
.end method

.method public static I3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_group"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private z3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/h;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/u;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/u;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method


# virtual methods
.method protected A3()Lcom/ifengyu/intercom/ui/talk/c3/d0;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->E:Lcom/shanlitech/et/model/Group;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/c3/d0;-><init>(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    return-object v0
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_group"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Group;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->E:Lcom/shanlitech/et/model/Group;

    :cond_0
    return-void
.end method

.method public synthetic D3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->C3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/d0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/d0;->N()V

    return-void
.end method

.method public synthetic F3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->E3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic H3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->G3(Landroid/view/View;)V

    return-void
.end method

.method public X()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/h;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->E:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getAllMemberCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1101df

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const p1, 0x7f11036c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/o;->x3(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public c(Lcom/shanlitech/et/model/Group;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->E:Lcom/shanlitech/et/model/Group;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getAllMemberCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f1101df

    invoke-static {p1, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->E2()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->E:Lcom/shanlitech/et/model/Group;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0099

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->B3()V

    return-object v0
.end method

.method protected i3()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/g;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/d0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/d0;->y()Ljava/util/ArrayList;

    move-result-object v1

    const v2, 0x7f0c00d3

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/b3/g;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/g;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/w;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/w;-><init>(Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method protected j3()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected k3()Lcom/chad/library/adapter/base/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/g;

    return-object v0
.end method

.method protected l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    return-object v0
.end method

.method protected m3()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->rvSearchList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected w3(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/d0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/d0;->A(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic y3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/GroupAllMemberFragment;->A3()Lcom/ifengyu/intercom/ui/talk/c3/d0;

    move-result-object v0

    return-object v0
.end method
