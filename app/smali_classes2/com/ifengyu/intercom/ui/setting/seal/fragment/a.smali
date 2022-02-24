.class public abstract Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;
.super Lcom/ifengyu/intercom/ui/baseui/a;
.source "SealChannelBaseFragment.java"


# instance fields
.field protected final g:Ljava/lang/String;

.field protected h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

.field protected i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/a;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->i:Z

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    .line 27
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$f;->d:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const p1, 0x7f110268

    goto :goto_0

    :cond_0
    const p1, 0x7f110293

    goto :goto_0

    :cond_1
    const p1, 0x7f110219

    goto :goto_0

    :cond_2
    const p1, 0x7f1100d6

    goto :goto_0

    :cond_3
    const p1, 0x7f110160

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->b(I)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 1

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    .line 16
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$f;->d:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f11021a

    .line 17
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->c(I)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->d(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1100d7

    .line 19
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->c(I)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f110161

    .line 21
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->c(I)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->c(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    .line 24
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$f;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f110268

    goto :goto_0

    :cond_0
    const p1, 0x7f1102c8

    .line 25
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->b(I)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 1

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    .line 11
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$f;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->c(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    .line 13
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->k()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    return-void
.end method

.method private b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$f;->d:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f110268

    goto :goto_0

    :cond_0
    const p1, 0x7f1100d6

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->b(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(I)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$c;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$b;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->m()V

    .line 6
    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->l()V

    return-void
.end method

.method protected a(ZZII)V
    .locals 0

    .line 41
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(ZZLjava/lang/String;I)V

    return-void
.end method

.method protected a(ZZLjava/lang/String;I)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->dismiss()V

    .line 34
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(Ljava/lang/String;)V

    .line 36
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p3, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(I)V

    .line 37
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p3, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 38
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 39
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->show()V

    :cond_1
    return-void
.end method

.method protected b(I)V
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->c(Ljava/lang/String;)V

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

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->m()V

    .line 3
    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->l()V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected c(I)V
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->d(Ljava/lang/String;)V

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

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->m()V

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->c(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->l()V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f080189

    .line 5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->b(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$e;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$e;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->d(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f080191

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->b(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$d;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected e(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->m()V

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->l()V

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

.method protected j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->k()V

    return-void
.end method

.method protected k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->dismiss()V

    :cond_0
    return-void
.end method

.method protected l()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected m()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f110285

    const v3, 0x7f08013e

    .line 1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(ZZII)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v0, "onAttach"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
