.class public Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;
.super Lcom/ifengyu/intercom/ui/base/p;
.source "MyGroupFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/talk/d3/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/p<",
        "Lcom/ifengyu/intercom/ui/talk/d3/f;",
        "Lcom/ifengyu/intercom/ui/talk/c3/h0;",
        ">;",
        "Lcom/ifengyu/intercom/ui/talk/d3/f;"
    }
.end annotation


# instance fields
.field private C:Lcom/ifengyu/intercom/ui/talk/b3/j;

.field private D:Lcom/ifengyu/intercom/ui/talk/b3/j;

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

.field rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;
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

.method private A3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/j;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/p1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/p1;-><init>(Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method private C3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1102d3

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/q1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/q1;-><init>(Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/j;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/h0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/h0;->w()Lcom/shanlitech/et/model/GroupList;

    move-result-object v1

    const v2, 0x7f0c00f0

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/b3/j;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/j;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->z3()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/j;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->A3()V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o3()V

    return-void
.end method

.method private synthetic D3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/j;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Group;

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->h3()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/talk/TalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    return-void
.end method

.method private synthetic F3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/j;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Group;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/talk/TalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    return-void
.end method

.method private synthetic H3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->o2()V

    return-void
.end method

.method public static J3()Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected B3()Lcom/ifengyu/intercom/ui/talk/c3/h0;
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/talk/c3/h0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/h0;->B()V

    return-void
.end method

.method public synthetic E3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->D3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic G3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->F3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic I3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->H3(Landroid/view/View;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const p1, 0x7f11036d

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->C3()V

    return-object v0
.end method

.method protected i3()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/j;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/h0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/h0;->y()Lcom/shanlitech/et/model/GroupList;

    move-result-object v1

    const v2, 0x7f0c00f0

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/b3/j;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/j;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/r1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/r1;-><init>(Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    return-void
.end method

.method protected j3()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected k3()Lcom/chad/library/adapter/base/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->D:Lcom/ifengyu/intercom/ui/talk/b3/j;

    return-object v0
.end method

.method protected l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->etSearch:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    return-object v0
.end method

.method protected m3()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->rvSearchList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected w3(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/h0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/h0;->A(Ljava/lang/String;)V

    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic y3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->B3()Lcom/ifengyu/intercom/ui/talk/c3/h0;

    move-result-object v0

    return-object v0
.end method

.method public z3()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/MyGroupFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c007e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09019b

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0901a2

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080056

    .line 4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f1102e5

    .line 5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    return-object v0
.end method
