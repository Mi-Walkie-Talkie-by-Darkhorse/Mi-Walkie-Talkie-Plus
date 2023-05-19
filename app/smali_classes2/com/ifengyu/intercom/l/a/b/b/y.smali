.class public abstract Lcom/ifengyu/intercom/l/a/b/b/y;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "BaseConfigFileDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/l/a/b/b/y$a;
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/k/e;

.field private B:Lcom/ifengyu/intercom/models/ConfigFileModel;

.field private C:Lcom/ifengyu/intercom/l/a/b/b/y$a;

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

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->z:[Ljava/lang/String;

    return-void
.end method

.method private h3()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->B:Lcom/ifengyu/intercom/models/ConfigFileModel;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->A:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/g;-><init>(Lcom/ifengyu/intercom/l/a/b/b/y;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->A:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1100d6

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->o(II)Landroid/widget/Button;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0601a0

    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/c;-><init>(Lcom/ifengyu/intercom/l/a/b/b/y;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->A:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->B:Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->B:Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getFromDeviceType()I

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/l/a/b/b/y$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/l/a/b/b/y$a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->C:Lcom/ifengyu/intercom/l/a/b/b/y$a;

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/base/recycler/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Lcom/ifengyu/intercom/device/lite/base/recycler/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->C:Lcom/ifengyu/intercom/l/a/b/b/y$a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    iget-object v1, v0, Lcom/ifengyu/intercom/k/e;->y:Lcom/google/android/material/tabs/TabLayout;

    .line 17
    iget-object v0, v0, Lcom/ifengyu/intercom/k/e;->z:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, -0x1

    .line 18
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    const/16 v2, 0x6a

    const/4 v5, 0x2

    new-array v5, v5, [Landroidx/fragment/app/Fragment;

    .line 19
    invoke-static {v2}, Lcom/ifengyu/intercom/l/b/c/s1;->s3(I)Lcom/ifengyu/intercom/l/b/c/s1;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2}, Lcom/ifengyu/intercom/l/b/c/q1;->v3(I)Lcom/ifengyu/intercom/l/b/c/q1;

    move-result-object v2

    aput-object v2, v5, v3

    .line 20
    new-instance v2, Lcom/ifengyu/intercom/l/b/c/j1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/ifengyu/intercom/l/b/c/j1;-><init>(Landroidx/fragment/app/FragmentActivity;[Landroidx/fragment/app/Fragment;)V

    .line 21
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setSaveEnabled(Z)V

    .line 23
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v3, Lcom/ifengyu/intercom/l/a/b/b/d;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/l/a/b/b/d;-><init>(Lcom/ifengyu/intercom/l/a/b/b/y;)V

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 24
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic j3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic l3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/y;->v3()V

    return-void
.end method

.method private synthetic n3(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/l/a/b/b/y;->g3(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method private synthetic p3(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->C:Lcom/ifengyu/intercom/l/a/b/b/y$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->t(Ljava/util/List;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->B:Lcom/ifengyu/intercom/models/ConfigFileModel;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setChannelModelList(Ljava/util/List;)V

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/models/ChannelModel;

    .line 8
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsRemoteCh()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v2, Lcom/ifengyu/intercom/device/common/event/ConfigFileEvent;

    invoke-direct {v2, v0, v1}, Lcom/ifengyu/intercom/device/common/event/ConfigFileEvent;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic r3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic s3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->B:Lcom/ifengyu/intercom/models/ConfigFileModel;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getChannelModelList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/y;->u3(Ljava/util/List;)V

    .line 5
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object p2

    const-string v0, "userId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->B:Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getFromDeviceType()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Lite_ImportClick_FromConfigDetail"

    invoke-static {p2, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xe

    if-ne p2, v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Mi3_ImportClick_FromConfigDetail"

    invoke-static {p2, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private v3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1101ff

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/l/a/b/b/f;->a:Lcom/ifengyu/intercom/l/a/b/b/f;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/e;-><init>(Lcom/ifengyu/intercom/l/a/b/b/y;)V

    const v3, 0x7f1100c6

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "config_file"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/models/ConfigFileModel;

    iput-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->B:Lcom/ifengyu/intercom/models/ConfigFileModel;

    :cond_0
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c008b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/k/e;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ViewDataBinding;->A(Landroidx/lifecycle/j;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/a/b/b/y;->i3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/y;->h3()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->A:Lcom/ifengyu/intercom/k/e;

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
    iget-object v2, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->z:[Ljava/lang/String;

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

.method protected i3()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FragmentLiveDataObserve"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/a/b/c/u;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->h()Landroidx/lifecycle/o;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/l/a/b/b/b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/a/b/b/b;-><init>(Lcom/ifengyu/intercom/l/a/b/b/y;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/y;->B:Lcom/ifengyu/intercom/models/ConfigFileModel;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/a/b/c/u;->U(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    :cond_0
    return-void
.end method

.method public synthetic k3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/y;->j3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/y;->l3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic o3(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/a/b/b/y;->n3(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public synthetic q3(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/y;->p3(Ljava/util/List;)V

    return-void
.end method

.method public synthetic t3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/a/b/b/y;->s3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected abstract u3(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation
.end method
