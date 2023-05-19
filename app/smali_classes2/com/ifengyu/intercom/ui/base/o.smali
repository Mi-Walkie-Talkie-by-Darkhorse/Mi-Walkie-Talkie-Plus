.class public abstract Lcom/ifengyu/intercom/ui/base/o;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "BaseSearchFragment.java"


# instance fields
.field protected A:Landroid/view/View;

.field protected z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/base/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/o;->p3()V

    return-void
.end method

.method private p3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->i3()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->z:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->q3()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->A:Landroid/view/View;

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->r3()V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/base/o$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/base/o$b;-><init>(Lcom/ifengyu/intercom/ui/base/o;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    return-void
.end method

.method private synthetic s3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->h3()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic u3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->h3()V

    return-void
.end method


# virtual methods
.method protected h3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->j3()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/d;->c(Landroid/view/View;Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected abstract i3()V
.end method

.method protected abstract j3()Landroid/view/View;
.end method

.method protected abstract k3()Lcom/chad/library/adapter/base/i;
.end method

.method protected abstract l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
.end method

.method protected abstract m3()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method protected n3(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const v0, 0x7f0601a2

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->A:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->m3()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f0601bd

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->k3()Lcom/chad/library/adapter/base/i;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/o;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/o;->w3(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected o2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->h3()V

    .line 2
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method protected o3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/base/o$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/base/o$a;-><init>(Lcom/ifengyu/intercom/ui/base/o;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;->setListener(Lcom/ifengyu/intercom/ui/widget/view/FixedEditText$a;)V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/base/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/base/h;-><init>(Lcom/ifengyu/intercom/ui/base/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/o;->l3()Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;->setListener(Lcom/ifengyu/intercom/ui/widget/view/FixedEditText$a;)V

    :cond_0
    return-void
.end method

.method protected q3()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->z:Landroid/widget/TextView;

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->z:Landroid/widget/TextView;

    const v1, 0x7f060029

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->z:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->z:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method protected r3()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->A:Landroid/view/View;

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->A:Landroid/view/View;

    const v1, 0x7f060185

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->A:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/base/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/base/i;-><init>(Lcom/ifengyu/intercom/ui/base/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic t3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/base/o;->s3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic v3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/base/o;->u3(Landroid/view/View;)V

    return-void
.end method

.method protected abstract w3(Ljava/lang/String;)V
.end method

.method protected x3(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/o;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
