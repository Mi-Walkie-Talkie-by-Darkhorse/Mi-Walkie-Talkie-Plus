.class public Lcom/ifengyu/intercom/l/b/c/u1;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "Mi3SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/ifengyu/intercom/l/b/e/u;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Lcom/ifengyu/intercom/l/b/e/t;

.field private z:Lcom/ifengyu/intercom/k/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private synthetic A3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/q;->S:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->isHasNewVersion()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->c(Z)V

    :cond_0
    return-void
.end method

.method private synthetic C3(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/q;->S:Lcom/ifengyu/library/widget/view/ItemView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->c(Z)V

    :cond_0
    return-void
.end method

.method private synthetic E3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/t0;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic G3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/e/u;->w()Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->getDeviceId()I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mi3"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/p/j0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/u1;->k3()V

    return-void
.end method

.method private synthetic I3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/t0;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic K3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/l/b/e/u;->w()Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->getDeviceId()I

    move-result p2

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "mi3"

    invoke-static {p3, p2}, Lcom/ifengyu/intercom/p/j0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/l/b/e/u;->m0(I)V

    return-void
.end method

.method private synthetic M3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    iget p2, p0, Lcom/ifengyu/intercom/l/b/c/u1;->C:I

    invoke-static {p2}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->valueOf(I)Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/l/b/e/u;->p0(Lcom/ifengyu/intercom/protos/BleProtos$VoxType;)V

    return-void
.end method

.method private synthetic O3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    invoke-virtual {p5, p3}, Lcom/ifengyu/intercom/dialog/list/a;->j(I)V

    .line 2
    iput p3, p0, Lcom/ifengyu/intercom/l/b/c/u1;->C:I

    return-void
.end method

.method static synthetic Q3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic R3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic S3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    const p1, 0x7f11030c

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    array-length p4, p4

    const/16 v0, 0x10

    if-le p4, v0, :cond_1

    const p1, 0x7f1102da

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 10
    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/l/b/e/u;->k0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic V3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/c/u1;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/i/t0;->c(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private X3()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/b/e;

    const/16 v1, 0x67

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/l/b/b/e;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "Mi3AddListenChDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private Y3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f11018a

    .line 4
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const-string v2, "mi3"

    .line 5
    invoke-static {v2}, Lcom/ifengyu/intercom/p/j0;->m(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v2, Lcom/ifengyu/intercom/l/b/c/d0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/c/d0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v2, Lcom/ifengyu/intercom/l/b/c/c0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/c/c0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    const v3, 0x7f110049

    .line 7
    invoke-virtual {v0, v1, v3, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 8
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private Z3(I)V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f110439

    .line 4
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const-string v2, "mi3"

    .line 5
    invoke-static {v2}, Lcom/ifengyu/intercom/p/j0;->n(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v2, Lcom/ifengyu/intercom/l/b/c/q0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/c/q0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v2, Lcom/ifengyu/intercom/l/b/c/f0;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/l/b/c/f0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;I)V

    const p1, 0x7f110049

    .line 7
    invoke-virtual {v0, v1, p1, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 8
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a4()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->w()Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->getVox()Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->C:I

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const v4, 0x7f1100c5

    .line 4
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f1101cb

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const v2, 0x7f1101cc

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    const v6, 0x7f1101ca

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    aget-object v6, v3, v2

    .line 6
    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v1, 0x7f11007e

    .line 7
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/dialog/list/d;

    iget v1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->C:I

    .line 8
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->H(I)Lcom/ifengyu/intercom/dialog/list/d;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/e0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/e0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f1100bd

    sget-object v2, Lcom/ifengyu/intercom/l/b/c/i0;->a:Lcom/ifengyu/intercom/l/b/c/i0;

    .line 10
    invoke-virtual {v0, v5, v1, v4, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f1100c6

    new-instance v2, Lcom/ifengyu/intercom/l/b/c/y;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/c/y;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    .line 11
    invoke-virtual {v0, v5, v1, v5, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/dialog/list/d;

    const v1, 0x7f120100

    .line 12
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private b4(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getStatus()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "ACTION_SYNC_REMOTE_CHANNEL_END"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "ACTION_SYNC_CUSTOM_CHANNEL_END"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "ACTION_UPDATE_DEVICE_NAME"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "ACTION_UPDATE_DEVICE_VOX"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    goto :goto_1

    .line 4
    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/device/common/event/DeviceParamEvent;

    invoke-direct {v1}, Lcom/ifengyu/intercom/device/common/event/DeviceParamEvent;-><init>()V

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    :pswitch_2
    if-ne v0, v5, :cond_5

    const p1, 0x7f11037c

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->e3(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-ne v0, v4, :cond_6

    const p1, 0x7f11037b

    .line 6
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-ne v0, v3, :cond_7

    const p1, 0x7f1102f6

    .line 7
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6642913d -> :sswitch_3
        -0x62136ef9 -> :sswitch_2
        0x5f6ccac -> :sswitch_1
        0x6a6da201 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c4()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->v()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/DeviceModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/ifengyu/intercom/m/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/m/b/e;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1100c3

    .line 4
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v2, v1

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v3, 0x7f11030c

    .line 5
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->J(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 6
    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->H(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->I(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v4, 0x7f1100bd

    const/4 v5, 0x2

    sget-object v6, Lcom/ifengyu/intercom/l/b/c/a0;->a:Lcom/ifengyu/intercom/l/b/c/a0;

    const/4 v7, 0x0

    .line 8
    invoke-virtual {v2, v7, v4, v5, v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v4, 0x7f1100c6

    new-instance v5, Lcom/ifengyu/intercom/l/b/c/j0;

    invoke-direct {v5, p0, v1, v0}, Lcom/ifengyu/intercom/l/b/c/j0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v7, v4, v7, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->v(F)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v4, 0x7f120100

    .line 11
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v2

    .line 12
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object v1

    new-array v3, v3, [Landroid/text/InputFilter;

    .line 13
    new-instance v4, Lcom/ifengyu/intercom/p/o;

    const/16 v5, 0x10

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/ifengyu/intercom/p/o;-><init>(II)V

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 15
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 16
    invoke-static {v1}, Lcom/ifengyu/library/utils/d;->d(Landroid/view/View;)V

    return-void
.end method

.method private d4()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110388

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/l/b/c/n0;->a:Lcom/ifengyu/intercom/l/b/c/n0;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/x;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/x;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    const v3, 0x7f1100c6

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/l/b/c/u1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->B:Ljava/lang/String;

    return-object p0
.end method

.method private h3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAgreedProtocolVersion()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/u1;->Y3()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->j3(I)V

    :goto_0
    return-void
.end method

.method private i3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getVersionSoft()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getVersionHw()I

    move-result p1

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->D:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v1, v0, p1}, Lcom/ifengyu/intercom/l/b/e/t;->h(II)V

    :cond_0
    return-void
.end method

.method private j3(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    const-string v1, "mi3"

    .line 2
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->K(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/b0;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/l/b/c/b0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;I)V

    new-instance p1, Lcom/ifengyu/intercom/l/b/c/u1$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/l/b/c/u1$c;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private k3()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    const-string v1, "mi3"

    .line 2
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->K(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/p0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/p0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    new-instance v2, Lcom/ifengyu/intercom/l/b/c/u1$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/c/u1$b;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private m3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FragmentLiveDataObserve"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/b/e/u;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/b/e/u;->i0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->v()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/o0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/o0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->w()Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/h0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/h0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->t()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/z;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/z;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->y()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/l0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/l0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 7
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/b/e/t;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->D:Lcom/ifengyu/intercom/l/b/e/t;

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/b/e/t;->C(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->D:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/t;->m()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/k0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/k0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->D:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/t;->l()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/m0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/m0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->V()V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->W()V

    return-void
.end method

.method private synthetic n3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le p2, p1, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/l/b/c/u1;->Z3(I)V

    :cond_0
    return-void
.end method

.method public static synthetic p3(Lcom/ifengyu/intercom/l/b/c/u1;Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->b4(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V

    return-void
.end method

.method private synthetic q3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->m0(I)V

    return-void
.end method

.method private synthetic s3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/u1;->d2()V

    return-void
.end method

.method private synthetic u3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/q;->T:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->i3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->h3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    :cond_0
    return-void
.end method

.method private synthetic w3(Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->D:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->getVerSoft()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->getVerHw()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/l/b/e/t;->h(II)V

    return-void
.end method

.method private synthetic y3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->d()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    const v0, 0x7f11010a

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->c3(ZLjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/e/u;->R()V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic B3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->A3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method

.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "device_mac_address"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->B:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic D3(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->C3(Ljava/lang/Integer;)V

    return-void
.end method

.method public E2()V
    .locals 0

    return-void
.end method

.method public synthetic F3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/c/u1;->E3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic H3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/c/u1;->G3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic J3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/c/u1;->I3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic L3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/l/b/c/u1;->K3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic N3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/c/u1;->M3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic P3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/l/b/c/u1;->O3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method

.method public synthetic T3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/l/b/c/u1;->S3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic W3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/c/u1;->V3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected d2()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00af

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/k/q;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ViewDataBinding;->A(Landroidx/lifecycle/j;)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/u1;->m3()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/k/q;->F(Lcom/ifengyu/intercom/l/b/e/u;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/k/q;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/u1;->l3()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public l3()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/q;->T:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/g0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/g0;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/q;->T:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11017d

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/q;->T:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f08012b

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/u1$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/u1$a;-><init>(Lcom/ifengyu/intercom/l/b/c/u1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/l/b/c/u1;->z:Lcom/ifengyu/intercom/k/q;

    iget-object v3, v2, Lcom/ifengyu/intercom/k/q;->A:Landroid/widget/TextView;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v2, Lcom/ifengyu/intercom/k/q;->C:Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v3, v2, Lcom/ifengyu/intercom/k/q;->H:Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v3, v1, v4

    iget-object v2, v2, Lcom/ifengyu/intercom/k/q;->J:Landroid/widget/TextView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->w(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    return-void
.end method

.method public synthetic o3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/c/u1;->n3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900d8

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/l/b/e/u;->h0(I)V

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/c/l1;->I3(I)Lcom/ifengyu/intercom/l/b/c/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void

    :cond_0
    const v0, 0x7f0900df

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/l/b/e/u;->h0(I)V

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/c/l1;->I3(I)Lcom/ifengyu/intercom/l/b/c/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void

    :cond_1
    const v0, 0x7f090091

    if-ne p1, v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/u1;->X3()V

    return-void

    :cond_2
    const v0, 0x7f090228

    if-ne p1, v0, :cond_3

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/l/b/c/k1;->m3()Lcom/ifengyu/intercom/l/b/c/k1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void

    :cond_3
    const v0, 0x7f090230

    if-ne p1, v0, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/u1;->c4()V

    return-void

    :cond_4
    const v0, 0x7f090234

    if-ne p1, v0, :cond_5

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/l/b/c/v1;->I3()Lcom/ifengyu/intercom/l/b/c/v1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void

    :cond_5
    const v0, 0x7f09022c

    if-ne p1, v0, :cond_6

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/l/b/c/p1;->f4()Lcom/ifengyu/intercom/l/b/c/p1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void

    :cond_6
    const v0, 0x7f090232

    if-ne p1, v0, :cond_7

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/u1;->a4()V

    return-void

    :cond_7
    const v0, 0x7f090236

    if-ne p1, v0, :cond_8

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/l/b/c/w1;->u3()Lcom/ifengyu/intercom/l/b/c/w1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void

    :cond_8
    const v0, 0x7f090227

    if-ne p1, v0, :cond_a

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/e/u;->v()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    if-eqz p1, :cond_9

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->R(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    const v0, 0x7f090235

    if-ne p1, v0, :cond_b

    .line 15
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/u1;->d4()V

    :cond_b
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->b0()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/u1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->U()V

    return-void
.end method

.method public synthetic r3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->q3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method

.method public synthetic t3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->s3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic v3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->u3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public synthetic x3(Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->w3(Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;)V

    return-void
.end method

.method public synthetic z3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/u1;->y3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V

    return-void
.end method
