.class public Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;
.super Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;
.source "SharkPresetFragment.java"


# static fields
.field private static final f:Ljava/lang/String;

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

.field private k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

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

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f:Ljava/lang/String;

    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->c(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->g:[I

    const v0, 0x7f0a0013

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->c(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->h:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->j:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;)Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->o:I

    return v0
.end method

.method public static b(Z)Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "shark_arg_is_major_channel"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->a(Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->b()V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 5

    const v4, 0x7f0900b6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->o:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->o:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected c(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 5

    const v4, 0x7f0900b6

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f:Ljava/lang/String;

    const-string v1, "onStateUpdateSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->o:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->o:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->o:I

    if-ne v0, v2, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->c:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected d(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f:Ljava/lang/String;

    const-string v1, "onModifyChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_0
    return-void
.end method

.method protected e(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->e()V

    return-void
.end method

.method public f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_edit_css_channel_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->d()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->l:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f:Ljava/lang/String;

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

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f:Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->d(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->onCreate(Landroid/os/Bundle;)V

    move v0, v1

    :goto_0
    sget-object v2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->g:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(I)V

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->g:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->g:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    const v3, 0x7f090056

    new-array v4, v6, [Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    invoke-virtual {v2, v6}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    sget-object v2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->h:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(I)V

    invoke-virtual {v2, v6}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->h:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->h:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    const v3, 0x7f090052

    new-array v4, v6, [Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    invoke-virtual {v2, v6}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const v8, 0x7f0400c0

    const/4 v7, 0x5

    const/4 v6, 0x0

    const v0, 0x7f0400a1

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f10026d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f10026a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v7}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$1;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->i:Ljava/util/List;

    invoke-direct {v3, p0, v4, v8, v5}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->m:Lcom/zhy/a/a/a;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v7}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->j:Ljava/util/List;

    invoke-direct {v0, p0, v3, v8, v4}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->n:Lcom/zhy/a/a/a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v2
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->onDestroyView()V

    return-void
.end method

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    goto :goto_0
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->f:Ljava/lang/String;

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->k:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    goto :goto_0
.end method
