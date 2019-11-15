.class public abstract Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;
.super Lcom/ifengyu/intercom/ui/baseui/BaseFragment;
.source "DolphinChannelBaseFragment.java"


# instance fields
.field protected final b:Ljava/lang/String;

.field protected c:Z

.field protected d:I

.field protected e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

.field protected f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->f:Z

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_2

    const v0, 0x7f0901ba

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(I)V

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_3

    const v0, 0x7f090113

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(I)V

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->g(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_4

    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(I)V

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->f(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_5

    const v0, 0x7f090148

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(I)V

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->d(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->c(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    return-void
.end method

.method private a(ZZII)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(ZZLjava/lang/String;I)V

    return-void
.end method

.method private a(ZZLjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->setCancelable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->show()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->dismiss()V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    goto :goto_0
.end method

.method private b(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    const v0, 0x7f090171

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$8;->b:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b(I)V

    return-void

    :pswitch_0
    const v0, 0x7f09016a

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090167

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090168

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090164

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090169

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    return-void
.end method

.method private c(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(I)V

    :cond_0
    return-void
.end method

.method private c(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    const v0, 0x7f090171

    sget-object v1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$8;->b:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b(I)V

    return-void

    :pswitch_0
    const v0, 0x7f0901b9

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090110

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090147

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090112

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090191

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(I)V
    .locals 1

    invoke-static {p1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 0

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->e()V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->d()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->c:Z

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f02016e

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->c(I)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$5;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$5;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected b(I)V
    .locals 1

    invoke-static {p1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract b(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
.end method

.method protected b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->d()V

    invoke-static {p1}, Lcom/ifengyu/intercom/b/m;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$2;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f020167

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->c(I)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$6;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$6;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected abstract c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
.end method

.method protected c(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->d()V

    invoke-static {p1}, Lcom/ifengyu/intercom/b/m;->c(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$3;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected d()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f090187

    const v3, 0x7f020128

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(ZZII)V

    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->d()V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->d:I

    const/high16 v1, 0x1020000

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->c:Z

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/b/m;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    :goto_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$4;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$4;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/b/m;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto :goto_0
.end method

.method protected e()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->f()V

    return-void
.end method

.method protected e(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    invoke-static {p1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method protected f(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    return-void
.end method

.method protected g(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    return-void
.end method

.method protected h(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "is_first_channel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->c:Z

    const-string v1, "version_mcu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->d:I

    :cond_0
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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onDetach()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onPause()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onResume()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onStart()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->onStop()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
