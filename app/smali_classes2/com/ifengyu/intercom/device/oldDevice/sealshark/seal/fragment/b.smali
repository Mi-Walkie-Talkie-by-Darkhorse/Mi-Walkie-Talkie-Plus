.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;
.super Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;
.source "SealPresetFragment.java"


# static fields
.field private static final r:Ljava/lang/String;

.field private static final s:[I

.field private static final t:[I

.field private static final u:[I


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

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

.field private m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field private n:Lb/f/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/a/a/a<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lb/f/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/a/a/a<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/widget/TextView;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->r:Ljava/lang/String;

    const v0, 0x7f03000e

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->h(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->s:[I

    const v0, 0x7f03000f

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->h(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->t:[I

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/l/a/c/a;->a:[I

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->u:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->j:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic k2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->w2()V

    return-void
.end method

.method static synthetic l2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    return-object p0
.end method

.method static synthetic m2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-object p0
.end method

.method static synthetic n2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-object p1
.end method

.method static synthetic o2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic p2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->q:Z

    return p0
.end method

.method static synthetic q2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->q:Z

    return p1
.end method

.method static synthetic r2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)Lb/f/a/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->o:Lb/f/a/a/a;

    return-object p0
.end method

.method static synthetic s2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)Lb/f/a/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->n:Lb/f/a/a/a;

    return-object p0
.end method

.method static synthetic t2()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->t:[I

    return-object v0
.end method

.method static synthetic u2()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->s:[I

    return-object v0
.end method

.method static synthetic v2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method private w2()V
    .locals 8

    const v0, 0x7f110195

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1388

    const v3, 0x7f08018e

    const v4, 0x7f110318

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v5, v0, v3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->g2(ZZLjava/lang/String;I)V

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->s:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/i/x0;->s1(Z)V

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->J()Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v0

    const/4 v7, 0x5

    if-lt v0, v7, :cond_2

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f110449

    .line 9
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->i(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f1100bd

    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$f;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$f;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f1100be

    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->q(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 11
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v5, v0, v3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->g2(ZZLjava/lang/String;I)V

    .line 13
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$g;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)V

    .line 14
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->s:[I

    array-length v2, v2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/i/x0;->s1(Z)V

    :goto_2
    return-void
.end method

.method public static x2(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;-><init>()V

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


# virtual methods
.method protected P1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "onModifyChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    :cond_0
    return-void
.end method

.method protected R1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->E1()V

    return-void
.end method

.method protected T1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->SEAL_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->o:Lb/f/a/a/a;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->n:Lb/f/a/a/a;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected U1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "onStateUpdateSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->SEAL_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->o:Lb/f/a/a/a;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->n:Lb/f/a/a/a;

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/x0;->C0()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f11014f

    .line 16
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
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

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->J()Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->r:Ljava/lang/String;

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

    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_0

    const-string p1, "result data is null..."

    .line 2
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "cssCodeModifiedPresetChannel"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz p1, :cond_2

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cssCodeModifiedPresetChannel:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->X1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->S(Z)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->R(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->t:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->s:[I

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_1
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;-><init>()V

    .line 5
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setNo(I)V

    .line 6
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setType(I)V

    .line 7
    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 8
    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    const v4, 0x7f11009e

    new-array v5, v3, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxCss(I)V

    .line 11
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxCss(I)V

    .line 12
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setStChannel(Z)V

    .line 13
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 14
    :goto_2
    sget-object v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->u:[I

    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 15
    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;-><init>()V

    .line 16
    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setNo(I)V

    .line 17
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setType(I)V

    .line 18
    aget v4, v1, p1

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 19
    aget v1, v1, p1

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    const v1, 0x7f110098

    new-array v4, v3, [Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxCss(I)V

    .line 22
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxCss(I)V

    .line 23
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setStChannel(Z)V

    .line 24
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const p3, 0x7f0c00bd

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903cb

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const p3, 0x7f0903cd

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09017d

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->p:Landroid/widget/TextView;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f1101f8

    goto :goto_0

    :cond_0
    const v2, 0x7f110195

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->p:Landroid/widget/TextView;

    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 9
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->j:Ljava/util/List;

    const v5, 0x7f0c0104

    invoke-direct {v1, p0, v2, v5, v4}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->n:Lb/f/a/a/a;

    .line 10
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 13
    new-instance p2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->k:Ljava/util/List;

    invoke-direct {p2, p0, v0, v5, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->o:Lb/f/a/a/a;

    .line 14
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->K()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->J1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    :cond_2
    return-void
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 4
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->K()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->N()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->l:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelSettingActivity;->S(Z)V

    .line 5
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->q:Z

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->SEAL_ST_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    if-ne v0, v3, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->SEAL_ST_UPDATE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    if-ne p1, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v3, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->s:[I

    array-length v3, v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/i/x0;->s1(Z)V

    return-void

    .line 9
    :cond_3
    iput-boolean v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->q:Z

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$i;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$i;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->K1(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "receiveParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$h;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$h;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected x1()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/a;->x1()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected y1(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/a;->y1(Z)V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentVisibleChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->o:Lb/f/a/a/a;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->n:Lb/f/a/a/a;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public y2(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->h:Ljava/lang/String;

    const-string v2, "device_mac_address"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "seal_action_edit_css_channel_info"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
