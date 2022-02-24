.class public Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;
.super Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;
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
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

.field private m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private n:Lb/d/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/d/a/a/a<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lb/d/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/d/a/a/a<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
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
    const-class v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

    const v0, 0x7f030011

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->s:[I

    const v0, 0x7f030012

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->t:[I

    const v0, 0x7f030013

    .line 4
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->u:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->j:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->p()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->q:Z

    return p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lb/d/a/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->o:Lb/d/a/a/a;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lb/d/a/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->n:Lb/d/a/a/a;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->t:[I

    return-object v0
.end method

.method public static newInstance()Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;-><init>()V

    return-object v0
.end method

.method static synthetic o()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->s:[I

    return-object v0
.end method

.method private p()V
    .locals 8

    const v0, 0x7f11010d

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1388

    const v3, 0x7f08013e

    const v4, 0x7f110285

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v5, v0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(ZZLjava/lang/String;I)V

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$d;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->s:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/ifengyu/intercom/i/g0;->a(Z)V

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->w()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v0

    const/4 v7, 0x5

    if-lt v0, v7, :cond_2

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f11039a

    .line 9
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f110093

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$f;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$f;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Lcom/ifengyu/intercom/ui/widget/dialog/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f110094

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Lcom/ifengyu/intercom/ui/widget/dialog/f;)V

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    .line 11
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v5, v0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(ZZLjava/lang/String;I)V

    .line 13
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$g;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)V

    .line 14
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->s:[I

    array-length v1, v1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Lcom/ifengyu/intercom/i/g0;->a(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    .line 4
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;->a(Z)V

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentVisibleChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->o:Lb/d/a/a/a;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->n:Lb/d/a/a/a;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->SEAL_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->o:Lb/d/a/a/a;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->n:Lb/d/a/a/a;

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected c(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "onStateUpdateSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->SEAL_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->o:Lb/d/a/a/a;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->n:Lb/d/a/a/a;

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result p1

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f1100e1

    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :cond_2
    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "onModifyChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->e()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->j()V

    return-void
.end method

.method public f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_edit_css_channel_info"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->w()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_0

    .line 2
    sget-object p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

    const-string p2, "result data is null..."

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "cssCodeModifiedPresetChannel"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz p1, :cond_2

    .line 4
    sget-object p2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cssCodeModifiedPresetChannel:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->c(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->c(Z)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->b(Z)V

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
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->t:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->s:[I

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_1
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    .line 5
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    .line 6
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    .line 7
    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    .line 8
    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    const v4, 0x7f110076

    new-array v5, v3, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    .line 11
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    .line 12
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(Z)V

    .line 13
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 14
    :goto_2
    sget-object v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->u:[I

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 15
    new-instance v1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    .line 16
    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    .line 17
    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    .line 18
    sget-object v2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->u:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    .line 19
    sget-object v2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->u:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    const v2, 0x7f110072

    new-array v4, v3, [Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    .line 22
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    .line 23
    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(Z)V

    .line 24
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    const v0, 0x7f0c00a8

    .line 1
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090358

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09035a

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09013e

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->p:Landroid/widget/TextView;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f110157

    goto :goto_0

    :cond_0
    const v2, 0x7f11010d

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->p:Landroid/widget/TextView;

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 9
    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->j:Ljava/util/List;

    const v5, 0x7f0c00c3

    invoke-direct {v1, p0, v2, v5, v4}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->n:Lb/d/a/a/a;

    .line 10
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 11
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 13
    new-instance p2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->k:Ljava/util/List;

    invoke-direct {p2, p0, p3, v5, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->o:Lb/d/a/a/a;

    .line 14
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->onDestroyView()V

    return-void
.end method

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->x()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    :cond_2
    return-void
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 4
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->x()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->l:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->c(Z)V

    .line 5
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->q:Z

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->s:[I

    array-length v0, v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/ifengyu/intercom/i/g0;->a(Z)V

    return-void

    .line 9
    :cond_3
    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->q:Z

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$i;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$i;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->r:Ljava/lang/String;

    const-string v1, "receiveParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
