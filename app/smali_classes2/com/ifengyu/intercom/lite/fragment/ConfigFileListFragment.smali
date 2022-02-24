.class public Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;
.super Lcom/ifengyu/intercom/lite/base/e;
.source "ConfigFileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;
    }
.end annotation


# instance fields
.field private A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Lcom/ifengyu/intercom/lite/h/g0;

.field private E:Lcom/ifengyu/intercom/lite/h/h0;

.field mBtnBackup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090093
    .end annotation
.end field

.field mBtnDelete:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090096
    .end annotation
.end field

.field mBtnImport:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009b
    .end annotation
.end field

.field mBtnRename:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a3
    .end annotation
.end field

.field mClOperationPanel:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900dc
    .end annotation
.end field

.field mEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090157
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090339
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->D:Lcom/ifengyu/intercom/lite/h/g0;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/lite/h/g0;->a(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->g()V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->a(Z)V

    const v0, 0x7f1100d7

    .line 5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/lite/base/e;->b(I)V

    return-void
.end method

.method private B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11017f

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v1

    const v2, 0x7f1102c0

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a(II)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C:Landroid/widget/Button;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06018b

    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v1

    const v2, 0x7f1100a2

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c(II)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->B:Landroid/widget/Button;

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->B:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06018c

    invoke-static {v2, v3}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/w;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/w;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C:Landroid/widget/Button;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/s;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/s;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->B:Landroid/widget/Button;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/v;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private C()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnBackup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnBackup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/x;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/x;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/ifengyu/intercom/lite/base/recycler/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/ifengyu/intercom/lite/base/recycler/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/lite/widget/a;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->a(F)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/lite/widget/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/p;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->setOnItemClickListener(Lcom/ifengyu/intercom/lite/base/recycler/c$a;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/r;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->setOnItemLongClickListener(Lcom/ifengyu/intercom/lite/base/recycler/c$b;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$b;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->L()V

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->K()V

    .line 12
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->M()V

    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/g0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/g0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->D:Lcom/ifengyu/intercom/lite/h/g0;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/g0;->b()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/a0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/a0;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->D:Lcom/ifengyu/intercom/lite/h/g0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/g0;->d()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/q;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 4
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->E:Lcom/ifengyu/intercom/lite/h/h0;

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->f()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/u;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/u;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->E:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->c()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$a;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->D:Lcom/ifengyu/intercom/lite/h/g0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/g0;->e()V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->E:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->m()V

    return-void
.end method

.method private E()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->E:Lcom/ifengyu/intercom/lite/h/h0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/h/h0;->b(I)V

    return-void
.end method

.method private F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->c()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->getItemCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C:Landroid/widget/Button;

    const v1, 0x7f1102c2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->b()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C:Landroid/widget/Button;

    const v1, 0x7f1102c0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->b()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private G()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11017a

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/o;->a:Lcom/ifengyu/intercom/lite/fragment/o;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/y;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/y;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    const v3, 0x7f11009c

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private H()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    .line 4
    new-instance v3, Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ifengyu/intercom/lite/c/b/d;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    const v5, 0x7f1102a4

    .line 6
    invoke-virtual {v3, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v5, v3

    check-cast v5, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v6, 0x7f110279

    .line 7
    invoke-virtual {v5, v6}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->e(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 8
    invoke-virtual {v5, v4}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 9
    invoke-virtual {v5, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v6, 0x7f110093

    const/4 v7, 0x2

    new-instance v8, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$d;

    invoke-direct {v8, p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$d;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    .line 10
    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v5, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v6, 0x7f11009c

    new-instance v7, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;

    invoke-direct {v7, p0, v3, v4, v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;Lcom/ifengyu/intercom/lite/c/b/d;Ljava/lang/String;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V

    .line 11
    invoke-virtual {v5, v1, v6, v1, v7}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v5, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v0, 0x7f1200fc

    .line 12
    invoke-virtual {v5, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 13
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->e()Landroid/widget/EditText;

    move-result-object v0

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 14
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->e()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private I()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11017c

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/t;->a:Lcom/ifengyu/intercom/lite/fragment/t;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/z;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/z;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    const v3, 0x7f11009c

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private J()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110190

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/n;->a:Lcom/ifengyu/intercom/lite/fragment/n;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/m;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/m;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    const v3, 0x7f11009c

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private K()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->b()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    const v1, 0x7f0e000a

    const v2, 0x7f11017e

    .line 10
    invoke-static {v2}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11017d

    .line 11
    invoke-static {v3}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/lite/widget/EmptyView;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private L()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->c()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnRename:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setEnabled(Z)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnImport:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    if-ne v0, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setEnabled(Z)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnDelete:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setEnabled(Z)V

    return-void
.end method

.method private M()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->c()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f110180

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C:Landroid/widget/Button;

    const v1, 0x7f1102c2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C:Landroid/widget/Button;

    const v1, 0x7f1102c0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11017f

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/base/e;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->a(Z)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->a(ILjava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 30
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->K()V

    const p1, 0x7f11016a

    .line 31
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/base/e;->b(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110169

    .line 32
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/base/e;->a(I)V

    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;->a(Z)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->B:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnBackup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    if-nez p1, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mClOperationPanel:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_5

    const p1, 0x7f0900dc

    goto :goto_5

    :cond_5
    const p1, 0x7f090093

    .line 21
    :goto_5
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->L()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/base/e;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->K()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/base/e;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->M()V

    return-void
.end method

.method static synthetic d(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    return-object p0
.end method

.method static synthetic e(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)Lcom/ifengyu/intercom/lite/h/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->D:Lcom/ifengyu/intercom/lite/h/g0;

    return-object p0
.end method

.method static synthetic f(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public static newInstance()Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;ILcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/base/recycler/c;->c(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->c()I

    move-result p1

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/base/recycler/c;->getItemCount()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C:Landroid/widget/Button;

    const p2, 0x7f1102c2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C:Landroid/widget/Button;

    const p2, 0x7f1102c0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p3}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;)I

    :goto_0
    return-void
.end method

.method public synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;->h()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->a(Z)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/base/recycler/c;->c(I)V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->E()V

    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object p2

    const-string v0, "userId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Lite_BackupClick_FromConfig"

    invoke-static {p2, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic a(Ljava/util/List;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void
.end method

.method public synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->A()V

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    const p1, 0x7f110169

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/base/e;->a(I)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;-><init>()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setCreateTime(J)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setUpdateTime(J)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->E:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/h/h0;->h()Landroidx/lifecycle/p;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setFrom(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setChannelModelList(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->D:Lcom/ifengyu/intercom/lite/h/g0;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/h/g0;->a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V

    return-void
.end method

.method public synthetic c(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->F()V

    return-void
.end method

.method public synthetic c(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->d()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const p1, 0x7f110191

    .line 7
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    .line 9
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->a(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->E:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/lite/h/h0;->a(Ljava/lang/Long;)V

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object p2

    const-string v0, "userId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Lite_ImportClick_FromConfigList"

    invoke-static {p2, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic d(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->a(Z)V

    return-void
.end method

.method public synthetic e(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->G()V

    return-void
.end method

.method protected o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->a(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->o()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a3,
            0x7f09009b,
            0x7f090096
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090096

    if-eq p1, v0, :cond_2

    const v0, 0x7f09009b

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900a3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->H()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->J()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->I()V

    :goto_0
    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->B()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->C()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->D()V

    return-object v0
.end method
