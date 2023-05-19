.class public abstract Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;
.super Lcom/ifengyu/intercom/ui/base/old/a;
.source "SharkChannelBaseFragment.java"


# instance fields
.field protected final e:Ljava/lang/String;

.field protected f:Z

.field protected g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

.field protected h:Z

.field protected i:Ljava/lang/String;

.field protected j:Lcom/ifengyu/intercom/i/y0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/a;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->h:Z

    return-void
.end method

.method static synthetic A1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->L1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;)V

    return-void
.end method

.method static synthetic B1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->I1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    return-void
.end method

.method static synthetic C1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->G1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)V

    return-void
.end method

.method static synthetic D1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->H1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)V

    return-void
.end method

.method private G1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/library/utils/s;->u()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$f;->d:[I

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

    const p1, 0x7f1102f7

    goto :goto_0

    :cond_0
    const p1, 0x7f11032b

    goto :goto_0

    :cond_1
    const p1, 0x7f1102ab

    goto :goto_0

    :cond_2
    const p1, 0x7f11010f

    goto :goto_0

    :cond_3
    const p1, 0x7f110204

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->c2(I)V

    return-void
.end method

.method private H1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/library/utils/s;->u()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$f;->d:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f1102f7

    goto :goto_0

    :cond_0
    const p1, 0x7f11010f

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->c2(I)V

    return-void
.end method

.method private I1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/library/utils/s;->u()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$f;->d:[I

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
    const p1, 0x7f1102ac

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->i2(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->P1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f110113

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->i2(I)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->N1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f110205

    .line 7
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->i2(I)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->O1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    :goto_0
    return-void
.end method

.method private L1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/library/utils/s;->u()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$f;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f1102f7

    goto :goto_0

    :cond_0
    const p1, 0x7f11037b

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->c2(I)V

    return-void
.end method

.method private M1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/library/utils/s;->u()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$f;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->U1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->F1()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->T1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    :goto_0
    return-void
.end method

.method static synthetic z1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->M1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    return-void
.end method


# virtual methods
.method protected E1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->F1()V

    return-void
.end method

.method protected F1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->dismiss()V

    :cond_0
    return-void
.end method

.method protected J1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected K1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected N1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected O1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected P1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected Q1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected R1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected S1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 0

    return-void
.end method

.method protected abstract T1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
.end method

.method protected abstract U1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
.end method

.method protected V1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->h2()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->j:Lcom/ifengyu/intercom/i/y0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/y0;->X0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e2()V

    return-void
.end method

.method protected W1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->h2()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->j:Lcom/ifengyu/intercom/i/y0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/y0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e2()V

    return-void
.end method

.method protected X1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->h2()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->j:Lcom/ifengyu/intercom/i/y0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/y0;->Z0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e2()V

    return-void
.end method

.method public Y1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->j:Lcom/ifengyu/intercom/i/y0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/y0;->a1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    return-void
.end method

.method protected Z1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->h2()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->j:Lcom/ifengyu/intercom/i/y0;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->f:Z

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/i/y0;->e1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e2()V

    return-void
.end method

.method protected a2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a(I)V

    :cond_0
    return-void
.end method

.method protected b2(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected c2(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->d2(Ljava/lang/String;)V

    return-void
.end method

.method protected d2(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f080187

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->a2(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->b2(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$e;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected e2()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected f2(ZZII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g2(ZZLjava/lang/String;I)V

    return-void
.end method

.method protected g2(ZZLjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->dismiss()V

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->b(Ljava/lang/String;)V

    .line 6
    iget-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p3, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a(I)V

    .line 7
    iget-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p3, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->g:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->show()V

    :cond_1
    return-void
.end method

.method protected h2()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f110318

    const v3, 0x7f08018e

    .line 1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->f2(ZZII)V

    return-void
.end method

.method protected i2(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->j2(Ljava/lang/String;)V

    return-void
.end method

.method protected j2(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f08018f

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->a2(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->b2(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

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
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const-string v0, "onAttach"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/squareup/otto/b;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "shark_arg_is_major_channel"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->f:Z

    const-string v0, "device_mac_address"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->i:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->j:Lcom/ifengyu/intercom/i/y0;

    :cond_1
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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/a;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->e:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
