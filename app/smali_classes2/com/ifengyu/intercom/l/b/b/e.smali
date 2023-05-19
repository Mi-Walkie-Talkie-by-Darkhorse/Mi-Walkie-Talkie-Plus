.class public Lcom/ifengyu/intercom/l/b/b/e;
.super Landroidx/fragment/app/DialogFragment;
.source "Mi3AddListenChDialogFragment.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1100a2

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f110090

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/b/e;->a:[Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/l/b/b/e;->b:I

    return-void
.end method

.method private synthetic B1(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_ADD_CH_TO_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTION_UPDATE_CH_TO_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-void
.end method

.method static synthetic D1(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private x1(Lcom/ifengyu/intercom/l/b/b/d;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/b/d;->E()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/b/d;->F()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lcom/ifengyu/intercom/l/b/b/e;->b:I

    invoke-static {v3}, Lcom/ifengyu/intercom/l/b/c/s1;->s3(I)Lcom/ifengyu/intercom/l/b/c/s1;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/ifengyu/intercom/l/b/b/e;->b:I

    invoke-static {v3}, Lcom/ifengyu/intercom/l/b/c/q1;->v3(I)Lcom/ifengyu/intercom/l/b/c/q1;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5
    new-instance v2, Lcom/ifengyu/intercom/l/b/c/j1;

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/l/b/c/j1;-><init>(Landroidx/fragment/app/Fragment;[Landroidx/fragment/app/Fragment;)V

    .line 6
    invoke-virtual {p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v2, Lcom/ifengyu/intercom/l/b/b/a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/b/a;-><init>(Lcom/ifengyu/intercom/l/b/b/e;)V

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 8
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    :cond_1
    :goto_0
    return-void
.end method

.method private y1()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/b/e/u;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->y()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/b/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/b/b;-><init>(Lcom/ifengyu/intercom/l/b/b/e;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method private synthetic z1(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/l/b/b/e;->w1(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method public synthetic A1(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/b/e;->z1(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public synthetic C1(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/b/e;->B1(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/ifengyu/intercom/l/b/b/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ifengyu/intercom/l/b/b/d;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/ifengyu/intercom/l/b/b/d;

    .line 3
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/ifengyu/intercom/l/b/b/d;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->v(F)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/ifengyu/intercom/l/b/b/d;

    sget-object v0, Lcom/ifengyu/intercom/l/b/b/c;->a:Lcom/ifengyu/intercom/l/b/b/c;

    const/4 v1, 0x0

    const v2, 0x7f1100bd

    const/4 v3, 0x2

    .line 5
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/ifengyu/intercom/l/b/b/d;

    const v0, 0x7f120100

    .line 6
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/b/e;->y1()V

    .line 8
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/b/e;->x1(Lcom/ifengyu/intercom/l/b/b/d;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/l/a/d/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public w1(I)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060067

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/l/b/b/e;->a:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x11

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method
