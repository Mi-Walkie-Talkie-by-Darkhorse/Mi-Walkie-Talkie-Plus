.class public Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;
.super Lcom/ifengyu/intercom/ui/fragment/tab/i0;
.source "DeviceFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$BluetoothListenerReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/fragment/tab/i0<",
        "Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;",
        "Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;",
        ">;",
        "Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;"
    }
.end annotation


# static fields
.field private static final P:Ljava/lang/String;

.field private static final Q:[Ljava/lang/String;

.field public static R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;


# instance fields
.field private B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

.field private C:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$BluetoothListenerReceiver;

.field private D:Landroid/view/View;

.field private final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/ifengyu/intercom/ui/fragment/tab/j0/a;

.field private G:Landroid/widget/TextView;

.field private H:I

.field private I:Z

.field private J:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private K:Lio/reactivex/disposables/Disposable;

.field private L:Lcom/qmuiteam/qmui/widget/popup/b;

.field private M:Landroid/view/View;

.field private N:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field private O:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090457
    .end annotation
.end field

.field topGetNetDeviceFailedTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049f
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->P:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f11004b

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f11017d

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f11017c

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f110146

    .line 3
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f110172

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x7f110166

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0x7f11012a

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->Q:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/i0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->E:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H:I

    return-void
.end method

.method static synthetic A3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic B3(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p2, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->E0(Lcom/ifengyu/intercom/models/DeviceModel;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->B()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->H0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->l3(Z)V

    :cond_0
    return-void
.end method

.method static synthetic D1()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->P:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic D3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;->j3()Lcom/ifengyu/intercom/ui/fragment/AddDeviceFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic F3(Lcom/ifengyu/intercom/device/common/event/ConnectEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;->getConnectStatus()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->F2()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    const p1, 0x7f1100e1

    .line 5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->f4(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->F2()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    const p1, 0x7f1100f2

    .line 8
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->f4(I)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->F2()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    const p1, 0x7f1100e3

    .line 11
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->f4(I)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->F2()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    const p1, 0x7f1100e2

    .line 14
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->f4(I)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->F2()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f1100f1

    .line 16
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private synthetic H3(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;->getState()I

    move-result p1

    sget v0, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;->STATE_CONNECTED:I

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->v3()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->e4()V

    return-void
.end method

.method private synthetic J3(Lcom/ifengyu/intercom/device/common/event/DeviceParamEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->a4()V

    return-void
.end method

.method private synthetic L3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->g4()V

    return-void
.end method

.method private synthetic N3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result p2

    invoke-static {p2}, Lcom/ifengyu/intercom/j/b;->c(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/ifengyu/library/utils/c;->d()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->r3()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->G0()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast p2, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->J(Lcom/ifengyu/intercom/models/DeviceModel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic P3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->H0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->l3(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic R3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->e4()V

    return-void
.end method

.method private synthetic S3(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->K:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic U3(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->a4()V

    return-void
.end method

.method private synthetic W3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.ifengyu.intercom.action.CONNECT_HELP"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/ifengyu/library/utils/c;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->r3()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic Y3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;

    const/4 v2, 0x1

    if-ne v0, p3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;->setSelected(Z)V

    const/4 v1, 0x5

    const/4 v3, 0x4

    const/16 v4, 0x9

    const/16 v5, 0xe

    const/16 v6, 0xd

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    iput v2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H:I

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    goto/16 :goto_2

    .line 7
    :pswitch_1
    iput v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H:I

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v2, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->B()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v2, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    goto/16 :goto_2

    .line 10
    :pswitch_2
    iput v3, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H:I

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 12
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    goto :goto_2

    .line 13
    :pswitch_3
    iput v4, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H:I

    .line 14
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    goto :goto_2

    .line 16
    :pswitch_4
    iput v6, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H:I

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 18
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1, v6}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->x0(I)V

    goto :goto_2

    .line 19
    :pswitch_5
    iput v5, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H:I

    .line 20
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 21
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    goto :goto_2

    .line 22
    :pswitch_6
    iput p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H:I

    .line 23
    iget-object v7, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v7, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v7}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->B()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 24
    iget-object v7, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v7, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v7, v6}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->x0(I)V

    .line 25
    iget-object v6, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v6, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v6, v5}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    .line 26
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v5, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v5, v4}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    .line 27
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v4, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v4, v3}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    .line 28
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v3, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    .line 29
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->L:Lcom/qmuiteam/qmui/widget/popup/b;

    if-eqz p2, :cond_2

    .line 31
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/popup/a;->c()V

    .line 32
    :cond_2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->G:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->F:Lcom/ifengyu/intercom/ui/fragment/tab/j0/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a4()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H:I

    const/16 v1, 0xe

    const/16 v2, 0xd

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/16 v5, 0x9

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->x0(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    goto :goto_0

    :cond_0
    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->x0(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    goto :goto_0

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    goto :goto_0

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->y0(I)V

    :goto_0
    return-void
.end method

.method private b4()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c4()Lcom/ifengyu/intercom/ui/base/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;-><init>()V

    return-object v0
.end method

.method private e4()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->K:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->K:Lio/reactivex/disposables/Disposable;

    :cond_0
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x5a

    .line 4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/e;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 7
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/k;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    sget-object v2, Lcom/ifengyu/intercom/ui/fragment/tab/g0;->a:Lcom/ifengyu/intercom/ui/fragment/tab/g0;

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private f4(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->v3()V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f11006d

    .line 2
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f11006c

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x7f1100bd

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 3
    new-instance v2, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/dialog/list/d;->I(Z)Lcom/ifengyu/intercom/dialog/list/d;

    invoke-virtual {v2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/ifengyu/intercom/dialog/list/d;

    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/tab/d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/d;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    const p1, 0x7f120101

    .line 6
    invoke-virtual {v2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->J:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private g4()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->L:Lcom/qmuiteam/qmui/widget/popup/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/popup/b;->V(Landroid/view/View;)Lcom/qmuiteam/qmui/widget/popup/b;

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    sget-object v2, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->Q:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->E:Ljava/util/ArrayList;

    new-instance v5, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;

    aget-object v2, v2, v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-direct {v5, v2, v4}, Lcom/ifengyu/intercom/ui/fragment/tab/entity/DeviceTitleSelectPopEntity;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0154

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09039f

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/tab/j0/a;

    const v5, 0x7f0c00f9

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->E:Ljava/util/ArrayList;

    invoke-direct {v3, v5, v6}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/a;-><init>(ILjava/util/List;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->F:Lcom/ifengyu/intercom/ui/fragment/tab/j0/a;

    .line 9
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->F:Lcom/ifengyu/intercom/ui/fragment/tab/j0/a;

    new-instance v3, Lcom/ifengyu/intercom/ui/fragment/tab/o;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/o;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/qmuiteam/qmui/widget/popup/c;->b(Landroid/content/Context;I)Lcom/qmuiteam/qmui/widget/popup/b;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    .line 12
    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->P(I)Lcom/qmuiteam/qmui/widget/popup/a;

    check-cast v2, Lcom/qmuiteam/qmui/widget/popup/b;

    .line 13
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->M(I)Lcom/qmuiteam/qmui/widget/popup/a;

    check-cast v2, Lcom/qmuiteam/qmui/widget/popup/b;

    .line 14
    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->U(Landroid/view/View;)Lcom/qmuiteam/qmui/widget/popup/a;

    check-cast v2, Lcom/qmuiteam/qmui/widget/popup/b;

    .line 15
    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->F(Z)Lcom/qmuiteam/qmui/widget/popup/a;

    check-cast v2, Lcom/qmuiteam/qmui/widget/popup/b;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->J(I)Lcom/qmuiteam/qmui/widget/popup/a;

    check-cast v2, Lcom/qmuiteam/qmui/widget/popup/b;

    const v0, 0x3f19999a    # 0.6f

    .line 17
    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/popup/a;->b(F)Lcom/qmuiteam/qmui/widget/popup/a;

    check-cast v2, Lcom/qmuiteam/qmui/widget/popup/b;

    const/4 v0, 0x3

    .line 18
    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->E(I)Lcom/qmuiteam/qmui/widget/popup/a;

    check-cast v2, Lcom/qmuiteam/qmui/widget/popup/b;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/c/g;->g(Landroid/content/Context;)Lcom/qmuiteam/qmui/c/g;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/popup/a;->k(Lcom/qmuiteam/qmui/c/g;)Lcom/qmuiteam/qmui/widget/popup/a;

    check-cast v2, Lcom/qmuiteam/qmui/widget/popup/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 20
    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/popup/b;->V(Landroid/view/View;)Lcom/qmuiteam/qmui/widget/popup/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->L:Lcom/qmuiteam/qmui/widget/popup/b;

    :goto_2
    return-void
.end method

.method private l3(Z)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->M:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->O:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->N:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f080141

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->N:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->N:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->N:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f11026d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->N:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->M:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->O:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method static synthetic m3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    return-object p0
.end method

.method static synthetic n3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->N:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    return-object p0
.end method

.method static synthetic o3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->M:Landroid/view/View;

    return-object p0
.end method

.method static synthetic p3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->O:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    return-object p0
.end method

.method static synthetic q3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    return-void
.end method

.method private v3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->J:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->J:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method

.method private w3()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/n;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/n;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/l/a/d/c;->b(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/i;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/i;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/l/a/d/c;->b(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/common/event/DeviceParamEvent;

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/l;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/l;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/l/a/d/c;->b(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method static synthetic z3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic C3(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B3(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected E2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->A0()V

    return-void
.end method

.method public synthetic E3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->D3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic G3(Lcom/ifengyu/intercom/device/common/event/ConnectEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->F3(Lcom/ifengyu/intercom/device/common/event/ConnectEvent;)V

    return-void
.end method

.method public synthetic I3(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H3(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V

    return-void
.end method

.method public synthetic K3(Lcom/ifengyu/intercom/device/common/event/DeviceParamEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->J3(Lcom/ifengyu/intercom/device/common/event/DeviceParamEvent;)V

    return-void
.end method

.method public synthetic M3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->L3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic O3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->N3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public P0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->e4()V

    return-void
.end method

.method public synthetic Q3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->P3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public synthetic T3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->S3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public V()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method public synthetic V3(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->U3(Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic X3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->W3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method

.method public synthetic Z3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->Y3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public c0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/j/b;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->I:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->H:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->I:Z

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->topGetNetDeviceFailedTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c1(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->topGetNetDeviceFailedTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->topGetNetDeviceFailedTv:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d4()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->H0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->l3(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    sput-object p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->R:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->y3()V

    return-object v0
.end method

.method public f1(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    const p1, 0x7f11013c

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method protected bridge synthetic g3()Lcom/ifengyu/intercom/ui/base/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->x3()Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    move-result-object v0

    return-object v0
.end method

.method public i1()V
    .locals 2

    const v0, 0x7f11006b

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/intercom/ui/base/k;->c3(ZLjava/lang/String;)V

    return-void
.end method

.method public j1()Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    return-object v0
.end method

.method public l1(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/device/mi3/activity/Mi3SettingHolderActivity;->U(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/Mi3GWDetailActivity;->N(Landroid/content/Context;Lcom/ifengyu/intercom/models/DeviceModel;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/LiteSettingHolderActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "device_mac_address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->C:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$BluetoothListenerReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->u(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/l/a/d/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/ifengyu/library/event/SimpleEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/library/event/SimpleEvent;->getEvent()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->e4()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public r3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100ee

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/p;->a:Lcom/ifengyu/intercom/ui/fragment/tab/p;

    const/4 v2, 0x0

    const v3, 0x7f1100cc

    .line 3
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public s()V
    .locals 1

    const v0, 0x7f110407

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->e4()V

    return-void
.end method

.method public s3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->t3()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f110387

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/j/b;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f11017b

    .line 3
    :cond_0
    new-instance v1, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110179

    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 4
    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v0, 0x7f1100bd

    const/4 v2, 0x2

    sget-object v3, Lcom/ifengyu/intercom/ui/fragment/tab/g;->a:Lcom/ifengyu/intercom/ui/fragment/tab/g;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v0, 0x7f1100c0

    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/tab/j;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;Lcom/ifengyu/intercom/models/DeviceModel;)V

    .line 6
    invoke-virtual {v1, v4, v0, v4, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 7
    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public t3()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->G0()Z

    move-result v0

    return v0
.end method

.method public u()V
    .locals 1

    const v0, 0x7f11017a

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    return-void
.end method

.method public u3()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->D:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0081

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->D:Landroid/view/View;

    const v1, 0x7f0900a0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 5
    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/h;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->D:Landroid/view/View;

    return-object v0
.end method

.method protected x3()Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected y3()V
    .locals 6

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->w3()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->M:Landroid/view/View;

    const v1, 0x7f090489

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->G:Landroid/widget/TextView;

    .line 5
    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->Q:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->M:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/c;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0, v3}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->M:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v4, 0x7f090159

    invoke-virtual {v0, v1, v4, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->m(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f0800c3

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->O:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 11
    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/h0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/h0;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/l;->z:Lcom/ifengyu/intercom/ui/base/m;

    check-cast v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    .line 13
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->u3()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewEndTarget(ZI)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setDistanceToTriggerSync(I)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array v1, v1, [I

    const v2, 0x7f060065

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/m;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/m;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/b;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->B:Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/tab/f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/f;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/l/f;)V

    .line 23
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$BluetoothListenerReceiver;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$BluetoothListenerReceiver;-><init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->C:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$BluetoothListenerReceiver;

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->C:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$BluetoothListenerReceiver;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->b4()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
