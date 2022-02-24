.class public abstract Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;
.super Lcom/ifengyu/intercom/ui/baseui/a;
.source "DolphinChannelBaseFragment.java"


# instance fields
.field protected final g:Ljava/lang/String;

.field protected h:Z

.field protected i:I

.field protected j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

.field protected k:Z


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

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->k:Z

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    .line 23
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_0

    .line 24
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_1

    const p1, 0x7f1102cd

    .line 26
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->b(I)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->h(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_2

    const p1, 0x7f110161

    .line 29
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->b(I)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_3

    const p1, 0x7f1100d7

    .line 32
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->b(I)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->b(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    .line 34
    :cond_3
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_4

    const p1, 0x7f11021a

    .line 35
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->b(I)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->d(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    .line 37
    :cond_4
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne p1, v0, :cond_5

    .line 38
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->f(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    return-void
.end method

.method private a(ZZII)V
    .locals 0

    .line 20
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->a(ZZLjava/lang/String;I)V

    return-void
.end method

.method private a(ZZLjava/lang/String;I)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->dismiss()V

    .line 13
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(Ljava/lang/String;)V

    .line 15
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p3, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(I)V

    .line 16
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p3, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->show()V

    :cond_1
    return-void
.end method

.method private b(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    .line 10
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$h;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const p1, 0x7f110268

    goto :goto_0

    :cond_0
    const p1, 0x7f110293

    goto :goto_0

    :cond_1
    const p1, 0x7f110160

    goto :goto_0

    :cond_2
    const p1, 0x7f110219

    goto :goto_0

    :cond_3
    const p1, 0x7f11015e

    goto :goto_0

    :cond_4
    const p1, 0x7f1102c8

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->c(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    return-void
.end method

.method private c(I)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(I)V

    :cond_0
    return-void
.end method

.method private c(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    .line 10
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$h;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const p1, 0x7f110268

    goto :goto_0

    :cond_0
    const p1, 0x7f11025f

    goto :goto_0

    :cond_1
    const p1, 0x7f11025a

    goto :goto_0

    :cond_2
    const p1, 0x7f11025e

    goto :goto_0

    :cond_3
    const p1, 0x7f11025d

    goto :goto_0

    :cond_4
    const p1, 0x7f110260

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->a(I)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    .line 9
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$g;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 0

    .line 39
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    .line 40
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->j()V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->k()V

    .line 4
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->i:I

    const/high16 v1, 0x1020000

    if-gt v0, v1, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->h:Z

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    .line 7
    :goto_0
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$d;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    .line 8
    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method protected b(I)V
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->k()V

    .line 3
    invoke-static {p1}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$b;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f080189

    .line 6
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->c(I)V

    .line 7
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->d(Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$f;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    return-void
.end method

.method protected c(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->k()V

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/i/q;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$c;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f080191

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->c(I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->d(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$e;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$e;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected d(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/i/q;->c(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method protected e(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    return-void
.end method

.method protected e(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->k()V

    .line 3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->h:Z

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/q;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a$a;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected f(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    return-void
.end method

.method protected abstract g(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
.end method

.method protected abstract h(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
.end method

.method protected j()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->l()V

    return-void
.end method

.method protected k()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f110285

    const v3, 0x7f08013e

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->a(ZZII)V

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v0, "onAttach"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "is_first_channel"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->h:Z

    const/4 v0, 0x0

    const-string v1, "version_mcu"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->i:I

    :cond_0
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
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->g:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
