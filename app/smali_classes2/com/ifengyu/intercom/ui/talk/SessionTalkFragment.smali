.class public Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;
.super Lcom/ifengyu/intercom/ui/base/l;
.source "SessionTalkFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/talk/d3/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/l<",
        "Lcom/ifengyu/intercom/ui/talk/d3/g;",
        "Lcom/ifengyu/intercom/ui/talk/c3/i0;",
        ">;",
        "Lcom/ifengyu/intercom/ui/talk/d3/g;"
    }
.end annotation


# instance fields
.field private A:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

.field private B:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

.field private C:Lcom/ifengyu/intercom/ui/talk/b3/f;

.field private D:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

.field private E:Lcom/ifengyu/library/utils/e;

.field private F:Landroid/widget/TextView;

.field private G:Lcom/qmuiteam/qmui/widget/dialog/b;

.field ivAudioPlay:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090268
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

.field rvTopMemberList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d2
    .end annotation
.end field

.field tvAudioContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ba
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/l;-><init>()V

    return-void
.end method

.method private synthetic B3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic D3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic F3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic H3(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->B:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->B:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method

.method private J3()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0101

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->d(I)Lcom/ifengyu/intercom/ui/widget/dialog/s;

    const v1, 0x7f120188

    .line 3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->A:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->c()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090083

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->F:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->A:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->K3()V

    return-void
.end method

.method private K3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->E:Lcom/ifengyu/library/utils/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment$a;

    const-wide/16 v1, 0x3c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment$a;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->E:Lcom/ifengyu/library/utils/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->E:Lcom/ifengyu/library/utils/e;

    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->h()V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->F:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->A:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    return-object p0
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->A:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    return-object p1
.end method

.method private k3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->E:Lcom/ifengyu/library/utils/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->b()V

    :cond_0
    return-void
.end method

.method private l3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/i0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/i0;->A()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/talk/f/g0;->d()Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->cancel()Z

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/talk/f/g0;->a()V

    const v0, 0x7f110124

    .line 5
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/j2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/j2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V

    const v2, 0x7f08018d

    invoke-virtual {p0, v0, v2, v1}, Lcom/ifengyu/intercom/ui/base/k;->Z2(Ljava/lang/String;ILcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method private m3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->A:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->A:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->A:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->k3()V

    return-void
.end method

.method private n3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/i2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/i2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private p3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/k;->l(Landroid/app/Activity;)Z

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const v3, 0x7f110123

    invoke-static {v3, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f080242

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/l2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/l2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/b3/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/c3/i0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/c3/i0;->y()Ljava/util/ArrayList;

    move-result-object v1

    const v2, 0x7f0c00e1

    invoke-direct {v0, p0, v2, v1}, Lcom/ifengyu/intercom/ui/talk/b3/f;-><init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/f;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->rvTopMemberList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->rvTopMemberList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->n3()V

    return-void
.end method

.method private synthetic q3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic s3(Landroid/view/View;Landroid/view/MotionEvent;)Z
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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->D:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->releaseMic()Z

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/s;->b()Lcom/ifengyu/intercom/p/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/p/s;->d()V

    goto :goto_0

    :cond_1
    const-string p1, "android.permission.RECORD_AUDIO"

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->T2(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/p/s;->b()Lcom/ifengyu/intercom/p/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/p/s;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v0, "record from earphone"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/p/s;->b()Lcom/ifengyu/intercom/p/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/p/s;->c()V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->D:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->requestMic()Z

    :cond_3
    :goto_0
    return p2
.end method

.method private synthetic u3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->d2()V

    return-void
.end method

.method static synthetic w3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic x3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic z3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/i0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/c3/i0;->A()V

    const p1, 0x7f110124

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/talk/f2;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/talk/f2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V

    const v0, 0x7f08018d

    invoke-virtual {p0, p1, v0, p2}, Lcom/ifengyu/intercom/ui/base/k;->Z2(Ljava/lang/String;ILcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method


# virtual methods
.method public synthetic A3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->z3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic C3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->B3()V

    return-void
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_session_event"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->D:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    :cond_0
    return-void
.end method

.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/c3/i0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/i0;->v()V

    return-void
.end method

.method public synthetic E3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->D3()V

    return-void
.end method

.method public synthetic G3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->F3()V

    return-void
.end method

.method public I(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->ivAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->ivAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->ivAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->ivAudioPlay:Landroid/widget/ImageView;

    const v0, 0x7f080058

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->ivAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->ivAudioPlay:Landroid/widget/ImageView;

    const v0, 0x7f080246

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->tvAudioContent:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic I3(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->H3(Ljava/lang/Long;)V

    return-void
.end method

.method public Q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public Z0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/f;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f110123

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->C:Lcom/ifengyu/intercom/ui/talk/b3/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->B:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0105

    .line 3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->d(I)Lcom/ifengyu/intercom/ui/widget/dialog/s;

    const v1, 0x7f120188

    .line 4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->B:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->B:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

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

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/g2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/g2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/uber/autodispose/m;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected d2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110164

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f1100bd

    const/4 v2, 0x2

    sget-object v3, Lcom/ifengyu/intercom/ui/talk/k2;->a:Lcom/ifengyu/intercom/ui/talk/k2;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f110163

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/m2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/m2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V

    .line 5
    invoke-virtual {v0, v4, v1, v4, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 6
    invoke-virtual {v0, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 7
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->G:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->p3()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    return-object v0
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->m3()V

    return-void
.end method

.method public g0()V
    .locals 3

    const v0, 0x7f110124

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/d2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/d2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V

    const v2, 0x7f08018d

    invoke-virtual {p0, v0, v2, v1}, Lcom/ifengyu/intercom/ui/base/k;->Z2(Ljava/lang/String;ILcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method protected bridge synthetic g3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->o3()Lcom/ifengyu/intercom/ui/talk/c3/i0;

    move-result-object v0

    return-object v0
.end method

.method public getStickyEvent(Lcom/ifengyu/intercom/event/NetEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/ifengyu/intercom/event/NetEvent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/NetEvent;->isNet()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->l3()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    const v0, 0x7f110128

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/e2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/e2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V

    const v2, 0x7f08018d

    invoke-virtual {p0, v0, v2, v1}, Lcom/ifengyu/intercom/ui/base/k;->Z2(Ljava/lang/String;ILcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method public l()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->J3()V

    return-void
.end method

.method protected o3()Lcom/ifengyu/intercom/ui/talk/c3/i0;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/i0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->D:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/c3/i0;-><init>(Landroid/content/Context;Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/k;->m(Landroid/app/Activity;)Z

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->u(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->D:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->releaseMic()Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onResume()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->D:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sessionEvent"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->D:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    if-nez v0, :cond_1

    const v0, 0x7f110124

    .line 4
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08018d

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/h2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/h2;-><init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/base/k;->Z2(Ljava/lang/String;ILcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getAllMemberCount()I

    move-result v0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allMemberCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v0, v2, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->l3()V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic r3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->q3()V

    return-void
.end method

.method public synthetic t3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->s3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public u0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->llHoldOnToSpeak:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public synthetic v3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->u3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic y3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->x3()V

    return-void
.end method
