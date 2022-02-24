.class public abstract Lno/nordicsemi/android/ble/x1;
.super Ljava/lang/Object;
.source "BleServerManager.java"


# static fields
.field private static final a:Ljava/util/UUID;

.field private static final b:Ljava/util/UUID;

.field private static final c:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00002900-0000-1000-8000-00805f9b34fb"

    .line 1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/x1;->a:Ljava/util/UUID;

    const-string v0, "00002901-0000-1000-8000-00805f9b34fb"

    .line 2
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/x1;->b:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/x1;->c:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method final a()Landroid/bluetooth/BluetoothGattServer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method final a(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p0, 0x0

    throw p0
.end method

.method final a(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p0, 0x0

    throw p0
.end method
