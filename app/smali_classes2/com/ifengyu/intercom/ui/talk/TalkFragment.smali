.class public Lcom/ifengyu/intercom/ui/talk/TalkFragment;
.super Lcom/ifengyu/intercom/ui/base/l;
.source "TalkFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/talk/d3/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/l<",
        "Lcom/ifengyu/intercom/ui/talk/d3/h;",
        "Lcom/ifengyu/intercom/ui/talk/c3/j0;",
        ">;",
        "Lcom/ifengyu/intercom/ui/talk/d3/h;"
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/view/View;

.field private E:Landroid/view/View;

.field private F:Landroid/widget/ProgressBar;

.field private G:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

.field private H:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

.field private I:Lcom/ifengyu/intercom/ui/talk/b3/l;

.field private J:Z

.field private K:Lcom/ifengyu/intercom/ui/talk/b3/m;

.field private L:Lcom/shanlitech/et/model/Group;

.field private M:Lcom/ifengyu/talk/http/entity/TempGroup;

.field private N:Lcom/ifengyu/library/utils/e;

.field private O:Landroid/widget/TextView;

.field private P:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field ivTalkTemporary:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027b
    .end annotation
.end field

.field llHoldOnToSpeak:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a2
    .end annotation
.end field

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field rvTopOnlineList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/l;-><init>()V

    return-void
.end method

.method private synthetic A3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->d2()V

    return-void
.end method

.method private synthetic C3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->D3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic E3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->s0()V

    return-void
.end method

.method private synthetic G3(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->H:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->H:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic I3(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->l3()V

    return-void
.end method

.method private K3()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->J:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->J:Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->F:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/p2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/p2;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private L3()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0101

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->d(I)Lcom/ifengyu/intercom/ui/widget/dialog/s;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a()Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->c()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090083

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->O:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->M3()V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/v2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/v2;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private M3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->N:Lcom/ifengyu/library/utils/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/TalkFragment$b;

    const-wide/16 v1, 0x3c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/TalkFragment$b;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->N:Lcom/ifengyu/library/utils/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->N:Lcom/ifengyu/library/utils/e;

    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->h()V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->K3()V

    return-void
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->O:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    return-object p0
.end method

.method static synthetic k3(Lcom/ifengyu/intercom/ui/talk/TalkFragment;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    return-object p1
.end method

.method private l3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->N:Lcom/ifengyu/library/utils/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->b()V

    :cond_0
    return-void
.end method

.method private m3()Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0106

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090489

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->A:Landroid/widget/TextView;

    const v1, 0x7f090453

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->B:Landroid/widget/TextView;

    const v1, 0x7f090068

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->C:Landroid/widget/ImageView;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->A:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/talk/d;->e(Lcom/shanlitech/et/model/Group;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->M:Lcom/ifengyu/talk/http/entity/TempGroup;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->A:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->B:Landroid/widget/TextView;

    const v2, 0x7f1101e5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->C:Landroid/widget/ImageView;

    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/t2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/t2;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private n3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    :cond_0
    return-void
.end method

.method private o3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->ivTalkTemporary:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/o2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/o2;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/r2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/r2;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/n2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/n2;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/l/b;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/TalkFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment$a;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    return-void
.end method

.method private p3()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c00fb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0904e6

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->D:Landroid/view/View;

    const v1, 0x7f0904e0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->E:Landroid/view/View;

    const v1, 0x7f090366

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->F:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private r3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->r(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->m3()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->setCenterView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f080151

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/u2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/u2;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f08012a

    .line 7
    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v3

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->P:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 9
    new-instance v2, Lcom/ifengyu/intercom/ui/talk/q2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/q2;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/l;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    move-object v3, v2

    check-cast v3, Lcom/ifengyu/intercom/ui/talk/c3/j0;

    check-cast v2, Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->O()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v3, v2}, Lcom/ifengyu/intercom/ui/talk/b3/l;-><init>(Landroidx/fragment/app/Fragment;Lcom/ifengyu/intercom/ui/talk/c3/j0;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->p3()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/chad/library/adapter/base/i;->m(Landroid/view/View;I)I

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/m;

    const v2, 0x7f0c00fc

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v3, Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->Q()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/ifengyu/intercom/ui/talk/b3/m;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->K:Lcom/ifengyu/intercom/ui/talk/b3/m;

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvTopOnlineList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvTopOnlineList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->K:Lcom/ifengyu/intercom/ui/talk/b3/m;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->o3()V

    .line 18
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I0()V

    return-void
.end method

.method private synthetic s3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvTopOnlineList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvTopOnlineList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->C:Landroid/widget/ImageView;

    const v0, 0x7f08005f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvTopOnlineList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvTopOnlineList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->C:Landroid/widget/ImageView;

    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic u3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;->O3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/SessionGroupSelectFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    :cond_0
    return-void
.end method

.method private synthetic w3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->releaseMic()Z

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/s;->b()Lcom/ifengyu/intercom/p/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/p/s;->d()V

    goto :goto_0

    :cond_1
    const-string p1, "android.permission.RECORD_AUDIO"

    .line 6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->T2(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    if-eqz p1, :cond_3

    .line 9
    invoke-static {}, Lcom/shanlitech/et/core/c/n;->d()Lcom/shanlitech/et/core/c/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/core/c/n;->g()Z

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/p/s;->b()Lcom/ifengyu/intercom/p/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/p/s;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v0, "record from earphone"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/p/s;->b()Lcom/ifengyu/intercom/p/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/p/s;->c()V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->requestMic()Z

    :cond_3
    :goto_0
    return p2
.end method

.method private synthetic y3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x3

    const v1, 0x7f090274

    if-ne p1, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p2, Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioUid()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->N(J)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of p2, p1, Lcom/shanlitech/et/model/Member;

    if-eqz p2, :cond_0

    .line 5
    check-cast p1, Lcom/shanlitech/et/model/Member;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/ifengyu/intercom/ui/activity/UserInfoActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/User;I)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of p2, p1, Lcom/shanlitech/et/model/User;

    if-eqz p2, :cond_3

    .line 8
    check-cast p1, Lcom/shanlitech/et/model/User;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/ifengyu/intercom/ui/activity/UserInfoActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/User;I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090282

    if-eq p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f090285

    if-ne p1, p2, :cond_3

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioState()I

    move-result p2

    if-eq p2, v0, :cond_3

    .line 13
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p2, Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->y0(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic B3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->A3(Landroid/view/View;)V

    return-void
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_group"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/Group;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    const-string v0, "key_group_temp"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/http/entity/TempGroup;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->M:Lcom/ifengyu/talk/http/entity/TempGroup;

    :cond_0
    return-void
.end method

.method public synthetic D3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->C3(Landroid/view/View;)V

    return-void
.end method

.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->r0()V

    return-void
.end method

.method public synthetic F3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->E3()V

    return-void
.end method

.method public synthetic H3(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->G3(Ljava/lang/Long;)V

    return-void
.end method

.method public I0()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->n3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->P:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->B:Landroid/widget/TextView;

    const v2, 0x7f1101e5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->ivTalkTemporary:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public synthetic J3(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public K0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->P:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->ivTalkTemporary:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public N()V
    .locals 1

    const v0, 0x7f1103b9

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method public R()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->B:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->K:Lcom/ifengyu/intercom/ui/talk/b3/m;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1101e5

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->K:Lcom/ifengyu/intercom/ui/talk/b3/m;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public U()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method public Y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->H:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0105

    .line 3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->d(I)Lcom/ifengyu/intercom/ui/widget/dialog/s;

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a()Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->H:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->H:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-wide/16 v0, 0x5dc

    .line 6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 7
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/s2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/s2;-><init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/uber/autodispose/m;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b0()V
    .locals 1

    const v0, 0x7f1103b8

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method public c(Lcom/shanlitech/et/model/Group;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->A:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/ifengyu/talk/d;->e(Lcom/shanlitech/et/model/Group;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected d2()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->r3()V

    return-object v0
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->n3()V

    return-void
.end method

.method protected bridge synthetic g3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->q3()Lcom/ifengyu/intercom/ui/talk/c3/j0;

    move-result-object v0

    return-object v0
.end method

.method public h0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->i()Lcom/ifengyu/talk/f/e0;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/talk/f/e0;->d:Lcom/shanlitech/et/notice/event/SpeakEvent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/d;->i()Lcom/ifengyu/talk/f/e0;

    move-result-object v1

    iget-object v1, v1, Lcom/ifengyu/talk/f/e0;->d:Lcom/shanlitech/et/notice/event/SpeakEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d(Lcom/shanlitech/et/notice/event/SpeakEvent;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/i;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public l()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L3()V

    return-void
.end method

.method public m1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->D:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->E:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->F:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->J:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->releaseMic()Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->R()V

    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/i;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public q0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->I:Lcom/ifengyu/intercom/ui/talk/b3/l;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v1

    add-int/2addr p1, v1

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method protected q3()Lcom/ifengyu/intercom/ui/talk/c3/j0;
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->L:Lcom/shanlitech/et/model/Group;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->M:Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/talk/c3/j0;-><init>(Landroid/content/Context;Lcom/shanlitech/et/model/Group;Lcom/ifengyu/talk/http/entity/TempGroup;)V

    return-object v0
.end method

.method public r0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->E:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->F:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->J:Z

    return-void
.end method

.method public synthetic t3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->s3(Landroid/view/View;)V

    return-void
.end method

.method public v1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    return-void
.end method

.method public synthetic v3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->u3(Landroid/view/View;)V

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->F:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->J:Z

    return-void
.end method

.method public synthetic x3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->w3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic z3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->y3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method
