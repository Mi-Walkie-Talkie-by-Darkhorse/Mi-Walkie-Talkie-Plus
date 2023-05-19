.class public abstract Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;
.super Lcom/ifengyu/intercom/ui/base/p;
.source "MemberAddBaseFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/talk/d3/d;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/p<",
        "Lcom/ifengyu/intercom/ui/talk/d3/d;",
        "Lcom/ifengyu/intercom/ui/talk/c3/f0;",
        ">;",
        "Lcom/ifengyu/intercom/ui/talk/d3/d;"
    }
.end annotation


# instance fields
.field private C:Lcom/ifengyu/intercom/ui/talk/b3/b;

.field private D:Lcom/ifengyu/intercom/ui/talk/b3/b;

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

.field quickIndexBar:Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09037c
    .end annotation
.end field

.field protected rvContactList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field rvSearchList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cf
    .end annotation
.end field

.field tvCenterIndex:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904bf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/p;-><init>()V

    return-void
.end method

.method private C3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/b;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/j1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/j1;-><init>(Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->quickIndexBar:Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment$a;-><init>(Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->setOnLetterUpdateListener(Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;)V

    return-void
.end method

.method private D3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->A3()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/i1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/i1;-><init>(Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1100ce

    const v2, 0x7f0902f9

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
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/g1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/g1;-><init>(Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->A()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/talk/b3/b;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/b;

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->B3()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->B3()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->l(Landroid/view/View;)I

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->k0(Z)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->C3()V

    .line 15
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o3()V

    return-void
.end method

.method private synthetic E3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->I()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p2, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->r0(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->h3()V

    return-void
.end method

.method private synthetic G3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->A()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p2, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->r0(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V

    return-void
.end method

.method private synthetic I3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o2()V

    return-void
.end method

.method private synthetic K3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->M()Ljava/util/ArrayList;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->M3()V

    return-void
.end method

.method static synthetic z3(Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;)Lcom/ifengyu/intercom/ui/base/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    return-object p0
.end method


# virtual methods
.method protected abstract A3()I
.end method

.method public B3()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E0([Lcom/shanlitech/et/model/FailUser;)V
    .locals 0

    return-void
.end method

.method public synthetic F3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->E3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic H3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->G3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic J3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->I3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic L3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->K3(Landroid/view/View;)V

    return-void
.end method

.method public M()V
    .locals 0

    return-void
.end method

.method protected abstract M3()V
.end method

.method public U0()V
    .locals 0

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const p1, 0x7f11036b

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a0()V
    .locals 0

    return-void
.end method

.method public b1()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public e1(Lcom/shanlitech/et/model/Group;)V
    .locals 0

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->D3()V

    return-object v0
.end method

.method protected i3()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->I()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/talk/b3/b;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/b;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/h1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/h1;-><init>(Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method protected j3()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected k3()Lcom/chad/library/adapter/base/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/b;

    return-object v0
.end method

.method protected l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    return-object v0
.end method

.method protected m3()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MemberAddBaseFragment;->rvSearchList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public n1([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onPause()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/talk/h/c;

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/f/c0;->removeListener(Lcom/ifengyu/talk/h/c;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/talk/h/f;

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/f/f0;->removeListener(Lcom/ifengyu/talk/h/f;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/talk/h/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/f/a0;->removeListener(Lcom/ifengyu/talk/h/a;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onResume()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/talk/h/c;

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/f/c0;->addListener(Lcom/ifengyu/talk/h/c;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/talk/h/f;

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/f/f0;->addListener(Lcom/ifengyu/talk/h/f;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/talk/h/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/f/a0;->addListener(Lcom/ifengyu/talk/h/a;)V

    return-void
.end method

.method public p0([Lcom/shanlitech/et/model/FailUser;)V
    .locals 0

    return-void
.end method

.method protected w3(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/f0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/f0;->Q(Ljava/lang/String;)V

    return-void
.end method
