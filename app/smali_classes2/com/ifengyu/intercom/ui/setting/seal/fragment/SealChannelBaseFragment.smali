.class public abstract Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;
.super Lcom/ifengyu/intercom/ui/baseui/BaseFragment;
.source "SealChannelBaseFragment.java"


# instance fields
.field protected final b:Ljava/lang/String;

.field protected c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

.field protected d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->d:Z

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    const v0, 0x7f090171

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->d:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b(I)V

    return-void

    :pswitch_0
    const v0, 0x7f0900ad

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090147

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090112

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090191

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->d:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f090113

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(I)V

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(I)V

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090148

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(I)V

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->d(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    const v0, 0x7f090171

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->c:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b(I)V

    return-void

    :pswitch_0
    const v0, 0x7f0901b9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->c:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->f()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    return-void
.end method

.method private b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    const v0, 0x7f090171

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->d:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b(I)V

    return-void

    :pswitch_0
    const v0, 0x7f0900ad

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected a(I)V
    .locals 1

    invoke-static {p1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$2;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->d()V

    invoke-static {p1}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a()V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f02016e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c(I)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$4;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$4;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected a(ZZII)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(ZZLjava/lang/String;I)V

    return-void
.end method

.method protected a(ZZLjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->setCancelable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->show()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->dismiss()V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    goto :goto_0
.end method

.method protected b(I)V
    .locals 1

    invoke-static {p1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected abstract b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
.end method

.method protected b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->d()V

    invoke-static {p1}, Lcom/ifengyu/intercom/b/aa;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a()V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f020167

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c(I)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$5;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$5;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected c(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(I)V

    :cond_0
    return-void
.end method

.method protected c(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected abstract c(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
.end method

.method protected c(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->d()V

    invoke-static {p1}, Lcom/ifengyu/intercom/b/aa;->d(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a()V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f090187

    const v3, 0x7f020128

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(ZZII)V

    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->d()V

    invoke-static {p1}, Lcom/ifengyu/intercom/b/aa;->c(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a()V

    return-void
.end method

.method protected e()V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->f()V

    return-void
.end method

.method protected e(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    invoke-static {p1}, Lcom/ifengyu/intercom/b/aa;->e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->c:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->dismiss()V

    :cond_0
    return-void
.end method

.method protected f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected g(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onDetach()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onPause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onStart()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onStop()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
