.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;
.super Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;
.source "SealCustomFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$d;


# static fields
.field private static final q:Ljava/lang/String;


# instance fields
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

.field private l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

.field private m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ce
    .end annotation
.end field

.field mTvEmptyView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d2
    .end annotation
.end field

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lb/f/a/a/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->n:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->o:Ljava/util/List;

    return-void
.end method

.method static synthetic k2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->q2(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    return-void
.end method

.method static synthetic l2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-object p0
.end method

.method static synthetic m2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-object p1
.end method

.method public static p2(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "device_mac_address"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private q2(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f1100c1

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->s(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxFreq()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxFreq()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f110181

    .line 5
    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 6
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$d;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    const v2, 0x7f1100bd

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$c;

    invoke-direct {v1, p0, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    const p1, 0x7f1100cc

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->q(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 8
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    return-void
.end method


# virtual methods
.method protected N1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->n:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->n:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/x0;->q0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    :cond_0
    return-void
.end method

.method protected O1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->J()Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->P(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected P1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->J()Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected Q1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->o:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/x0;->e1()V

    return-void
.end method

.method protected R1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/x0;->G1(Z)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->o:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->E1()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->g:Z

    return-void
.end method

.method protected S1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected T1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->SEAL_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;->u(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected U1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->q:Ljava/lang/String;

    const-string v1, "onStateUpdateSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->SEAL_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;->u(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public m(Landroid/view/View;ILcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->n:I

    .line 2
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 3
    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->r2(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    return-void
.end method

.method public n2()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->h:Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->g:Z

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/x0;->C0()Z

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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

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

    .line 8
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_insert_channel"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->r(Ljava/util/List;)I

    move-result v1

    const-string v2, "seal_action_insert_channel_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xc9

    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public o(Landroid/view/View;ILcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 2
    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->Z1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    return-void
.end method

.method public o2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/x0;->C0()Z

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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/i/x0;->s0()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/x0;->D0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->J()Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;->u(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/x0;->D0()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f11010a

    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f08018e

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->g2(ZZLjava/lang/String;I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;-><init>()V

    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setType(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->Y1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 16
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->g:Z

    .line 17
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;)V

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->J()Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;->u(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "customChannel:"

    const-string v2, "result data is null..."

    const-string v3, "customChannel"

    const/16 v4, 0xc9

    if-ne p1, v4, :cond_1

    if-nez p3, :cond_0

    .line 2
    invoke-static {v0, v2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p1, 0x7d1

    if-ne p2, p1, :cond_5

    .line 3
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz p1, :cond_5

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->W1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0xca

    if-ne p1, v4, :cond_5

    const/16 p1, 0x7d2

    if-ne p2, p1, :cond_3

    if-nez p3, :cond_2

    .line 7
    invoke-static {v0, v2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_2
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz p1, :cond_5

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 11
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->X1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x7d3

    if-ne p2, p1, :cond_4

    .line 12
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 13
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 14
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->V1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->S(Z)V

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->R(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00bc

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    new-instance p2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->j:Ljava/util/List;

    invoke-direct {p2, p3, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    .line 4
    invoke-virtual {p2, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;->setOnItemClickListener(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b$d;)V

    .line 5
    new-instance p2, Lb/f/a/a/e/a;

    iget-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/a/b;

    invoke-direct {p2, p3}, Lb/f/a/a/e/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    .line 6
    new-instance p2, Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p3, 0x7f06018d

    .line 8
    invoke-static {p3}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    iget-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    invoke-virtual {p3, p2}, Lb/f/a/a/e/a;->g(Landroid/view/View;)V

    .line 10
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    invoke-virtual {p2, v1}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setFootOrHeaderNum(I)V

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->p:Lb/f/a/a/e/a;

    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->mRecycleView:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method

.method public r2(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1100c1

    .line 1
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f11019e

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f1100bd

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/ifengyu/intercom/ui/widget/dialog/o;-><init>(Landroid/app/Activity;)V

    new-array v4, v4, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxFreq()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxFreq()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    const v2, 0x7f110091

    invoke-static {v2, v4}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->m(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 4
    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->k(Z)Lcom/ifengyu/intercom/ui/widget/dialog/o;

    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$b;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 5
    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->n([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/o$c;)Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 6
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->show()V

    return-void
.end method

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->q:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->K()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->J1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    :cond_2
    return-void
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->q:Ljava/lang/String;

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->K()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->k:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->R(Z)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->K1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    :cond_2
    return-void
.end method

.method public s2(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_modify_channel"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "seal_action_modify_channel_info"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0xca

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected x1()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/a;->x1()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->q:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected y1(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/a;->y1(Z)V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->q:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->o2()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->F1()V

    .line 5
    invoke-static {}, Lcom/ifengyu/library/utils/s;->u()V

    :goto_0
    return-void
.end method
