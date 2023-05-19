.class public Lcom/ifengyu/intercom/l/b/c/t1;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "Mi3SetMoreFragment.java"


# instance fields
.field private A:Lcom/ifengyu/intercom/l/b/e/u;

.field private B:Lcom/ifengyu/intercom/l/b/e/t;

.field private C:Ljava/lang/String;

.field private z:Lcom/ifengyu/intercom/k/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/l/b/c/t1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private g3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/g;->z:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/g;->z:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/v;-><init>(Lcom/ifengyu/intercom/l/b/c/t1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/g;->z:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11037d

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/j/a;->e:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    iget-object v3, v3, Lcom/ifengyu/intercom/k/g;->x:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->w(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/g;->w:Lcom/ifengyu/library/widget/view/ItemTextView;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/u;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/u;-><init>(Lcom/ifengyu/intercom/l/b/c/t1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/g;->y:Lcom/ifengyu/library/widget/view/ItemTextView;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/t;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/t;-><init>(Lcom/ifengyu/intercom/l/b/c/t1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/g;->x:Landroid/widget/TextView;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/q;-><init>(Lcom/ifengyu/intercom/l/b/c/t1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h3()V
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

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/t1;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/b/e/u;->i0(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/b/e/t;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->B:Lcom/ifengyu/intercom/l/b/e/t;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/t1;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/b/e/t;->C(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->B:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/t;->m()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/r;-><init>(Lcom/ifengyu/intercom/l/b/c/t1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->B:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/t;->l()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/p;-><init>(Lcom/ifengyu/intercom/l/b/c/t1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method private synthetic i3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/t1;->d2()V

    return-void
.end method

.method private synthetic k3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/t1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/e/u;->v()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->R(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic m3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/b/c/w1;->u3()Lcom/ifengyu/intercom/l/b/c/w1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic o3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/t1;->y3()V

    return-void
.end method

.method private synthetic q3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/g;->y:Lcom/ifengyu/library/widget/view/ItemTextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->isHasNewVersion()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemTextView;->c(Z)V

    :cond_0
    return-void
.end method

.method private synthetic s3(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/g;->y:Lcom/ifengyu/library/widget/view/ItemTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/view/ItemTextView;->c(Z)V

    :cond_0
    return-void
.end method

.method static synthetic u3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic v3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/c/t1;->C:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/i/t0;->c(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/MainActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public static x3(Ljava/lang/String;)Lcom/ifengyu/intercom/l/b/c/t1;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/c/t1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/b/c/t1;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "device_mac_address"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private y3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110388

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/l/b/c/s;->a:Lcom/ifengyu/intercom/l/b/c/s;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/w;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/w;-><init>(Lcom/ifengyu/intercom/l/b/c/t1;)V

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


# virtual methods
.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "device_mac_address"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/t1;->C:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected M1(Landroid/content/Context;II)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/base/k;->M1(Landroid/content/Context;II)Z

    move-result p1

    return p1
.end method

.method protected d2()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0097

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/k/g;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ViewDataBinding;->A(Landroidx/lifecycle/j;)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/t1;->h3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/t1;->g3()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/t1;->z:Lcom/ifengyu/intercom/k/g;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/t1;->i3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic l3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/t1;->k3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic n3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/t1;->m3(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    return-void
.end method

.method public synthetic p3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/t1;->o3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic r3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/t1;->q3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method

.method public synthetic t3(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/t1;->s3(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic w3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/b/c/t1;->v3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
