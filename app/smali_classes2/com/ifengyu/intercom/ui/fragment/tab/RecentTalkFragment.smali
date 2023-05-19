.class public Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;
.super Lcom/ifengyu/intercom/ui/fragment/tab/i0;
.source "RecentTalkFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/fragment/tab/i0<",
        "Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;",
        "Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;",
        ">;",
        "Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;"
    }
.end annotation


# instance fields
.field private B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/c;

.field private C:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field curTalkStatus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09011f
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/i0;-><init>()V

    return-void
.end method

.method private l3()Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    const v3, 0x7f090199

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080165

    .line 5
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f110335

    .line 6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f110336

    .line 7
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    return-object v0
.end method

.method private synthetic o3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/talk/ContactFragment;->P3()Lcom/ifengyu/intercom/ui/talk/ContactFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic q3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;->y()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/models/RecentTalkModel;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/talk/TalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-direct {p2}, Lcom/ifengyu/talk/http/entity/TempGroup;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ifengyu/talk/http/entity/TempGroup;->setGid(J)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->setGname(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/ifengyu/intercom/ui/talk/TalkActivity;->O(Landroid/content/Context;Lcom/shanlitech/et/model/Group;Lcom/ifengyu/talk/http/entity/TempGroup;)V

    :goto_0
    return-void
.end method

.method private synthetic s3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/c;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->y3(Lcom/ifengyu/talk/models/RecentTalkModel;)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic u3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/MiTalkiApp;->E()V

    return-void
.end method

.method private synthetic v3([Ljava/lang/String;Lcom/ifengyu/talk/models/RecentTalkModel;Landroid/content/DialogInterface;I)V
    .locals 3

    const v0, 0x7f1100c1

    if-eqz p4, :cond_2

    const/4 v1, 0x1

    if-eq p4, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget-object p1, p1, p4

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->leave()Z

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;->w(Lcom/ifengyu/talk/models/RecentTalkModel;)V

    goto :goto_0

    .line 5
    :cond_2
    aget-object v1, p1, p4

    const v2, 0x7f110101

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->leave()Z

    goto :goto_0

    .line 7
    :cond_3
    aget-object v1, p1, p4

    const v2, 0x7f110100

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->join()Z

    goto :goto_0

    .line 9
    :cond_4
    aget-object p1, p1, p4

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;->w(Lcom/ifengyu/talk/models/RecentTalkModel;)V

    .line 11
    :cond_5
    :goto_0
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static x3()Lcom/ifengyu/intercom/ui/base/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;-><init>()V

    return-object v0
.end method

.method private y3(Lcom/ifengyu/talk/models/RecentTalkModel;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110101

    goto :goto_0

    :cond_0
    const v0, 0x7f110100

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f1100bd

    const/4 v3, 0x2

    const v4, 0x7f1100c1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    .line 4
    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v6

    .line 5
    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    move-object v0, v1

    .line 6
    :goto_2
    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/b$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$c;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qmuiteam/qmui/c/g;->g(Landroid/content/Context;)Lcom/qmuiteam/qmui/c/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->w(Lcom/qmuiteam/qmui/c/g;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/b$c;

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/f0;

    invoke-direct {v2, p0, v0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/f0;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;[Ljava/lang/String;Lcom/ifengyu/talk/models/RecentTalkModel;)V

    .line 8
    invoke-virtual {v1, v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$c;->G([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/b$c;

    const p1, 0x7f120100

    .line 9
    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;->J()V

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

    const v1, 0x7f0c00ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->n3()V

    return-object v0
.end method

.method protected bridge synthetic g3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->m3()Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;

    move-result-object v0

    return-object v0
.end method

.method protected m3()Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected n3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qmuiteam/qmui/util/k;->f(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/r;->a(Landroid/app/Activity;)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qmuiteam/qmui/util/k;->f(Landroid/content/Context;)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1103da

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0800c3

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/a0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/a0;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/f/a0;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080162

    goto :goto_1

    :cond_1
    const v1, 0x7f080161

    .line 7
    :goto_1
    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->C:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 9
    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/b0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/b0;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;->y()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/c;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/c;

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->l3()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/c;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/d0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/d0;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/c;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/e0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/e0;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/l/f;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->curTalkStatus:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/c0;->a:Lcom/ifengyu/intercom/ui/fragment/tab/c0;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->C:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const v0, 0x7f080161

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->C:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const v0, 0x7f080162

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic p3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->o3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic r3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->q3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic t3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->s3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public synthetic w3([Ljava/lang/String;Lcom/ifengyu/talk/models/RecentTalkModel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->v3([Ljava/lang/String;Lcom/ifengyu/talk/models/RecentTalkModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public y0(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->curTalkStatus:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->curTalkStatus:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public z0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
