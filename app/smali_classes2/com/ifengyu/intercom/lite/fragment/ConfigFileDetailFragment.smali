.class public Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;
.super Lcom/ifengyu/intercom/lite/base/e;
.source "ConfigFileDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/lite/h/h0;

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

.field private z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private A()Lcom/ifengyu/intercom/lite/models/ConfigFileModel;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "config_file"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/l;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v1

    const v2, 0x7f11018f

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c(II)Landroid/widget/Button;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06018c

    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/j;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private C()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->A()Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/lite/base/recycler/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/ifengyu/intercom/lite/base/recycler/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method private D()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->c()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$a;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/g0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/g0;

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/g0;->c()Landroidx/lifecycle/p;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$b;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->A()Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/h/g0;->b(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110190

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/k;->a:Lcom/ifengyu/intercom/lite/fragment/k;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/i;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)V

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

.method public static a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;
    .locals 3

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "config_file"

    .line 5
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/base/e;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->z:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/base/e;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->A()Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    .line 10
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/lite/h/h0;->a(Ljava/lang/Long;)V

    .line 11
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object p2

    const-string v0, "userId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Lite_ImportClick_FromConfigDetail"

    invoke-static {p2, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void
.end method

.method public synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->E()V

    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->B()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->C()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->D()V

    return-object v0
.end method
