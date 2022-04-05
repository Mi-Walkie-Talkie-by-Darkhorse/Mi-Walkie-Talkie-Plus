.class public Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;
.super Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;


# static fields
.field private static final r:Ljava/lang/String;

.field private static final s:[I

.field private static final t:[I


# instance fields
.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

.field private n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private o:Lb/d/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/d/a/a/a<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lb/d/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/d/a/a/a<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->r:Ljava/lang/String;

    const v0, 0x7f030012

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->s:[I

    const v0, 0x7f030013

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(I)[I

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->t:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->l:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;)Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->q:I

    return p0
.end method

.method public static b(Z)Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "shark_arg_is_major_channel"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;->a(Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentVisibleChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->p:Lb/d/a/a/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->o:Lb/d/a/a/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->q:I

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->h:Z

    const/4 v2, 0x0

    const v3, 0x7f1100e1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->p:Lb/d/a/a/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->o:Lb/d/a/a/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->p:Lb/d/a/a/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->o:Lb/d/a/a/a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected c(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->r:Ljava/lang/String;

    const-string v1, "onStateUpdateSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->q:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_6

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->h:Z

    const/4 v2, 0x0

    const v3, 0x7f1100e1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->p:Lb/d/a/a/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->o:Lb/d/a/a/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result p1

    if-ne p1, v1, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->p:Lb/d/a/a/a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->o:Lb/d/a/a/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result p1

    if-ne p1, v1, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->r:Ljava/lang/String;

    const-string v1, "onModifyChannelSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->e()V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->r:Ljava/lang/String;

    const-string v1, "onFragmentFirstVisible"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected f(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->j()V

    return-void
.end method

.method public f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_edit_css_channel_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x65

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->w()Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->n:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->r:Ljava/lang/String;

    const-string p2, "result data is null..."

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "cssCodeModifiedPresetChannel"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->r:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->c(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->s:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->s:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->s:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    const v3, 0x7f110076

    new-array v4, v2, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p1

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(Z)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->t:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->t:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    sget-object v3, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->t:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    const v3, 0x7f110072

    new-array v4, v2, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p1

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    const v0, 0x7f0c00ab

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090358

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09035a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->k:Ljava/util/List;

    const v5, 0x7f0c00c3

    invoke-direct {v1, p0, v2, v5, v4}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$a;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->o:Lb/d/a/a/a;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    new-instance p2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->l:Ljava/util/List;

    invoke-direct {p2, p0, p3, v5, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->p:Lb/d/a/a/a;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->onDestroyView()V

    return-void
.end method

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->r:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->x()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    :cond_2
    return-void
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->r:Ljava/lang/String;

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->x()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->m:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->c(Z)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    :cond_2
    return-void
.end method
