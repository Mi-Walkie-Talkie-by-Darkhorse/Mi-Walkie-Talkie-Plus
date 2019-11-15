.class public Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/node/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;,
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;,
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;,
        Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/widget/ListView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/ViewPropertyAnimator;

.field private E:Z

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/animation/ObjectAnimator;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/content/Intent;

.field private M:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;

.field private N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Landroid/animation/ObjectAnimator;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/content/IntentFilter;

.field private T:Lcom/ifengyu/intercom/MiTalkiApp;

.field private U:Ljava/lang/String;

.field private V:Lcom/ifengyu/intercom/ui/widget/dialog/q;

.field private W:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

.field private X:Landroid/content/ServiceConnection;

.field private Y:Ljava/lang/Runnable;

.field private Z:Ljava/lang/Runnable;

.field private a:Landroid/bluetooth/BluetoothAdapter;

.field private aa:Landroid/widget/ImageView;

.field private ab:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/bluetooth/le/BluetoothLeScanner;

.field private c:Z

.field private d:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;

.field private q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/ifengyu/intercom/ui/adapter/a;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/ImageView;

.field private x:Lcom/ifengyu/intercom/node/i$a;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s:Ljava/util/Set;

    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:I

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->X:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$11;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Y:Ljava/lang/Runnable;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$12;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$12;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Z:Ljava/lang/Runnable;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$7;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$7;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->ab:Ljava/util/Comparator;

    return-void
.end method

.method private A()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$6;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$6;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic A(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A()V

    return-void
.end method

.method static synthetic B(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Z:Ljava/lang/Runnable;

    return-object v0
.end method

.method private B()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/node/a/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    :cond_0
    iget-object v1, v0, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    const-string v2, "ConnectDeviceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActivateDevice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T:Lcom/ifengyu/intercom/MiTalkiApp;

    iget-boolean v4, v4, Lcom/ifengyu/intercom/MiTalkiApp;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T:Lcom/ifengyu/intercom/MiTalkiApp;

    iget-boolean v2, v2, Lcom/ifengyu/intercom/MiTalkiApp;->a:Z

    if-nez v2, :cond_1

    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    iget-object v0, v0, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/a;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->startActivities([Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->finish()V

    return-void

    :cond_1
    const-class v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->W:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    const v0, 0x7f0a0002

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->dismiss()V

    :cond_0
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->V:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$b;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f090085

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090079

    new-instance v3, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ConnectDeviceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "ConnectDeviceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect to device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getDeviceType()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "connection_config"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "connection_remove"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y()V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/adapter/a;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Z

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->A:Z

    return p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->L:Landroid/content/Intent;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/node/i$a;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y:Ljava/util/List;

    new-instance v1, Landroid/os/ParcelUuid;

    const-string v2, "0000aee7-0000-1000-8000-00805f9b34fb"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y:Ljava/util/List;

    new-instance v1, Landroid/os/ParcelUuid;

    const-string v2, "0000fdab-0000-1000-8000-00805f9b34fb"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y:Ljava/util/List;

    new-instance v1, Landroid/os/ParcelUuid;

    const-string v2, "0000fee7-0000-1000-8000-00805f9b34fb"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;Ljava/util/List;Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Ble not supported!!!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private e()V
    .locals 5

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v0, 0x7f1000c0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000b8

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/widget/LinearLayout;

    const v0, 0x7f1000b9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f1000ba

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f1000bc

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w:Landroid/widget/ImageView;

    const v3, 0x7f0200c0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/widget/ListView;

    const v0, 0x7f1000be

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Landroid/widget/RelativeLayout;

    const v0, 0x7f1000c1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R:Landroid/widget/ImageView;

    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/TextView;

    const-string v0, "com.ifengyu.intercom.FROM_SPLASH"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.ifengyu.intercom.FROM_LOGIN"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000b7

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->aa:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->aa:Landroid/widget/ImageView;

    const-string v3, "com.ifengyu.intercom.FROM_DEVICE"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.ifengyu.intercom.FORM_MAIN"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.ifengyu.intercom.RECONNECT_DEVICE"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->aa:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Landroid/widget/TextView;

    const v0, 0x7f1000bd

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/widget/ListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/widget/ListView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$15;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$15;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$16;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$16;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w()V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->W:Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    return-object v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    return-object v0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r()V

    return-void
.end method

.method static synthetic o(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic q(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->aa:Landroid/widget/ImageView;

    return-object v0
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->K:Landroid/widget/LinearLayout;

    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x42c80000    # 100.0f
        0x0
    .end array-data
.end method

.method static synthetic r(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method private r()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f09006c

    new-instance v3, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$18;

    invoke-direct {v3, p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$18;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090079

    new-instance v3, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$17;

    invoke-direct {v3, p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$17;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic s(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w:Landroid/widget/ImageView;

    return-object v0
.end method

.method private s()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/node/a/d;->b(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_1
    return-void
.end method

.method static synthetic t(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method private t()V
    .locals 4

    const/4 v2, 0x2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Lcom/ifengyu/intercom/b/z;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/ifengyu/intercom/b/z;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "start anim"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    :try_start_0
    const-string v0, "ConnectDeviceActivity"

    const-string v1, "start scan v1"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ConnectDeviceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while start Scan, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic u(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->ab:Ljava/util/Comparator;

    return-object v0
.end method

.method private u()V
    .locals 4

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ConnectDeviceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while stop Scan, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private v()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x103023a

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09006c

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090079

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic v(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x()V

    return-void
.end method

.method static synthetic w(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method static synthetic x(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Y:Ljava/lang/Runnable;

    return-object v0
.end method

.method private x()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->removeMessages(I)V

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const v0, 0x7f09007f

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(I)V

    goto :goto_0
.end method

.method private y()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z:I

    return-void
.end method

.method static synthetic y(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B()V

    return-void
.end method

.method private z()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$5;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$5;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic z(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->z()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 3

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "onReceiveDolphinParamData"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$8;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 3

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "onReceiveSealParamData"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$9;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 3

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "onReceiveSharkParamData"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$10;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 8

    const-wide/16 v6, 0x1f4

    const v5, 0x3f2b851f    # 0.67f

    const/4 v4, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/adapter/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/adapter/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/adapter/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/adapter/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/a;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->E:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->F:Landroid/widget/TextView;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u:Landroid/widget/TextView;

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->C:Landroid/widget/TextView;

    const-string v1, "translationY"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->B:Landroid/widget/ListView;

    const-string v1, "translationY"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->D:Landroid/view/ViewPropertyAnimator;

    const/high16 v1, -0x3cea0000    # -150.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->H:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/adapter/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/a;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->R:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s()V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :cond_2
    const v0, 0x7f09008f

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/adapter/a;

    if-eqz v0, :cond_0

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/adapter/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/a;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->t:Lcom/ifengyu/intercom/ui/adapter/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/a;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Z)V

    const-class v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000b6 -> :sswitch_1
        0x7f1000b7 -> :sswitch_2
        0x7f1000c0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->af()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/MiTalkiApp;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->T:Lcom/ifengyu/intercom/MiTalkiApp;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->X:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->X:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->X:Landroid/content/ServiceConnection;

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/f;->d()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/node/i$a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/node/i$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->b(Lcom/ifengyu/intercom/node/i$a;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->M:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->M:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "ConnectDeviceActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/node/f$a;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x:Lcom/ifengyu/intercom/node/i$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->a(Lcom/ifengyu/intercom/node/i$a;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->M:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->M:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->S:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "com.ifengyu.intercom.RECONNECT_DEVICE"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->L:Landroid/content/Intent;

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->L:Landroid/content/Intent;

    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    new-instance v0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-direct {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setDeviceType(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->N:Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$13;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$13;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    return-void
.end method
