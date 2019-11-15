.class public Lcom/ifengyu/library/util/BluetoothHeadsetUtils;
.super Ljava/lang/Object;
.source "BluetoothHeadsetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/bluetooth/BluetoothDevice;

.field private d:Landroid/bluetooth/BluetoothHeadset;

.field private e:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

.field private f:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    iput-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->e:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    new-instance v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$1;-><init>(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)V

    iput-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->f:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$2;-><init>(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)V

    iput-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->c()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->c:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->d:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->c(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b(Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/library/util/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->d:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    return-void
.end method

.method private b(Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->e:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->e:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;)V

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private c(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a:Ljava/lang/String;

    const-string v1, "connectDevice#device major is %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->d(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a:Ljava/lang/String;

    const-string v1, "not support audio video!!!"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/ifengyu/library/util/a;->b()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->f:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private d(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const-string v0, "\u672a\u77e5...."

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "\u97f3\u914d\u8bbe\u5907"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u7535\u8111"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u5065\u5eb7\u72b6\u51b5"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u955c\u50cf"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u9ea6\u514b\u98ce"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u7f51\u7edc"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u5916\u90e8\u8bbe\u5907"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u7535\u8bdd"

    goto :goto_0

    :sswitch_8
    const-string v0, "\u73a9\u5177"

    goto :goto_0

    :sswitch_9
    const-string v0, "\u672a\u77e5\u7684"

    goto :goto_0

    :sswitch_a
    const-string v0, "\u7a7f\u6234\u8bbe\u5907"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x100 -> :sswitch_1
        0x200 -> :sswitch_7
        0x300 -> :sswitch_5
        0x400 -> :sswitch_0
        0x500 -> :sswitch_6
        0x600 -> :sswitch_3
        0x700 -> :sswitch_a
        0x800 -> :sswitch_8
        0x900 -> :sswitch_2
        0x1f00 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/ifengyu/library/util/a;->b()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->d:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v3, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->d:Landroid/bluetooth/BluetoothHeadset;

    iput-object v3, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b:Landroid/content/Context;

    iput-object v3, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iput-object p1, p0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->c:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->c(Landroid/bluetooth/BluetoothDevice;)V

    sget-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->c:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b(Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b(Landroid/bluetooth/BluetoothDevice;)V

    sget-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->d:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->b(Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;)V

    goto :goto_0
.end method

.method public a(Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;)V
    .locals 1

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    return-void
.end method
