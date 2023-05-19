.class public Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;
.super Lcom/ifengyu/intercom/ui/base/p;
.source "MemberRemoveFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/talk/d3/e;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/p<",
        "Lcom/ifengyu/intercom/ui/talk/d3/e;",
        "Lcom/ifengyu/intercom/ui/talk/c3/g0;",
        ">;",
        "Lcom/ifengyu/intercom/ui/talk/d3/e;"
    }
.end annotation


# instance fields
.field private C:Lcom/ifengyu/intercom/ui/talk/b3/i;

.field private D:Lcom/ifengyu/intercom/ui/talk/b3/i;

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

.field rvContactList:Landroidx/recyclerview/widget/RecyclerView;
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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110374

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/l1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/l1;-><init>(Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11033f

    const v2, 0x7f0902fb

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->o(II)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0600d5

    .line 5
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 7
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/o1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/o1;-><init>(Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/i;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->w()Ljava/util/ArrayList;

    move-result-object v1

    const v2, 0x7f0c00ea

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/b3/i;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/i;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->z3()V

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o3()V

    return-void
.end method

.method private synthetic C3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->y()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p2, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->R(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->h3()V

    return-void
.end method

.method private synthetic E3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->w()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p2, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->R(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V

    return-void
.end method

.method private synthetic G3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o2()V

    return-void
.end method

.method private synthetic I3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->A()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f1101e9

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->U()V

    return-void
.end method

.method private synthetic K3()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/arch/b;->p2(Ljava/lang/Class;)V

    return-void
.end method

.method public static M3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;-><init>()V

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

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/i;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/m1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/m1;-><init>(Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method


# virtual methods
.method protected A3()Lcom/ifengyu/intercom/ui/talk/c3/g0;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->E:Lcom/shanlitech/et/model/Group;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/c3/g0;-><init>(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->E:Lcom/shanlitech/et/model/Group;

    :cond_0
    return-void
.end method

.method public synthetic D3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->C3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->I()V

    return-void
.end method

.method public synthetic F3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->E3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic H3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->G3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic J3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->I3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic L3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->K3()V

    return-void
.end method

.method public W()V
    .locals 2

    const v0, 0x7f110341

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/n1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/n1;-><init>(Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->E:Lcom/shanlitech/et/model/Group;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00a9

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->B3()V

    return-object v0
.end method

.method protected i3()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/i;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->y()Ljava/util/ArrayList;

    move-result-object v1

    const v2, 0x7f0c00ea

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/b3/i;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/i;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/k1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/k1;-><init>(Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method protected j3()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected k3()Lcom/chad/library/adapter/base/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/i;

    return-object v0
.end method

.method protected l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    return-object v0
.end method

.method protected m3()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->rvSearchList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public u1()V
    .locals 1

    const v0, 0x7f110340

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method protected w3(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/g0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->B(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic y3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/MemberRemoveFragment;->A3()Lcom/ifengyu/intercom/ui/talk/c3/g0;

    move-result-object v0

    return-object v0
.end method
