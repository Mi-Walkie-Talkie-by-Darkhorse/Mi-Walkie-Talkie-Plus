.class public Lcom/ifengyu/library/util/a;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/library/util/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/library/util/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/util/a;->b()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->l()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-static {p0}, Lcom/ifengyu/library/util/a;->b(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static b()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    sget-object v0, Lcom/ifengyu/library/util/a;->b:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/library/util/a;->b:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    sget-object v0, Lcom/ifengyu/library/util/a;->b:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private static b(Landroid/content/BroadcastReceiver;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/library/util/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static c()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {}, Lcom/ifengyu/library/util/a;->b()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
