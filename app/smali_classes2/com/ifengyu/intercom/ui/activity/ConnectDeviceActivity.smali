.class public Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;,
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;,
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/animation/ObjectAnimator;

.field private C:Landroid/animation/ObjectAnimator;

.field private D:Landroid/widget/LinearLayout;

.field private E:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

.field private F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

.field private G:Landroid/widget/ImageView;

.field private H:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private I:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field private J:I

.field private final K:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/bluetooth/BluetoothAdapter;

.field private k:Z

.field private l:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;

.field private m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/ifengyu/intercom/ui/b/a;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Z

.field private u:Landroid/widget/ListView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/ViewPropertyAnimator;

.field private x:Z

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->k:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->n:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->o:Ljava/util/Set;

    .line 5
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Z

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/ui/activity/f;->a:Lcom/ifengyu/intercom/ui/activity/f;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Ljava/util/Comparator;

    return-void
.end method

.method private synthetic C0(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 p1, 0x1

    if-eqz p3, :cond_2

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.ifengyu.intercom.action.CONNECT_HELP"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P(Landroid/app/Activity;)V

    .line 7
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Z

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    .line 9
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Landroid/widget/TextView;

    const p3, 0x7f1100df

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const/16 p2, 0xe

    .line 10
    iget p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:I

    if-ne p2, p3, :cond_3

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    const p3, 0x7f1100ea

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    const p3, 0x7f1100e9

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 13
    :goto_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K0(Z)V

    :goto_1
    return-void
.end method

.method private E0(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getDeviceType()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/i/t0;->a(Ljava/lang/String;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic F(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/ListView;

    return-object p0
.end method

.method private F0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/x0;->r1()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/y0;->k1()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->p1()V

    :goto_0
    return-void
.end method

.method static synthetic G(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Z

    return p1
.end method

.method private G0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/m;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/m;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic H(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K0(Z)V

    return-void
.end method

.method private H0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic I(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Landroid/widget/ImageView;

    return-object p0
.end method

.method private I0()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/e/a/b;

    invoke-direct {v0, p0}, Lb/e/a/b;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/e/a/b;->l([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/h;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic J(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private J0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->b()Lcom/ifengyu/intercom/device/oldDevice/v/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->h(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->c(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V

    :cond_0
    return-void
.end method

.method static synthetic K(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    return-object p0
.end method

.method private K0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T0()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic L(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    return-object p0
.end method

.method private L0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K0(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K0(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const v0, 0x7f1100e0

    .line 7
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q0(I)V

    :goto_0
    return-void
.end method

.method static synthetic M(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->n:Ljava/util/List;

    return-object p0
.end method

.method private M0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11005e

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100bd

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/o;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/o;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    const v2, 0x7f1101d5

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic N(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/Comparator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic O(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->L0()V

    return-void
.end method

.method private O0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110033

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100bd

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/i;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    const v2, 0x7f1101d6

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private P(Landroid/app/Activity;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1100ee

    .line 4
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f1100cc

    sget-object v1, Lcom/ifengyu/intercom/ui/activity/n;->a:Lcom/ifengyu/intercom/ui/activity/n;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, p1, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 6
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConnectDeviceActivity"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private P0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110319

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100bd

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/j;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    const v2, 0x7f1101d6

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Q0(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K0(Z)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_1
    const v1, 0x7f030003

    .line 5
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    .line 7
    :goto_0
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_2

    .line 8
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/dialog/list/d;->I(Z)Lcom/ifengyu/intercom/dialog/list/d;

    invoke-virtual {v2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/ifengyu/intercom/dialog/list/d;

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/e;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/e;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    const p1, 0x7f120101

    .line 10
    invoke-virtual {v2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public static R0(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_connect_device_type"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private S()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/t0;->b()V

    return-void
.end method

.method private S0()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/library/utils/m;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P0()V

    return-void

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/m;->b([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->M0()V

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->k:Z

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    const-string v1, "ConnectDeviceActivity"

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const-string v0, "start anim"

    .line 9
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Z

    const/4 v2, 0x2

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    .line 12
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 13
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    :try_start_0
    const-string v0, "start scan v1"

    .line 14
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->j:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->l:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->k:Z

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while start Scan, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->m(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private T()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/p;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private T0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->j:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->l:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while stop Scan, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectDeviceActivity"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->m(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private U(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    const v1, 0x7f1100ef

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1100e1

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q0(I)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1100f2

    .line 5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q0(I)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1100e3

    .line 7
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q0(I)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getDeviceType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_4

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f110221

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f1100de

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f1100eb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f1100e2

    .line 13
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q0(I)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p:Lcom/ifengyu/intercom/ui/b/a;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    const/4 v0, -0x1

    .line 16
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/b/a;->b(I)V

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p:Lcom/ifengyu/intercom/ui/b/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_6
    return-void

    .line 18
    :cond_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G0()V

    return-void
.end method

.method private V()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "rotation"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xbb8

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/widget/LinearLayout;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data

    :array_1
    .array-data 4
        0x42c80000    # 100.0f
        0x0
    .end array-data
.end method

.method private W()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/k;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Z

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R()V

    return-void
.end method

.method private X()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/g;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/g;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/l/a/d/c;->b(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/b;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/l/a/d/c;->b(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/c;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090148

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09014f

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/widget/LinearLayout;

    const v0, 0x7f090150

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f09014e

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f090146

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s:Landroid/widget/ImageView;

    const v1, 0x7f0800d7

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f09014a

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/ListView;

    const v0, 0x7f09014b

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f090147

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:Landroid/widget/RelativeLayout;

    const v0, 0x7f09014c

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Landroid/widget/ImageView;

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f090149

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f09014d

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    .line 16
    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:I

    const/16 v1, 0xe

    if-ne v1, v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f1100ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/ListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/l;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/ListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public static synthetic Z(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T()V

    return-void
.end method

.method static synthetic a0(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic b0()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/library/event/SimpleEvent;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/ifengyu/library/event/SimpleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/lite/LiteSettingHolderActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/device/mi3/activity/Mi3SettingHolderActivity;->U(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_mac_address"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic d0()V
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K0(Z)V

    return-void
.end method

.method private synthetic f0(Lcom/ifengyu/intercom/device/common/event/ConnectEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;->getConnectStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic h0(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V
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
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F0()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->j:Landroid/bluetooth/BluetoothAdapter;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "key_connect_device_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:I

    .line 5
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;ILcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->l:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;

    :cond_0
    return-void
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onBackPressed()V

    return-void
.end method

.method private synthetic l0(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E0(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    return-void
.end method

.method private synthetic n0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->n:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K0(Z)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S()V

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p:Lcom/ifengyu/intercom/ui/b/a;

    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/b/a;->b(I)V

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p:Lcom/ifengyu/intercom/ui/b/a;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const p3, 0x7f1100f4

    .line 7
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    new-instance p3, Lcom/ifengyu/intercom/ui/activity/a;

    invoke-direct {p3, p0, p1}, Lcom/ifengyu/intercom/ui/activity/a;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    const-wide/16 p4, 0x1f4

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic p0(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getRssi()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getRssi()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private synthetic q0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v2, 0x7f0800da

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v1, 0x7f1100f1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v1, 0x7f1100f3

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    return-void
.end method

.method private synthetic t0(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "location"

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->q(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/ifengyu/intercom/p/j0;->i(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O0()V

    :goto_0
    return-void
.end method

.method private synthetic v0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I0()V

    return-void
.end method

.method private synthetic x0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/library/utils/m;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic z0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public synthetic B0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic D0(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C0(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method

.method public U0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p:Lcom/ifengyu/intercom/ui/b/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/b/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->n:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/b/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p:Lcom/ifengyu/intercom/ui/b/a;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p:Lcom/ifengyu/intercom/ui/b/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/b/a;->getCount()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :goto_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Z

    if-eqz v0, :cond_2

    .line 9
    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Z

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f1100ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f1100e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f1100ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "translationY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/ListView;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w:Landroid/view/ViewPropertyAnimator;

    const/high16 v4, -0x3d380000    # -100.0f

    .line 18
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Landroid/widget/ImageView;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 21
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x43fa0000    # 500.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x43fa0000    # 500.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public synthetic c0()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b0()V

    return-void
.end method

.method public synthetic e0()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d0()V

    return-void
.end method

.method public synthetic g0(Lcom/ifengyu/intercom/device/common/event/ConnectEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f0(Lcom/ifengyu/intercom/device/common/event/ConnectEvent;)V

    return-void
.end method

.method public synthetic i0(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->h0(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V

    return-void
.end method

.method public synthetic k0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->j0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m0(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->l0(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    return-void
.end method

.method public synthetic o0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->n0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090148

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K0(Z)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    const p1, 0x7f1100ec

    .line 7
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q0(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p:Lcom/ifengyu/intercom/ui/b/a;

    if-eqz p1, :cond_3

    .line 9
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    const/4 v0, -0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/b/a;->b(I)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p:Lcom/ifengyu/intercom/ui/b/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->init()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Y()V

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V()V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->X()V

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H0()V

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->W()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K0(Z)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->m:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    .line 11
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/l/a/d/c;->g(Ljava/lang/Object;)V

    .line 12
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onPause()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public onReceiveDolphinParamResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "onReceiveDolphinParamData"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setName(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J0()V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasActivateChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasVersionHW()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Lcom/ifengyu/intercom/ui/activity/d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/d;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onReceiveSealParamData(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "onReceiveSealParamData"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setName(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J0()V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVerHw()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Lcom/ifengyu/intercom/ui/activity/d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/d;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onReceiveSharkParamData(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "onReceiveSharkParamData"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setName(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J0()V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasVerHw()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Lcom/ifengyu/intercom/ui/activity/d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/d;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onResume()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic r0()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q0()V

    return-void
.end method

.method public synthetic u0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic w0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic y0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
