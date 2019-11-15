.class public Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;
.super Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;
.source "SealPresetFragment.java"


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

.field private l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private m:Lcom/zhy/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zhy/a/a/a",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/zhy/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zhy/a/a/a",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/TextView;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    const v0, 0x7f0a0011

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->c(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->f:[I

    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->c(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->g:[I

    const v0, 0x7f0a0013

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->c(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->h:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->j:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->j()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/zhy/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->n:Lcom/zhy/a/a/a;

    return-object v0
.end method

.method public static g()Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;-><init>()V

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/zhy/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->m:Lcom/zhy/a/a/a;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h()[I
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->g:[I

    return-object v0
.end method

.method static synthetic i()[I
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->f:[I

    return-object v0
.end method

.method private j()V
    .locals 8

    const-wide/16 v6, 0x1388

    const v5, 0x7f090187

    const v4, 0x7f020128

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f0900df

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2, v4}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->a(ZZLjava/lang/String;I)V

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$4;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$4;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->f:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->c(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f090260

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f09006c

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$6;

    invoke-direct {v3, p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$6;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f09006d

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;

    invoke-direct {v3, p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2, v4}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->a(ZZLjava/lang/String;I)V

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$7;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$7;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->f:[I

    array-length v3, v3

    if-ne v2, v3, :cond_3

    :goto_2
    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->c(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentVisibleChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->n:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->m:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->m:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b()V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->SEAL_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->n:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->m:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->m:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected c(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    const-string v1, "onStateUpdateSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->SEAL_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getStateMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->n:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->m:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->m:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_2
    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    const-string v1, "onModifyChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_0
    return-void
.end method

.method protected e(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e()V

    return-void
.end method

.method public f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_edit_css_channel_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    const-string v1, "result data is null..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "cssCodeModifiedPresetChannel"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cssCodeModifiedPresetChannel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->d(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->b(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->g:[I

    :goto_0
    move v1, v2

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(I)V

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    const v4, 0x7f090056

    new-array v5, v7, [Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    invoke-virtual {v3, v7}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(Z)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->f:[I

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_2
    sget-object v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->h:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(I)V

    invoke-virtual {v1, v7}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->h:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->h:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    const v3, 0x7f090052

    new-array v4, v7, [Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    invoke-virtual {v1, v7}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const v8, 0x7f0400c0

    const/4 v7, 0x5

    const/4 v6, 0x0

    const v0, 0x7f04009d

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f10026d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f10026a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f10026f

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->o:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->o:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f09010b

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->o:Landroid/widget/TextView;

    new-instance v4, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$1;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, v7}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->i:Ljava/util/List;

    invoke-direct {v2, p0, v4, v8, v5}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->m:Lcom/zhy/a/a/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->m:Lcom/zhy/a/a/a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->j:Ljava/util/List;

    invoke-direct {v0, p0, v2, v8, v4}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->n:Lcom/zhy/a/a/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v3

    :cond_0
    const v2, 0x7f0900df

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->onDestroyView()V

    return-void
.end method

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    goto :goto_0
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 4
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    const-string v3, "receiveChannelStateOperateResp"

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->c()I

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Z)V

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->p:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->SEAL_ST_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->SEAL_ST_UPDATE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->f:[I

    array-length v3, v3

    if-ne v2, v3, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->c(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->p:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$9;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$9;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    goto :goto_0
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e:Ljava/lang/String;

    const-string v1, "receiveParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method
