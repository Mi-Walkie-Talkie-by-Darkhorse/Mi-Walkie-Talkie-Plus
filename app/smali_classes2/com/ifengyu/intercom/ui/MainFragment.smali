.class public Lcom/ifengyu/intercom/ui/MainFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/MainFragment$b;
    }
.end annotation


# instance fields
.field public final A:[I

.field public final B:[Ljava/lang/String;

.field mTabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090086
    .end annotation
.end field

.field viewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020c
    .end annotation
.end field

.field public final z:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/MainFragment;->z:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainFragment;->A:[I

    const v0, 0x7f03000b

    .line 4
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/MainFragment;->B:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f08023b
        0x7f08023d
        0x7f08023f
    .end array-data

    :array_1
    .array-data 4
        0x7f08023c
        0x7f08023e
        0x7f080240
    .end array-data
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/MainFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/MainFragment;->h3(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method private h3(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f09027a

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090502

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/MainFragment;->A:[I

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    aget p1, p2, p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f06019c

    .line 6
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/MainFragment;->z:[I

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    aget p1, p2, p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f060029

    .line 8
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private j3()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Landroidx/fragment/app/Fragment;

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->c4()Lcom/ifengyu/intercom/ui/base/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->x3()Lcom/ifengyu/intercom/ui/base/k;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->D3()Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;

    move-result-object v5

    aput-object v5, v1, v2

    .line 3
    new-instance v2, Lcom/ifengyu/intercom/ui/MainFragment$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lcom/ifengyu/intercom/ui/MainFragment$b;-><init>(Landroidx/fragment/app/FragmentActivity;[Landroidx/fragment/app/Fragment;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setSaveEnabled(Z)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/MainFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/MainFragment$a;-><init>(Lcom/ifengyu/intercom/ui/MainFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 11
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/ifengyu/intercom/ui/a;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/a;-><init>(Lcom/ifengyu/intercom/ui/MainFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method private synthetic k3(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/MainFragment;->i3(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/MainFragment;->j3()V

    return-object v0
.end method

.method public i3(I)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09027a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090502

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/MainFragment;->z:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/MainFragment;->B:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public synthetic l3(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/MainFragment;->k3(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method
