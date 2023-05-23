.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;
.super Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;
.source "DolphinCustomFragment.java"


# static fields
.field private static final s:Ljava/lang/String;


# instance fields
.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cc
    .end annotation
.end field

.field mTvEmptyView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d2
    .end annotation
.end field

.field private n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field private o:I

.field private p:I

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lb/f/a/a/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->o:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->q:Ljava/util/List;

    return-void
.end method

.method static synthetic f2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    return-object p0
.end method

.method static synthetic g2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    return-object p0
.end method

.method static synthetic h2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    return-object p1
.end method

.method static synthetic i2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->o:I

    return p1
.end method

.method static synthetic j2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->s2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method static synthetic k2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->q2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method static synthetic l2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method static synthetic m2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    return-object p0
.end method

.method public static p2(Ljava/lang/String;ZI)Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "device_mac_address"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "is_first_channel"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "version_mcu"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private q2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f1100c1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->s(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f110182

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 3
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$l;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$l;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    const v2, 0x7f1100bd

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$k;

    invoke-direct {v1, p0, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$k;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    const p1, 0x7f1100cc

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->q(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    return-void
.end method

.method private r2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0
    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-direct {v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->v(Lcom/ifengyu/intercom/ui/widget/dialog/m$k;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->show()V

    return-void
.end method

.method private s2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0c0068

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->j(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->i(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->g()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090055

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090052

    .line 5
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090054

    .line 6
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090051

    .line 7
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090053

    .line 8
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v7

    invoke-static {v7}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v1, v8

    const v7, 0x7f110096

    invoke-static {v7, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$g;

    invoke-direct {v1, p0, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$g;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$h;

    invoke-direct {v1, p0, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$h;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$i;

    invoke-direct {v1, p0, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$i;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$j;

    invoke-direct {p1, p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$j;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    return-void
.end method


# virtual methods
.method protected F1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->F1(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/u0;->z1(Z)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->j:Z

    return-void
.end method

.method protected J1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->s:Ljava/lang/String;

    const-string v0, "onDeleteChannelSuccess"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->o:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->o:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/u0;->t0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_0
    return-void
.end method

.method protected K1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->s:Ljava/lang/String;

    const-string v1, "onInsertChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->USERDEFINE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq(I)V

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setName(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->I()Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->M(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz p1, :cond_3

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected L1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->s:Ljava/lang/String;

    const-string v0, "onModifyChannelSuccess"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setName(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->I()Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_1
    return-void
.end method

.method protected N1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->s:Ljava/lang/String;

    const-string v1, "onQueryChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->q:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->q:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_3
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-lt p1, v0, :cond_5

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/i/u0;->z1(Z)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->q:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->C1()V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->j:Z

    goto :goto_0

    .line 18
    :cond_5
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    const/4 v2, 0x2

    const-string v3, ""

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->U1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :goto_0
    return-void
.end method

.method protected O1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    sget v0, Lcom/ifengyu/intercom/p/d0;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/a/d/a;->c(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget v0, Lcom/ifengyu/intercom/p/d0;->a:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/a/d/a;->c(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected P1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->M(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public n2()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f110152

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->j:Z

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->D0()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f1103eb

    .line 5
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_3

    const v0, 0x7f1103fb

    .line 7
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method public o2()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->D0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f1103eb

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/i/u0;->w0()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->E0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->E0()Z

    move-result v0

    const-wide/16 v2, 0x1f40

    const-string v4, ""

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iput v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget v6, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    invoke-direct {v0, v6, v5, v4, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    new-instance v6, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget v7, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    invoke-direct {v6, v7, v5, v4, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0, v6}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->U1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 13
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->j:Z

    .line 14
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;)V

    invoke-static {v0, v2, v3}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 15
    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->h:I

    const v6, 0x1030001

    if-ge v0, v6, :cond_3

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 17
    iput v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget v6, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    invoke-direct {v0, v6, v5, v4, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    new-instance v6, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget v7, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->p:I

    invoke-direct {v6, v7, v5, v4, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0, v6}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->U1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 20
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->j:Z

    .line 21
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;)V

    invoke-static {v0, v2, v3}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c008e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance p2, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->l:Ljava/util/List;

    const v1, 0x7f0c0103

    invoke-direct {p2, p0, p3, v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 5
    new-instance p3, Lb/f/a/a/e/a;

    invoke-direct {p3, p2}, Lb/f/a/a/e/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    .line 6
    new-instance p2, Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-direct {p3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p3, 0x7f0601bd

    .line 8
    invoke-static {p3}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    iget-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    invoke-virtual {p3, p2}, Lb/f/a/a/e/a;->g(Landroid/view/View;)V

    .line 10
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setFootOrHeaderNum(I)V

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mRvCustom:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->r:Lb/f/a/a/e/a;

    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public receiveChannelResponse(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->J()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->s:Ljava/lang/String;

    const-string v1, "custom fragment receiveChannelResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->H1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V

    return-void
.end method

.method public t2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/t;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->h(Lcom/ifengyu/intercom/ui/widget/dialog/t$a;)Lcom/ifengyu/intercom/ui/widget/dialog/t;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->show()V

    return-void
.end method

.method protected x1()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/a;->x1()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->s:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected y1(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/a;->y1(Z)V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentVisibleChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->o2()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
