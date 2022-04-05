.class public Lcom/ifengyu/library/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    sget-object v0, Lcom/ifengyu/library/a/b;->a:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/library/a/b;->a:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    sget-object v0, Lcom/ifengyu/library/a/b;->a:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/a/b;->a()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
