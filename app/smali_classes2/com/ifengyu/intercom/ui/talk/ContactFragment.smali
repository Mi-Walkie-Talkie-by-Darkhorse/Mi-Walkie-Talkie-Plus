.class public Lcom/ifengyu/intercom/ui/talk/ContactFragment;
.super Lcom/ifengyu/intercom/ui/base/p;
.source "ContactFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/talk/d3/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/p<",
        "Lcom/ifengyu/intercom/ui/talk/d3/a;",
        "Lcom/ifengyu/intercom/ui/talk/c3/c0;",
        ">;",
        "Lcom/ifengyu/intercom/ui/talk/d3/a;"
    }
.end annotation


# instance fields
.field private C:Lcom/ifengyu/intercom/ui/talk/b3/a;

.field private D:Lcom/ifengyu/intercom/ui/talk/b3/a;

.field private E:Landroid/view/View;

.field private F:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/a;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/a;-><init>(Lcom/ifengyu/intercom/ui/talk/ContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->quickIndexBar:Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/ContactFragment$a;-><init>(Lcom/ifengyu/intercom/ui/talk/ContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->setOnLetterUpdateListener(Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;)V

    return-void
.end method

.method private E3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1100f5

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/d;-><init>(Lcom/ifengyu/intercom/ui/talk/ContactFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/c0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->w()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/talk/b3/a;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/a;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->B3()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->l(Landroid/view/View;)I

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/a;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->A3()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->i(Landroid/view/View;)I

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->k0(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->C3()V

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o3()V

    return-void
.end method

.method private synthetic F3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/a;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->Q3(Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->h3()V

    return-void
.end method

.method private synthetic H3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/f/a0;->a()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;->s3()Lcom/ifengyu/intercom/ui/talk/NewApplyFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic J3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->J3()Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic L3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/a;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->Q3(Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;)V

    return-void
.end method

.method private synthetic N3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o2()V

    return-void
.end method

.method public static P3()Lcom/ifengyu/intercom/ui/talk/ContactFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;-><init>()V

    return-object v0
.end method

.method private Q3(Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/shanlitech/et/model/User;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/User;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/ui/activity/UserInfoActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/User;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/models/DeviceModel;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/c0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e0(Lcom/ifengyu/intercom/models/DeviceModel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic z3(Lcom/ifengyu/intercom/ui/talk/ContactFragment;)Lcom/ifengyu/intercom/ui/base/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    return-object p0
.end method


# virtual methods
.method public A3()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c00d4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0904d7

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->F:Landroid/widget/TextView;

    return-object v0
.end method

.method public B3()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c00d5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0904b9

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->E:Landroid/view/View;

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/talk/f/a0;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0902a8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/c;-><init>(Lcom/ifengyu/intercom/ui/talk/ContactFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902a7

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/b;-><init>(Lcom/ifengyu/intercom/ui/talk/ContactFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected D3()Lcom/ifengyu/intercom/ui/talk/c3/c0;
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/c0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/talk/c3/c0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/c0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->h0()V

    return-void
.end method

.method public synthetic G3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->F3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic I3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->H3(Landroid/view/View;)V

    return-void
.end method

.method public J(Lcom/shanlitech/et/model/User;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/ui/activity/UserInfoActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/User;I)V

    return-void
.end method

.method public synthetic K3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->J3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic M3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->L3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic O3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->N3(Landroid/view/View;)V

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/c0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->y()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const v1, 0x7f1100f8

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v5, Lcom/ifengyu/intercom/ui/talk/c3/c0;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->y()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->E3()V

    return-object v0
.end method

.method public g1()V
    .locals 0

    return-void
.end method

.method protected i3()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/c0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/talk/b3/a;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/a;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/e;-><init>(Lcom/ifengyu/intercom/ui/talk/ContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method protected j3()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->rvContactList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected k3()Lcom/chad/library/adapter/base/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/a;

    return-object v0
.end method

.method protected l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    return-object v0
.end method

.method protected m3()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->rvSearchList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/o;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->u(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/ifengyu/library/event/SimpleEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/library/event/SimpleEvent;->getEvent()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->E:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->E:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected w3(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/c0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->J(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic y3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->D3()Lcom/ifengyu/intercom/ui/talk/c3/c0;

    move-result-object v0

    return-object v0
.end method
