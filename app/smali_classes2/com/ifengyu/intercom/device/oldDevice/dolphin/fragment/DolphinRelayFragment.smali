.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;
.super Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;
.source "DolphinRelayFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/oldDevice/w/a/b$c;


# static fields
.field private static final t:Ljava/lang/String;


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

.field mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cc
    .end annotation
.end field

.field mTvEmptyView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d2
    .end annotation
.end field

.field private n:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

.field private o:I

.field private p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field private q:I

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lb/f/a/a/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->q:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->r:Ljava/util/List;

    return-void
.end method

.method static synthetic f2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method static synthetic g2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    return-object p0
.end method

.method static synthetic h2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    return-object p1
.end method

.method public static k2(Ljava/lang/String;ZI)Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;-><init>()V

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

.method private l2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
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
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq2()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f110183

    .line 5
    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 6
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$e;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    const v2, 0x7f1100bd

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$d;

    invoke-direct {v1, p0, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    const p1, 0x7f1100cc

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->q(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 8
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    return-void
.end method


# virtual methods
.method protected J1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->q:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->q:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/u0;->t0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_0
    return-void
.end method

.method protected K1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    sget v2, Lcom/ifengyu/intercom/p/d0;->a:I

    if-ne v2, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/a/d/a;->c(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq(I)V

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq2()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq2(I)V

    .line 12
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone(I)V

    .line 13
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone2(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->I()Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->M(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz p1, :cond_6

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 25
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected L1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setName(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq(I)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq2()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq2(I)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone(I)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone2(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->I()Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/u0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_1
    return-void
.end method

.method protected M1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x14

    if-lt p1, v2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/u0;->A1(Z)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->r:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->C1()V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->j:Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    const-string v3, ""

    invoke-direct {p1, v2, v1, v3, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->T1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :goto_0
    return-void
.end method

.method protected N1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->r:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/l/a/d/a;->c(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->r:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    const/16 v0, 0x14

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt p1, v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/i/u0;->A1(Z)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->r:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->C1()V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->j:Z

    goto :goto_1

    .line 16
    :cond_4
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    const-string v3, ""

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->T1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :goto_1
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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected P1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->M(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->q(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public T0(Landroid/view/View;ILcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->q:I

    .line 2
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 3
    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method public i2()V
    .locals 4

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
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->h:I

    const/high16 v2, 0x1030000

    if-ge v0, v2, :cond_2

    const v0, 0x7f1103f8

    .line 5
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->D0()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f1103eb

    .line 7
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_4

    const v0, 0x7f1103fb

    .line 9
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 10
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.ifengyu.action.RELAY_INSERT_CHANNEL"

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->q(Ljava/util/List;)I

    move-result v2

    const-string v3, "channelNum"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public j2()V
    .locals 8

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
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->h:I

    const/high16 v2, 0x1030000

    if-ge v0, v2, :cond_1

    const v0, 0x7f1103f8

    .line 4
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/i/u0;->y0()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->F0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mTvEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setEmptyView(Landroid/view/View;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    if-eqz v0, :cond_3

    .line 10
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->I()Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->q(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->k:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->F0()Z

    move-result v0

    const-wide/16 v2, 0x2710

    const-string v4, ""

    const/16 v5, 0x8

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14
    iput v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget v6, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    invoke-direct {v0, v6, v5, v4, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->T1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 17
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->j:Z

    .line 18
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;)V

    invoke-static {v0, v2, v3}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 19
    :cond_4
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->h:I

    const v6, 0x1030001

    if-ge v0, v6, :cond_5

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 21
    iput v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget v6, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->o:I

    invoke-direct {v0, v6, v5, v4, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->T1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 24
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->j:Z

    .line 25
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;)V

    invoke-static {v0, v2, v3}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    :cond_5
    :goto_0
    return-void
.end method

.method public m2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
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
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq2()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    const v2, 0x7f11018e

    .line 5
    invoke-static {v2, v4}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->m(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 6
    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->k(Z)Lcom/ifengyu/intercom/ui/widget/dialog/o;

    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$c;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->n([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/o$c;)Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 8
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->show()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
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

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->I()Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->q(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "result data is null..."

    const-string v2, "relayInfo"

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_4

    .line 3
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    const-string p2, "send relay insert...."

    .line 5
    invoke-static {v0, p2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-static {p2}, Lcom/ifengyu/intercom/p/b0;->q(Ljava/util/List;)I

    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setNo(I)V

    const/16 p2, 0x8

    .line 8
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setType(I)V

    .line 9
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 10
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->R1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    if-ne p2, v3, :cond_3

    if-nez p3, :cond_2

    .line 11
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_2
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz p1, :cond_4

    const-string p2, "send relay modify...."

    .line 13
    invoke-static {v0, p2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 15
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->S1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    .line 16
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 17
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 18
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->Q1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "section_number"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00bb

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance p2, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l:Ljava/util/List;

    invoke-direct {p2, p3, v0}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    .line 5
    invoke-virtual {p2, p0}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->setOnItemClickListener(Lcom/ifengyu/intercom/device/oldDevice/w/a/b$c;)V

    .line 6
    new-instance p2, Lb/f/a/a/e/a;

    iget-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->n:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-direct {p2, p3}, Lb/f/a/a/e/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    .line 7
    new-instance p2, Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-direct {p3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p3, 0x7f0601bd

    .line 9
    invoke-static {p3}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    iget-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    invoke-virtual {p3, p2}, Lb/f/a/a/e/a;->g(Landroid/view/View;)V

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setFootOrHeaderNum(I)V

    .line 12
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mRvRelay:Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;

    iget-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->s:Lb/f/a/a/e/a;

    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/RecyclerViewEmptySupport;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public receiveChannelResponse(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->J()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->t:Ljava/lang/String;

    const-string v1, "relay fragment receiveChannelResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->H1(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V

    return-void
.end method

.method public v0(Landroid/view/View;ILcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    sget p1, Lcom/ifengyu/intercom/p/d0;->a:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    const p1, 0x7f1103f7

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 3
    :cond_0
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->p:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 4
    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->V1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method

.method protected x1()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/a;->x1()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->t:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected y1(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/a;->y1(Z)V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->t:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->j2()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/library/utils/s;->u()V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
