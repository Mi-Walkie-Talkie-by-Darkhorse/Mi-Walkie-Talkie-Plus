.class public Lcom/ifengyu/intercom/l/b/c/k1;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "Mi3AllChanelFragment.java"


# instance fields
.field protected A:Lcom/ifengyu/intercom/k/a;

.field private final z:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

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

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/k1;->z:[Ljava/lang/String;

    return-void
.end method

.method private h3()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/k1;->A:Lcom/ifengyu/intercom/k/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/a;->x:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/b;-><init>(Lcom/ifengyu/intercom/l/b/c/k1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/k1;->A:Lcom/ifengyu/intercom/k/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/a;->x:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11029e

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/k1;->A:Lcom/ifengyu/intercom/k/a;

    iget-object v1, v0, Lcom/ifengyu/intercom/k/a;->w:Lcom/google/android/material/tabs/TabLayout;

    .line 5
    iget-object v0, v0, Lcom/ifengyu/intercom/k/a;->y:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    const/16 v2, 0x69

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/fragment/app/Fragment;

    .line 7
    invoke-static {v2}, Lcom/ifengyu/intercom/l/b/c/s1;->s3(I)Lcom/ifengyu/intercom/l/b/c/s1;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v2}, Lcom/ifengyu/intercom/l/b/c/q1;->v3(I)Lcom/ifengyu/intercom/l/b/c/q1;

    move-result-object v2

    aput-object v2, v3, v4

    .line 8
    new-instance v2, Lcom/ifengyu/intercom/l/b/c/j1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/ifengyu/intercom/l/b/c/j1;-><init>(Landroidx/fragment/app/FragmentActivity;[Landroidx/fragment/app/Fragment;)V

    .line 9
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setSaveEnabled(Z)V

    .line 11
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v3, Lcom/ifengyu/intercom/l/b/c/a;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/l/b/c/a;-><init>(Lcom/ifengyu/intercom/l/b/c/k1;)V

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 12
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method private synthetic i3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic k3(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/l/b/c/k1;->g3(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method public static m3()Lcom/ifengyu/intercom/l/b/c/k1;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/c/k1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/b/c/k1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public E2()V
    .locals 0

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0049

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/k/a;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/k1;->A:Lcom/ifengyu/intercom/k/a;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ViewDataBinding;->A(Landroidx/lifecycle/j;)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/k1;->h3()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/k1;->A:Lcom/ifengyu/intercom/k/a;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g3(I)Landroid/view/View;
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
    iget-object v2, p0, Lcom/ifengyu/intercom/l/b/c/k1;->z:[Ljava/lang/String;

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

.method public synthetic j3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/k1;->i3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic l3(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/c/k1;->k3(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method
