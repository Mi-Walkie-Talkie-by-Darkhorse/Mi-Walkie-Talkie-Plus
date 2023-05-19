.class public abstract Lcom/ifengyu/intercom/ui/fragment/tab/i0;
.super Lcom/ifengyu/intercom/ui/base/l;
.source "BaseTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/ifengyu/intercom/ui/base/q;",
        "P:",
        "Lcom/ifengyu/intercom/ui/base/m<",
        "TV;>;>",
        "Lcom/ifengyu/intercom/ui/base/l<",
        "TV;TP;>;"
    }
.end annotation


# instance fields
.field private A:Lcom/qmuiteam/qmui/widget/popup/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/l;-><init>()V

    return-void
.end method

.method private i3()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    if-nez v0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    const v1, 0x7f03000c

    .line 3
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, v1

    const-string v5, "str"

    const-string v6, "image"

    if-ge v2, v3, :cond_0

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    aget v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    aget-object v6, v1, v2

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v1, 0x7f0c00f8

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_1

    move-object v2, v0

    move v5, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x43480000    # 200.0f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x430c0000    # 140.0f

    :goto_1
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    const/4 v3, -0x2

    new-instance v4, Lcom/ifengyu/intercom/ui/fragment/tab/a;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/a;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/i0;)V

    invoke-static {v1, v2, v3, v0, v4}, Lcom/qmuiteam/qmui/widget/popup/c;->a(Landroid/content/Context;IILandroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/qmuiteam/qmui/widget/popup/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801d7
        0x7f0801d8
        0x7f0801d9
        0x7f0801da
    .end array-data

    :array_1
    .array-data 4
        0x7f090248
        0x7f09025c
    .end array-data
.end method

.method private synthetic j3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/a;->c()V

    if-eqz p3, :cond_3

    const/4 p1, 0x1

    if-eq p3, p1, :cond_2

    const/4 p1, 0x2

    if-eq p3, p1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.CAMERA"

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->T2(Ljava/lang/String;)Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/ui/talk/z2;->U3()Lcom/ifengyu/intercom/ui/talk/z2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;->n3()Lcom/ifengyu/intercom/ui/fragment/FriendSearchFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->j3()Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected O2()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->R3()Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method protected h3(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->i3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->M(I)Lcom/qmuiteam/qmui/widget/popup/a;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->E(I)Lcom/qmuiteam/qmui/widget/popup/a;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->J(I)Lcom/qmuiteam/qmui/widget/popup/a;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/popup/a;->b(F)Lcom/qmuiteam/qmui/widget/popup/a;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->F(Z)Lcom/qmuiteam/qmui/widget/popup/a;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->R(Z)Lcom/qmuiteam/qmui/widget/popup/a;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->P(I)Lcom/qmuiteam/qmui/widget/popup/a;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->L(I)Lcom/qmuiteam/qmui/widget/popup/a;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/qmuiteam/qmui/c/g;->g(Landroid/content/Context;)Lcom/qmuiteam/qmui/c/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/popup/a;->k(Lcom/qmuiteam/qmui/c/g;)Lcom/qmuiteam/qmui/widget/popup/a;

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->A:Lcom/qmuiteam/qmui/widget/popup/b;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/popup/b;->V(Landroid/view/View;)Lcom/qmuiteam/qmui/widget/popup/b;

    return-void
.end method

.method public synthetic k3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/fragment/tab/i0;->j3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
