.class abstract Lno/nordicsemi/android/ble/BleManagerHandler;
.super Lno/nordicsemi/android/ble/k2;
.source "BleManagerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/ble/BleManagerHandler$f;,
        Lno/nordicsemi/android/ble/BleManagerHandler$d;,
        Lno/nordicsemi/android/ble/BleManagerHandler$e;
    }
.end annotation


# instance fields
.field private final A:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lno/nordicsemi/android/ble/s2;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lno/nordicsemi/android/ble/s2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private C:Lno/nordicsemi/android/ble/v1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lno/nordicsemi/android/ble/v1<",
            "*>;"
        }
    .end annotation
.end field

.field private final D:Landroid/content/BroadcastReceiver;

.field private final E:Landroid/content/BroadcastReceiver;

.field private final F:Landroid/bluetooth/BluetoothGattCallback;

.field private final a:Ljava/lang/Object;

.field private b:Landroid/bluetooth/BluetoothDevice;

.field private c:Landroid/bluetooth/BluetoothGatt;

.field private d:Lno/nordicsemi/android/ble/w1;

.field private e:Lno/nordicsemi/android/ble/y1;

.field private f:Landroid/os/Handler;

.field private final g:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lno/nordicsemi/android/ble/Request;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lno/nordicsemi/android/ble/Request;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:J

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Z

.field private u:I

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "[B>;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            "[B>;"
        }
    .end annotation
.end field

.field private x:Lno/nordicsemi/android/ble/c2;

.field private y:Lno/nordicsemi/android/ble/Request;

.field private z:Lno/nordicsemi/android/ble/l2;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lno/nordicsemi/android/ble/k2;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->g:Ljava/util/Deque;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->m:I

    .line 5
    iput v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->s:I

    const/16 v0, 0x17

    .line 6
    iput v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->A:Ljava/util/HashMap;

    .line 8
    new-instance v0, Lno/nordicsemi/android/ble/BleManagerHandler$a;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/BleManagerHandler$a;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->D:Landroid/content/BroadcastReceiver;

    .line 9
    new-instance v0, Lno/nordicsemi/android/ble/BleManagerHandler$b;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/BleManagerHandler$b;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->E:Landroid/content/BroadcastReceiver;

    .line 10
    new-instance v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/BleManagerHandler$3;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->F:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic A(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->o:Z

    return p1
.end method

.method private A0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 3
    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->l0(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.setCharacteristicNotification("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", true)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 6
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    const/4 v0, 0x2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling notifications for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatt.writeDescriptor("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value=0x01-00)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 9
    invoke-direct {p0, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Q0(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic A1(Lno/nordicsemi/android/ble/BleManagerHandler$d;Lno/nordicsemi/android/ble/x2/a;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler$d;->a(Lno/nordicsemi/android/ble/x2/a;)V

    return-void
.end method

.method static synthetic B(Lno/nordicsemi/android/ble/BleManagerHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->j:Z

    return p0
.end method

.method private B0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->t:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    const-string v2, "Executing reliable write..."

    .line 4
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.executeReliableWrite()"

    .line 5
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->executeReliableWrite()Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic B1(Lno/nordicsemi/android/ble/BleManagerHandler$e;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler$e;->a(Lno/nordicsemi/android/ble/x1;)V

    return-void
.end method

.method static synthetic C(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->j:Z

    return p1
.end method

.method private C0()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lno/nordicsemi/android/ble/w1;->i:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    sget-object v1, Lno/nordicsemi/android/ble/w1;->j:Ljava/util/UUID;

    .line 5
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->D0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic C1(Lno/nordicsemi/android/ble/BleManagerHandler$f;Lno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler$f;->a(Lno/nordicsemi/android/ble/x2/b;)V

    return-void
.end method

.method static synthetic D(Lno/nordicsemi/android/ble/BleManagerHandler;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->H1(I)I

    move-result p0

    return p0
.end method

.method private D0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading characteristic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.readCharacteristic("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic D1(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/x1;->h(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic E(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/c2;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->u0(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/c2;)Z

    move-result p0

    return p0
.end method

.method private E0(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading descriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.readDescriptor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic E1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/Data;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, v1}, Lno/nordicsemi/android/ble/data/Data;->a(II)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v0, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->K1(Landroid/bluetooth/BluetoothGatt;I)V

    .line 4
    new-instance v0, Lno/nordicsemi/android/ble/m0;

    invoke-direct {v0, p1, p2}, Lno/nordicsemi/android/ble/m0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    :cond_0
    return-void
.end method

.method static synthetic F(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/y1;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->e:Lno/nordicsemi/android/ble/y1;

    return-object p0
.end method

.method private F0()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Reading PHY..."

    .line 3
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.readPhy()"

    .line 4
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readPhy()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic G(Lno/nordicsemi/android/ble/BleManagerHandler;)Ljava/util/Deque;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->h:Ljava/util/Deque;

    return-object p0
.end method

.method private G0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Reading remote RSSI..."

    .line 3
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.readRemoteRssi()"

    .line 4
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private G1(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->d:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {v0, p1, p2}, Lno/nordicsemi/android/ble/w1;->A(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic H(Lno/nordicsemi/android/ble/BleManagerHandler;Ljava/util/Deque;)Ljava/util/Deque;
    .locals 0

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->h:Ljava/util/Deque;

    return-object p1
.end method

.method private H0()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const-string v3, "Refreshing device cache..."

    .line 2
    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v2, 0x3

    const-string v3, "gatt.refresh() (hidden)"

    .line 3
    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "refresh"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception v0

    const-string v2, "BleManager"

    const-string v3, "An exception occurred while refreshing device"

    .line 6
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    const-string v2, "gatt.refresh() method not found"

    .line 7
    invoke-direct {p0, v0, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    return v1
.end method

.method private H1(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    const/16 p1, 0xa

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic I(Lno/nordicsemi/android/ble/BleManagerHandler;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->y0(I)Z

    move-result p0

    return p0
.end method

.method private I0()Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.BLUETOOTH_ADMIN"
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const-string v3, "Removing bond information..."

    .line 2
    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x5

    const-string v2, "Device is not bonded"

    .line 4
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 5
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 6
    invoke-direct {p0, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    return v4

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "removeBond"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x3

    const-string v5, "device.removeBond() (hidden)"

    .line 8
    invoke-direct {p0, v3, v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception v0

    const-string v2, "BleManager"

    const-string v3, "An exception occurred while removing bond"

    .line 10
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private declared-synchronized I1(Z)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->p:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->p:Z

    .line 3
    :cond_1
    iget-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :try_start_1
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 6
    :try_start_2
    iget-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->z:Lno/nordicsemi/android/ble/l2;

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {v3}, Lno/nordicsemi/android/ble/l2;->K()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->z:Lno/nordicsemi/android/ble/l2;

    invoke-virtual {v3}, Lno/nordicsemi/android/ble/l2;->J()Lno/nordicsemi/android/ble/Request;

    move-result-object v3

    invoke-virtual {v3, p0}, Lno/nordicsemi/android/ble/Request;->G(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/Request;

    move-result-object v3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->z:Lno/nordicsemi/android/ble/l2;

    invoke-virtual {v3, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 10
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->z:Lno/nordicsemi/android/ble/l2;

    :cond_4
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_6

    .line 11
    iget-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->h:Ljava/util/Deque;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lno/nordicsemi/android/ble/Request;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    :cond_5
    move-object v3, v2

    :cond_6
    :goto_2
    if-nez v3, :cond_9

    .line 12
    :try_start_3
    iget-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->h:Ljava/util/Deque;

    if-eqz v3, :cond_8

    .line 13
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->h:Ljava/util/Deque;

    .line 14
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->p:Z

    .line 15
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->S1()V

    if-eqz p1, :cond_7

    .line 16
    new-instance v3, Lno/nordicsemi/android/ble/z;

    invoke-direct {v3, p1}, Lno/nordicsemi/android/ble/z;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 17
    new-instance v3, Lno/nordicsemi/android/ble/c0;

    invoke-direct {v3, p1}, Lno/nordicsemi/android/ble/c0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z1(Lno/nordicsemi/android/ble/BleManagerHandler$f;)V

    .line 18
    :cond_7
    iget-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;

    if-eqz v3, :cond_8

    .line 19
    invoke-virtual {v3}, Lno/nordicsemi/android/ble/c2;->M()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lno/nordicsemi/android/ble/q2;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 20
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :cond_8
    :try_start_4
    iget-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->g:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lno/nordicsemi/android/ble/Request;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 22
    :catch_1
    :try_start_5
    iput-boolean v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->p:Z

    .line 23
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    .line 24
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->U1()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 26
    :cond_9
    :goto_3
    :try_start_6
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->p:Z

    .line 27
    iput-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    .line 28
    instance-of v4, v3, Lno/nordicsemi/android/ble/v1;

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v4, :cond_11

    .line 29
    move-object v4, v3

    check-cast v4, Lno/nordicsemi/android/ble/v1;

    .line 30
    sget-object v7, Lno/nordicsemi/android/ble/BleManagerHandler$c;->a:[I

    iget-object v8, v3, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v6, :cond_d

    const/4 v8, 0x4

    if-eq v7, v8, :cond_c

    const/4 v8, 0x5

    if-eq v7, v8, :cond_b

    const/4 v8, 0x6

    if-eq v7, v8, :cond_a

    const/4 v7, 0x0

    goto :goto_4

    :cond_a
    const/16 v7, 0x4c

    goto :goto_4

    :cond_b
    const/4 v7, 0x2

    goto :goto_4

    :cond_c
    const/16 v7, 0x20

    goto :goto_4

    :cond_d
    const/16 v7, 0x10

    .line 31
    :goto_4
    iget-boolean v8, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-eqz v8, :cond_f

    if-eqz p1, :cond_f

    iget-object v8, v4, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v8, :cond_e

    .line 32
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_f

    :cond_e
    const/4 v7, 0x1

    goto :goto_5

    :cond_f
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_12

    .line 33
    instance-of v8, v4, Lno/nordicsemi/android/ble/b2;

    if-eqz v8, :cond_10

    .line 34
    move-object v8, v4

    check-cast v8, Lno/nordicsemi/android/ble/b2;

    .line 35
    invoke-virtual {v8}, Lno/nordicsemi/android/ble/b2;->N()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 36
    invoke-virtual {v8, p1}, Lno/nordicsemi/android/ble/q2;->D(Landroid/bluetooth/BluetoothDevice;)V

    .line 37
    invoke-virtual {v8, p1}, Lno/nordicsemi/android/ble/q2;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 38
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 40
    :cond_10
    :try_start_7
    iput-object v4, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    .line 41
    invoke-virtual {v4}, Lno/nordicsemi/android/ble/v1;->K()Lno/nordicsemi/android/ble/Request;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 42
    invoke-virtual {v4, p1}, Lno/nordicsemi/android/ble/q2;->D(Landroid/bluetooth/BluetoothDevice;)V

    .line 43
    invoke-virtual {v4}, Lno/nordicsemi/android/ble/v1;->K()Lno/nordicsemi/android/ble/Request;

    move-result-object v3

    iput-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    goto :goto_6

    :cond_11
    const/4 v7, 0x0

    .line 44
    :cond_12
    :goto_6
    iget-object v4, v3, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v8, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v4, v8, :cond_13

    .line 45
    move-object v4, v3

    check-cast v4, Lno/nordicsemi/android/ble/c2;

    .line 46
    invoke-virtual {v4}, Lno/nordicsemi/android/ble/c2;->M()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v4, v8}, Lno/nordicsemi/android/ble/q2;->D(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_7

    :cond_13
    if-eqz p1, :cond_22

    .line 47
    invoke-virtual {v3, p1}, Lno/nordicsemi/android/ble/Request;->D(Landroid/bluetooth/BluetoothDevice;)V

    .line 48
    :goto_7
    sget-object v4, Lno/nordicsemi/android/ble/BleManagerHandler$c;->a:[I

    iget-object v8, v3, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v4, v4, v8

    if-eq v4, v1, :cond_1b

    if-eq v4, v5, :cond_1b

    const/16 v5, 0x15

    const-wide/16 v8, 0xc8

    const/16 v10, 0x1a

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_b

    .line 49
    :pswitch_0
    move-object v0, v3

    check-cast v0, Lno/nordicsemi/android/ble/p2;

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sleep("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/p2;->H()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 51
    new-instance v4, Lno/nordicsemi/android/ble/i0;

    invoke-direct {v4, p0, v0, p1}, Lno/nordicsemi/android/ble/i0;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/p2;Landroid/bluetooth/BluetoothDevice;)V

    .line 52
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/p2;->H()J

    move-result-wide v5

    .line 53
    invoke-virtual {p0, v4, v5, v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_a

    .line 54
    :pswitch_1
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->H0()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 55
    new-instance v0, Lno/nordicsemi/android/ble/p0;

    invoke-direct {v0, p0, v3, p1}, Lno/nordicsemi/android/ble/p0;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, v0, v8, v9}, Lno/nordicsemi/android/ble/BleManagerHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_b

    .line 56
    :pswitch_2
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->G0()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 57
    new-instance v0, Lno/nordicsemi/android/ble/x0;

    invoke-direct {v0, p0, v3, p1}, Lno/nordicsemi/android/ble/x0;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v0, v4, v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_b

    .line 58
    :pswitch_3
    move-object v0, v3

    check-cast v0, Lno/nordicsemi/android/ble/h2;

    .line 59
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_14

    .line 60
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->F0()Z

    move-result v7

    goto/16 :goto_b

    .line 61
    :cond_14
    iget-boolean v7, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-eqz v7, :cond_1e

    .line 62
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/h2;->P(Landroid/bluetooth/BluetoothDevice;)V

    .line 63
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 64
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 66
    :pswitch_4
    :try_start_8
    move-object v0, v3

    check-cast v0, Lno/nordicsemi/android/ble/h2;

    .line 67
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_15

    .line 68
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/h2;->K()I

    move-result v4

    .line 69
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/h2;->J()I

    move-result v5

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/h2;->I()I

    move-result v0

    .line 70
    invoke-direct {p0, v4, v5, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->N0(III)Z

    move-result v7

    goto/16 :goto_b

    .line 71
    :cond_15
    iget-boolean v7, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-eqz v7, :cond_1e

    .line 72
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/h2;->P(Landroid/bluetooth/BluetoothDevice;)V

    .line 73
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 74
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 76
    :pswitch_5
    :try_start_9
    move-object v0, v3

    check-cast v0, Lno/nordicsemi/android/ble/d2;

    .line 77
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_1e

    .line 78
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/d2;->I()I

    move-result v4

    invoke-direct {p0, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->J0(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 79
    new-instance v4, Lno/nordicsemi/android/ble/c;

    invoke-direct {v4, p0, v0, p1}, Lno/nordicsemi/android/ble/c;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/d2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, v4, v8, v9}, Lno/nordicsemi/android/ble/BleManagerHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_b

    .line 80
    :pswitch_6
    move-object v0, v3

    check-cast v0, Lno/nordicsemi/android/ble/f2;

    .line 81
    iget v4, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/f2;->J()I

    move-result v6

    if-eq v4, v6, :cond_16

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_16

    .line 82
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/f2;->J()I

    move-result v0

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->K0(I)Z

    move-result v7

    goto/16 :goto_b

    .line 83
    :cond_16
    iget-boolean v7, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-eqz v7, :cond_1e

    .line 84
    iget v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    invoke-virtual {v0, p1, v2}, Lno/nordicsemi/android/ble/f2;->M(Landroid/bluetooth/BluetoothDevice;I)V

    .line 85
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 86
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 88
    :pswitch_7
    :try_start_a
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->i0()Z

    move-result v7

    goto/16 :goto_b

    .line 89
    :pswitch_8
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->M0(Z)Z

    move-result v7

    goto/16 :goto_b

    .line 90
    :pswitch_9
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->M0(Z)Z

    move-result v7

    goto/16 :goto_b

    .line 91
    :pswitch_a
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->C0()Z

    move-result v7

    goto/16 :goto_b

    .line 92
    :pswitch_b
    iget-object v0, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->w0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v7

    goto/16 :goto_b

    .line 93
    :pswitch_c
    iget-object v0, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->x0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v7

    goto/16 :goto_b

    .line 94
    :pswitch_d
    iget-object v0, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->z0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v7

    goto/16 :goto_b

    .line 95
    :pswitch_e
    iget-object v0, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->A0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v7

    goto/16 :goto_b

    .line 96
    :pswitch_f
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->s0()Z

    move-result v7

    goto/16 :goto_b

    .line 97
    :pswitch_10
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->B0()Z

    move-result v7

    goto/16 :goto_b

    .line 98
    :pswitch_11
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->t0()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 99
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 100
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 102
    :pswitch_12
    :try_start_b
    move-object v0, v3

    check-cast v0, Lno/nordicsemi/android/ble/m2;

    .line 103
    iget-object v4, v0, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    if-eqz v4, :cond_1e

    .line 104
    iget-object v5, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->w:Ljava/util/Map;

    if-eqz v5, :cond_17

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 105
    iget-object v4, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->w:Ljava/util/Map;

    iget-object v5, v0, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    iget v6, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    invoke-virtual {v0, v6}, Lno/nordicsemi/android/ble/m2;->H(I)[B

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 106
    :cond_17
    iget-object v4, v0, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    iget v5, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    invoke-virtual {v0, v5}, Lno/nordicsemi/android/ble/m2;->H(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 107
    :goto_8
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 108
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    goto :goto_a

    .line 109
    :pswitch_13
    move-object v0, v3

    check-cast v0, Lno/nordicsemi/android/ble/m2;

    .line 110
    iget-object v4, v0, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v4, :cond_1e

    .line 111
    iget-object v5, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->v:Ljava/util/Map;

    if-eqz v5, :cond_18

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 112
    iget-object v4, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->v:Ljava/util/Map;

    iget-object v5, v0, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget v6, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    invoke-virtual {v0, v6}, Lno/nordicsemi/android/ble/m2;->H(I)[B

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 113
    :cond_18
    iget-object v4, v0, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget v5, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    invoke-virtual {v0, v5}, Lno/nordicsemi/android/ble/m2;->H(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 114
    :goto_9
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 115
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    :goto_a
    const/4 v7, 0x1

    goto/16 :goto_b

    .line 116
    :pswitch_14
    move-object v0, v3

    check-cast v0, Lno/nordicsemi/android/ble/u2;

    .line 117
    iget-object v4, v3, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    if-eqz v4, :cond_19

    .line 118
    iget v5, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    invoke-virtual {v0, v5}, Lno/nordicsemi/android/ble/u2;->L(I)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 119
    :cond_19
    invoke-direct {p0, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->P0(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v7

    goto/16 :goto_b

    .line 120
    :pswitch_15
    iget-object v0, v3, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->E0(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v7

    goto/16 :goto_b

    .line 121
    :pswitch_16
    move-object v0, v3

    check-cast v0, Lno/nordicsemi/android/ble/u2;

    .line 122
    iget-object v4, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v4, :cond_1a

    .line 123
    iget v5, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    invoke-virtual {v0, v5}, Lno/nordicsemi/android/ble/u2;->L(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 124
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u2;->M()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 125
    :cond_1a
    invoke-direct {p0, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->O0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v7

    goto :goto_b

    .line 126
    :pswitch_17
    iget-object v0, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->D0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v7

    goto :goto_b

    .line 127
    :pswitch_18
    check-cast v3, Lno/nordicsemi/android/ble/l2;

    iput-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->z:Lno/nordicsemi/android/ble/l2;

    .line 128
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 130
    :pswitch_19
    :try_start_c
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->I0()Z

    move-result v7

    goto :goto_b

    .line 131
    :pswitch_1a
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->v0(Z)Z

    move-result v7

    goto :goto_b

    .line 132
    :pswitch_1b
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->v0(Z)Z

    move-result v7

    goto :goto_b

    .line 133
    :pswitch_1c
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->y0(I)Z

    move-result v7

    goto :goto_b

    .line 134
    :pswitch_1d
    move-object v0, v3

    check-cast v0, Lno/nordicsemi/android/ble/c2;

    .line 135
    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;

    .line 136
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    .line 137
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/c2;->M()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->u0(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/c2;)Z

    move-result v7

    goto :goto_b

    .line 138
    :cond_1b
    move-object v4, v3

    check-cast v4, Lno/nordicsemi/android/ble/u2;

    .line 139
    iget-object v5, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v5, :cond_1c

    .line 140
    iget v6, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    invoke-virtual {v4, v6}, Lno/nordicsemi/android/ble/u2;->L(I)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 141
    iget-object v4, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->v:Ljava/util/Map;

    if-eqz v4, :cond_1c

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 142
    iget-object v4, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->v:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1c
    iget-object v4, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v5, v3, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v6, Lno/nordicsemi/android/ble/Request$Type;->i:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v5, v6, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    invoke-direct {p0, v4, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->L0(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v7

    :cond_1e
    :goto_b
    if-nez v7, :cond_21

    if-eqz p1, :cond_21

    .line 144
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-eqz v0, :cond_1f

    const/4 v0, -0x3

    goto :goto_c

    .line 145
    :cond_1f
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, -0x1

    goto :goto_c

    :cond_20
    const/16 v0, -0x64

    .line 146
    :goto_c
    invoke-virtual {v3, p1, v0}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 147
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    .line 148
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 149
    :cond_21
    monitor-exit p0

    return-void

    .line 150
    :cond_22
    :try_start_d
    invoke-virtual {v3}, Lno/nordicsemi/android/ble/Request;->C()V

    .line 151
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    .line 152
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic J(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->T1(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method private J0(I)Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    const-string v1, "BALANCED (30\u201350ms, 0, 20s)"

    const-string v3, "BALANCED"

    goto :goto_1

    :cond_1
    const-string v1, "LOW POWER (100\u2013125ms, 2, 20s)"

    const-string v3, "LOW POWER"

    goto :goto_1

    .line 3
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_3

    const-string v1, "HIGH (11.25\u201315ms, 0, 20s)"

    goto :goto_0

    :cond_3
    const-string v1, "HIGH (7.5\u201310ms, 0, 20s)"

    :goto_0
    const-string v3, "HIGH"

    .line 4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting connection priority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gatt.requestConnectionPriority("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result p1

    return p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method private J1(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    .line 3
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->i:Z

    .line 4
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->k:Z

    .line 5
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->j:Z

    const/16 v2, 0x17

    .line 6
    iput v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    .line 7
    iput v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->s:I

    .line 8
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e0()Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    const-string v0, "Connection attempt timed out"

    .line 9
    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->f0()V

    .line 11
    new-instance v0, Lno/nordicsemi/android/ble/w0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/w0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 12
    new-instance v0, Lno/nordicsemi/android/ble/j0;

    invoke-direct {v0, p1, p2}, Lno/nordicsemi/android/ble/j0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z1(Lno/nordicsemi/android/ble/BleManagerHandler$f;)V

    goto :goto_1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const-string v1, "Disconnected"

    .line 14
    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->f0()V

    .line 16
    new-instance v0, Lno/nordicsemi/android/ble/d0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/d0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 17
    new-instance v0, Lno/nordicsemi/android/ble/a0;

    invoke-direct {v0, p1, p2}, Lno/nordicsemi/android/ble/a0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z1(Lno/nordicsemi/android/ble/BleManagerHandler$f;)V

    .line 18
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    if-eqz p2, :cond_3

    .line 19
    iget-object v0, p2, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v0, v1, :cond_3

    .line 20
    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    :cond_1
    const-string v0, "Connection lost"

    .line 21
    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 22
    new-instance v0, Lno/nordicsemi/android/ble/s0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/s0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 23
    :goto_0
    new-instance p2, Lno/nordicsemi/android/ble/z0;

    invoke-direct {p2, p1, v0}, Lno/nordicsemi/android/ble/z0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z1(Lno/nordicsemi/android/ble/BleManagerHandler$f;)V

    .line 24
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->W1()V

    .line 25
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->R1()V

    return-void
.end method

.method static synthetic K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e0()Z

    move-result p0

    return p0
.end method

.method private K0(I)Z
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Requesting new MTU..."

    .line 3
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.requestMtu("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic L(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/l2;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->z:Lno/nordicsemi/android/ble/l2;

    return-object p0
.end method

.method private L0(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->e:Lno/nordicsemi/android/ble/y1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/y1;->a()Landroid/bluetooth/BluetoothGattServer;

    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic M(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->t:Z

    return p1
.end method

.method private M0(Z)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lno/nordicsemi/android/ble/w1;->i:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    sget-object v1, Lno/nordicsemi/android/ble/w1;->j:Ljava/util/UUID;

    .line 5
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->A0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    .line 7
    :cond_2
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->x0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method static synthetic N(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->W0(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p0

    return p0
.end method

.method private N0(III)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Requesting preferred PHYs..."

    .line 3
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.setPreferredPhy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lno/nordicsemi/android/ble/y2/a;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p2}, Lno/nordicsemi/android/ble/y2/a;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", coding option = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p3}, Lno/nordicsemi/android/ble/y2/a;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setPreferredPhy(III)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic O(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->S0(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p0

    return p0
.end method

.method private O0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0xc

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing characteristic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v3

    invoke-static {v3}, Lno/nordicsemi/android/ble/y2/a;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gatt.writeCharacteristic("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic P(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->X0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method private P0(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing descriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gatt.writeDescriptor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->Q0(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic Q(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/s2;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->B:Lno/nordicsemi/android/ble/s2;

    return-object p0
.end method

.method private Q0(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    .line 7
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic R(Lno/nordicsemi/android/ble/BleManagerHandler;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method private R0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lno/nordicsemi/android/ble/w1;->j:Ljava/util/UUID;

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic S(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->R0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method private S0(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/UUID;

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic T(Lno/nordicsemi/android/ble/BleManagerHandler;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->A:Ljava/util/HashMap;

    return-object p0
.end method

.method private T1(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p3}, Lno/nordicsemi/android/ble/w2/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 3
    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 4
    new-instance v0, Lno/nordicsemi/android/ble/y0;

    invoke-direct {v0, p1, p2, p3}, Lno/nordicsemi/android/ble/y0;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    return-void
.end method

.method static synthetic U(Lno/nordicsemi/android/ble/BleManagerHandler;I)I
    .locals 0

    .line 1
    iput p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    return p1
.end method

.method static synthetic V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method static synthetic W(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)Lno/nordicsemi/android/ble/Request;
    .locals 0

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    return-object p1
.end method

.method private W0(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lno/nordicsemi/android/ble/w1;->l:Ljava/util/UUID;

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic X(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/v1;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    return-object p0
.end method

.method private X0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lno/nordicsemi/android/ble/w1;->l:Ljava/util/UUID;

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private X1(Lno/nordicsemi/android/ble/BleManagerHandler$d;)V
    .locals 2
    .param p1    # Lno/nordicsemi/android/ble/BleManagerHandler$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->d:Lno/nordicsemi/android/ble/w1;

    iget-object v0, v0, Lno/nordicsemi/android/ble/w1;->e:Lno/nordicsemi/android/ble/x2/a;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lno/nordicsemi/android/ble/r0;

    invoke-direct {v1, p1, v0}, Lno/nordicsemi/android/ble/r0;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler$d;Lno/nordicsemi/android/ble/x2/a;)V

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;
    .locals 0

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    return-object p1
.end method

.method private synthetic Y0(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/Data;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, v1}, Lno/nordicsemi/android/ble/data/Data;->a(II)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x4

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery Level received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v0, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->K1(Landroid/bluetooth/BluetoothGatt;I)V

    .line 5
    new-instance v0, Lno/nordicsemi/android/ble/u0;

    invoke-direct {v0, p1, p2}, Lno/nordicsemi/android/ble/u0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    :cond_0
    return-void
.end method

.method private Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V
    .locals 2
    .param p1    # Lno/nordicsemi/android/ble/BleManagerHandler$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->d:Lno/nordicsemi/android/ble/w1;

    iget-object v0, v0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/x1;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lno/nordicsemi/android/ble/b0;

    invoke-direct {v1, p1, v0}, Lno/nordicsemi/android/ble/b0;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler$e;Lno/nordicsemi/android/ble/x1;)V

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;

    return-object p0
.end method

.method private Z1(Lno/nordicsemi/android/ble/BleManagerHandler$f;)V
    .locals 2
    .param p1    # Lno/nordicsemi/android/ble/BleManagerHandler$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->d:Lno/nordicsemi/android/ble/w1;

    iget-object v0, v0, Lno/nordicsemi/android/ble/w1;->f:Lno/nordicsemi/android/ble/x2/b;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lno/nordicsemi/android/ble/h0;

    invoke-direct {v1, p1, v0}, Lno/nordicsemi/android/ble/h0;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler$f;Lno/nordicsemi/android/ble/x2/b;)V

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a0(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/c2;)Lno/nordicsemi/android/ble/c2;
    .locals 0

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;

    return-object p1
.end method

.method static synthetic a1(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/x1;->h(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic b0(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->q:Z

    return p1
.end method

.method static synthetic b1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic c0(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->J1(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic c1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x2/b;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic d1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    return-void
.end method

.method private e0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    instance-of v1, v0, Lno/nordicsemi/android/ble/b2;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lno/nordicsemi/android/ble/b2;

    .line 3
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/b2;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/q2;->E(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x2/b;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic f(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->p:Z

    return p1
.end method

.method static synthetic f1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->c(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic g(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->X1(Lno/nordicsemi/android/ble/BleManagerHandler$d;)V

    return-void
.end method

.method private g0(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.BLUETOOTH_ADMIN"
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    const-string v0, "device.createBond()"

    .line 2
    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createBond"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "device.createBond() (hidden)"

    .line 5
    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    const-string v1, "BleManager"

    const-string v2, "An exception occurred while creating bond"

    .line 7
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static synthetic g1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x2/b;->c(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic h(Lno/nordicsemi/android/ble/BleManagerHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->i:Z

    return p0
.end method

.method private h0(Lno/nordicsemi/android/ble/Request;)V
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->z:Lno/nordicsemi/android/ble/l2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->h:Ljava/util/Deque;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->g:Ljava/util/Deque;

    .line 3
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/l2;->I(Lno/nordicsemi/android/ble/Request;)V

    :goto_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lno/nordicsemi/android/ble/Request;->n:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->p:Z

    return-void
.end method

.method static synthetic h1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->i(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic i(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->i:Z

    return p1
.end method

.method private i0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    return v1

    .line 5
    :cond_1
    sget-object v2, Lno/nordicsemi/android/ble/w1;->k:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    sget-object v2, Lno/nordicsemi/android/ble/w1;->l:Ljava/util/UUID;

    .line 7
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v1, 0x4

    const-string v2, "Service Changed characteristic found on a bonded device"

    .line 8
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 9
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->z0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method static synthetic i1(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/x2/b;->d(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic j(Lno/nordicsemi/android/ble/BleManagerHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->k:Z

    return p0
.end method

.method static synthetic j1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic k(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->k:Z

    return p1
.end method

.method static synthetic k1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x2/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic l(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->h0(Lno/nordicsemi/android/ble/Request;)V

    return-void
.end method

.method private static l0(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 2
    .param p0    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/2addr p1, v1

    if-nez p1, :cond_1

    return-object v0

    .line 2
    :cond_1
    sget-object p1, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l1(Lno/nordicsemi/android/ble/d2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    return-void
.end method

.method static synthetic n(Lno/nordicsemi/android/ble/BleManagerHandler;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method private synthetic n1(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    if-ne v0, p1, :cond_0

    const/4 v0, -0x5

    .line 2
    invoke-virtual {p1, p2, v0}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    :cond_0
    return-void
.end method

.method static synthetic o(Lno/nordicsemi/android/ble/BleManagerHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    return p0
.end method

.method static synthetic p(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    return p1
.end method

.method private synthetic p1(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "Cache refreshed"

    .line 1
    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    .line 4
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    if-eqz v0, :cond_0

    const/4 v1, -0x3

    .line 5
    invoke-virtual {v0, p2, v1}, Lno/nordicsemi/android/ble/q2;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 6
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    .line 7
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->g:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->clear()V

    .line 8
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->h:Ljava/util/Deque;

    .line 9
    iget-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->W1()V

    .line 11
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->R1()V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->k:Z

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->i:Z

    const/4 p1, 0x2

    const-string p2, "Discovering Services..."

    .line 14
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 p1, 0x3

    const-string p2, "gatt.discoverServices()"

    .line 15
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 16
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    :cond_1
    return-void
.end method

.method static synthetic q(Lno/nordicsemi/android/ble/BleManagerHandler;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->l:J

    return-wide v0
.end method

.method static synthetic r(Lno/nordicsemi/android/ble/BleManagerHandler;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->l:J

    return-wide p1
.end method

.method private synthetic r1(Lno/nordicsemi/android/ble/p2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    return-void
.end method

.method static synthetic s(Lno/nordicsemi/android/ble/BleManagerHandler;I)I
    .locals 0

    .line 1
    iput p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->s:I

    return p1
.end method

.method private s0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->t:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    const-string v2, "Aborting reliable write..."

    .line 4
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x3

    if-lt v1, v2, :cond_2

    const-string v1, "gatt.abortReliableWrite()"

    .line 6
    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    goto :goto_0

    :cond_2
    const-string v1, "gatt.abortReliableWrite(device)"

    .line 8
    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite(Landroid/bluetooth/BluetoothDevice;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method static synthetic t(Lno/nordicsemi/android/ble/BleManagerHandler;)Ljava/util/Deque;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->g:Ljava/util/Deque;

    return-object p0
.end method

.method private t0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->t:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v1, 0x2

    const-string v2, "Beginning reliable write..."

    .line 4
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.beginReliableWrite()"

    .line 5
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->beginReliableWrite()Z

    move-result v0

    iput-boolean v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->t:Z

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic t1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->i(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic u(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z1(Lno/nordicsemi/android/ble/BleManagerHandler$f;)V

    return-void
.end method

.method private u0(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/c2;)Z
    .locals 11
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lno/nordicsemi/android/ble/c2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_a

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->d:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->r()Landroid/content/Context;

    move-result-object v5

    .line 4
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->r:Z

    if-nez v0, :cond_1

    const-string v0, "gatt.close()"

    .line 7
    invoke-direct {p0, v7, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :catchall_0
    :try_start_2
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "wait(200)"

    .line 10
    invoke-direct {p0, v7, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const-wide/16 v8, 0xc8

    .line 11
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 12
    :cond_1
    :try_start_4
    iput-boolean v6, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->r:Z

    const-wide/16 v5, 0x0

    .line 13
    iput-wide v5, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->l:J

    .line 14
    iput v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->s:I

    const-string p2, "Connecting..."

    .line 15
    invoke-direct {p0, v4, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 16
    new-instance p2, Lno/nordicsemi/android/ble/f0;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/ble/f0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 17
    new-instance p2, Lno/nordicsemi/android/ble/t0;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/ble/t0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z1(Lno/nordicsemi/android/ble/BleManagerHandler$f;)V

    const-string p1, "gatt.connect()"

    .line 18
    invoke-direct {p0, v7, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 19
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    .line 20
    monitor-exit v1

    return v3

    :cond_2
    if-eqz p2, :cond_3

    .line 21
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->D:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->E:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    :catch_0
    :cond_3
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p2, :cond_4

    return v6

    .line 24
    :cond_4
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/c2;->S()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 25
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->q:Z

    if-eqz v0, :cond_5

    .line 26
    iput-boolean v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->r:Z

    .line 27
    :cond_5
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;

    .line 28
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/c2;->P()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Connecting..."

    goto :goto_1

    :cond_6
    const-string v0, "Retrying..."

    :goto_1
    invoke-direct {p0, v4, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 29
    iput v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->s:I

    .line 30
    new-instance v0, Lno/nordicsemi/android/ble/n0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/n0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 31
    new-instance v0, Lno/nordicsemi/android/ble/g0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/g0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z1(Lno/nordicsemi/android/ble/BleManagerHandler$f;)V

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->l:J

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_7

    .line 34
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/c2;->N()I

    move-result v9

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatt = device.connectGatt(autoConnect = false, TRANSPORT_LE, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {v9}, Lno/nordicsemi/android/ble/y2/a;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-direct {p0, v7, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v6, 0x0

    .line 38
    iget-object v7, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->F:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v8, 0x2

    iget-object v10, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->f:Landroid/os/Handler;

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;IILandroid/os/Handler;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    goto :goto_2

    :cond_7
    if-ne v0, v1, :cond_8

    .line 39
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/c2;->N()I

    move-result v9

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatt = device.connectGatt(autoConnect = false, TRANSPORT_LE, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {v9}, Lno/nordicsemi/android/ble/y2/a;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-direct {p0, v7, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v6, 0x0

    .line 43
    iget-object v7, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->F:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v8, 0x2

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    goto :goto_2

    :cond_8
    const/16 p2, 0x17

    if-lt v0, p2, :cond_9

    const-string p2, "gatt = device.connectGatt(autoConnect = false, TRANSPORT_LE)"

    .line 44
    invoke-direct {p0, v7, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 45
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->F:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v5, v6, p2, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    goto :goto_2

    :cond_9
    const-string p2, "gatt = device.connectGatt(autoConnect = false)"

    .line 46
    invoke-direct {p0, v7, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 47
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->F:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v5, v6, p2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    :goto_2
    return v3

    :catchall_1
    move-exception p1

    .line 48
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 49
    :cond_a
    :goto_3
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    .line 50
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 51
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/q2;->E(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_5

    .line 52
    :cond_b
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;

    if-eqz p2, :cond_d

    if-eqz v0, :cond_c

    const/4 v0, -0x4

    goto :goto_4

    :cond_c
    const/16 v0, -0x64

    .line 53
    :goto_4
    invoke-virtual {p2, p1, v0}, Lno/nordicsemi/android/ble/q2;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 54
    :cond_d
    :goto_5
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;

    .line 55
    invoke-direct {p0, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    return v3
.end method

.method static synthetic u1(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/x2/b;->e(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic v(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/w1;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->d:Lno/nordicsemi/android/ble/w1;

    return-object p0
.end method

.method private v0(Z)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.BLUETOOTH_ADMIN"
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x2

    if-eqz p1, :cond_1

    const-string v2, "Ensuring bonding..."

    .line 2
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Starting bonding..."

    .line 3
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    const/4 p1, 0x5

    const-string v2, "Bond information present on client, skipping bonding"

    .line 5
    invoke-direct {p0, p1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 7
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    return v1

    .line 8
    :cond_2
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->g0(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 9
    invoke-static {}, Lno/nordicsemi/android/ble/Request;->c()Lno/nordicsemi/android/ble/n2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lno/nordicsemi/android/ble/Request;->G(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/Request;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    iget-object v2, v0, Lno/nordicsemi/android/ble/Request;->h:Lno/nordicsemi/android/ble/v2/k;

    iput-object v2, p1, Lno/nordicsemi/android/ble/Request;->h:Lno/nordicsemi/android/ble/v2/k;

    .line 11
    iget-object v2, v0, Lno/nordicsemi/android/ble/Request;->j:Lno/nordicsemi/android/ble/v2/f;

    iput-object v2, p1, Lno/nordicsemi/android/ble/Request;->j:Lno/nordicsemi/android/ble/v2/f;

    .line 12
    iget-object v2, v0, Lno/nordicsemi/android/ble/Request;->i:Lno/nordicsemi/android/ble/v2/e;

    iput-object v2, p1, Lno/nordicsemi/android/ble/Request;->i:Lno/nordicsemi/android/ble/v2/e;

    .line 13
    iget-object v2, v0, Lno/nordicsemi/android/ble/Request;->l:Lno/nordicsemi/android/ble/v2/k;

    iput-object v2, p1, Lno/nordicsemi/android/ble/Request;->l:Lno/nordicsemi/android/ble/v2/k;

    .line 14
    iget-object v2, v0, Lno/nordicsemi/android/ble/Request;->m:Lno/nordicsemi/android/ble/v2/e;

    iput-object v2, p1, Lno/nordicsemi/android/ble/Request;->m:Lno/nordicsemi/android/ble/v2/e;

    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Lno/nordicsemi/android/ble/Request;->h:Lno/nordicsemi/android/ble/v2/k;

    .line 16
    iput-object v2, v0, Lno/nordicsemi/android/ble/Request;->j:Lno/nordicsemi/android/ble/v2/f;

    .line 17
    iput-object v2, v0, Lno/nordicsemi/android/ble/Request;->i:Lno/nordicsemi/android/ble/v2/e;

    .line 18
    iput-object v2, v0, Lno/nordicsemi/android/ble/Request;->l:Lno/nordicsemi/android/ble/v2/k;

    .line 19
    iput-object v2, v0, Lno/nordicsemi/android/ble/Request;->m:Lno/nordicsemi/android/ble/v2/e;

    .line 20
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->h0(Lno/nordicsemi/android/ble/Request;)V

    .line 21
    invoke-static {}, Lno/nordicsemi/android/ble/Request;->F()Lno/nordicsemi/android/ble/n2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lno/nordicsemi/android/ble/Request;->G(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->h0(Lno/nordicsemi/android/ble/Request;)V

    .line 22
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    return v1

    :cond_3
    return v0
.end method

.method static synthetic v1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->i(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic w(Lno/nordicsemi/android/ble/BleManagerHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->m:I

    return p0
.end method

.method private w0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->x0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1
.end method

.method static synthetic w1(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/x2/b;->d(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic x(Lno/nordicsemi/android/ble/BleManagerHandler;)I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->m:I

    return v0
.end method

.method private x0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x30

    .line 3
    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->l0(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gatt.setCharacteristicNotification("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", false)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {p0, v4, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 6
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    const/4 v0, 0x2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling notifications and indications for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatt.writeDescriptor("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value=0x00-00)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 9
    invoke-direct {p0, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Q0(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic x1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->k(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic y(Lno/nordicsemi/android/ble/BleManagerHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->r:Z

    return p0
.end method

.method private y0(I)Z
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->q:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->r:Z

    .line 3
    iget-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_3

    .line 4
    iget-boolean v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    const/4 v4, 0x3

    .line 5
    iput v4, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->s:I

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    const-string v6, "Disconnecting..."

    goto :goto_0

    :cond_0
    const-string v6, "Cancelling connection..."

    .line 6
    :goto_0
    invoke-direct {p0, v5, v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v3, :cond_1

    .line 8
    new-instance v6, Lno/nordicsemi/android/ble/l0;

    invoke-direct {v6, v5}, Lno/nordicsemi/android/ble/l0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 9
    new-instance v6, Lno/nordicsemi/android/ble/k0;

    invoke-direct {v6, v5}, Lno/nordicsemi/android/ble/k0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z1(Lno/nordicsemi/android/ble/BleManagerHandler$f;)V

    :cond_1
    const-string v6, "gatt.disconnect()"

    .line 10
    invoke-direct {p0, v4, v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    if-eqz v3, :cond_2

    return v0

    .line 12
    :cond_2
    iput v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->s:I

    const/4 v1, 0x4

    const-string v3, "Disconnected"

    .line 13
    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->f0()V

    .line 15
    new-instance v1, Lno/nordicsemi/android/ble/q0;

    invoke-direct {v1, v5}, Lno/nordicsemi/android/ble/q0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y1(Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 16
    new-instance v1, Lno/nordicsemi/android/ble/o0;

    invoke-direct {v1, v5, p1}, Lno/nordicsemi/android/ble/o0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z1(Lno/nordicsemi/android/ble/BleManagerHandler$f;)V

    .line 17
    :cond_3
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    if-eqz p1, :cond_7

    .line 18
    iget-object v1, p1, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v3, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v1, v3, :cond_7

    .line 19
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_5

    if-eqz v2, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->C()V

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 22
    :cond_7
    :goto_3
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    return v0
.end method

.method static synthetic y1(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/x2/b;->d(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic z(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->r:Z

    return p1
.end method

.method private z0(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    .line 3
    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->l0(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.setCharacteristicNotification("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", true)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 6
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    const/4 v0, 0x2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling indications for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatt.writeDescriptor("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value=0x02-00)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    .line 9
    invoke-direct {p0, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Q0(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic z1(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lno/nordicsemi/android/ble/x1;->m(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic F1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->E1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    return-void
.end method

.method protected K1(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected L1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected M1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected N1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected O1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected P1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected Q1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected R1()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected S1()V
    .locals 0

    return-void
.end method

.method final T0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    return v0
.end method

.method protected U0(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method protected U1()V
    .locals 0

    return-void
.end method

.method protected abstract V0(Landroid/bluetooth/BluetoothGatt;)Z
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected V1(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected abstract W1()V
.end method

.method public synthetic Z0(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y0(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method a2()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->B:Lno/nordicsemi/android/ble/s2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lno/nordicsemi/android/ble/s2;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/s2;-><init>(Lno/nordicsemi/android/ble/a2;)V

    new-instance v1, Lno/nordicsemi/android/ble/e0;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/ble/e0;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler;)V

    .line 3
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/s2;->i(Lno/nordicsemi/android/ble/v2/c;)Lno/nordicsemi/android/ble/s2;

    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->B:Lno/nordicsemi/android/ble/s2;

    :cond_0
    return-void
.end method

.method final b(Lno/nordicsemi/android/ble/Request;)V
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->h:Ljava/util/Deque;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->g:Ljava/util/Deque;

    .line 2
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lno/nordicsemi/android/ble/Request;->n:Z

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    return-void
.end method

.method final c(Lno/nordicsemi/android/ble/q2;)V
    .locals 2
    .param p1    # Lno/nordicsemi/android/ble/q2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    .line 2
    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    .line 3
    iget-object p1, p1, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    if-ne p1, v1, :cond_0

    .line 4
    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;

    const/16 p1, 0xa

    .line 5
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->y0(I)Z

    return-void

    .line 6
    :cond_0
    sget-object v0, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->f0()V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    return-void
.end method

.method final d0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->g:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->h:Ljava/util/Deque;

    .line 3
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    const/4 v3, -0x7

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, v1, v3}, Lno/nordicsemi/android/ble/q2;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 6
    :cond_1
    iget-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    if-eq v4, v2, :cond_2

    .line 7
    invoke-virtual {v2, v1, v3}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 8
    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->y:Lno/nordicsemi/android/ble/Request;

    .line 9
    :cond_2
    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->C:Lno/nordicsemi/android/ble/v1;

    .line 10
    iget-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->z:Lno/nordicsemi/android/ble/l2;

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v2, v1, v3}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 12
    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->z:Lno/nordicsemi/android/ble/l2;

    .line 13
    :cond_3
    iget-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {v2, v1, v3}, Lno/nordicsemi/android/ble/q2;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 15
    iput-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->x:Lno/nordicsemi/android/ble/c2;

    const/4 v0, 0x5

    .line 16
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->y0(I)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->I1(Z)V

    :goto_0
    return-void
.end method

.method f0()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->d:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->r()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->d:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {v1}, Lno/nordicsemi/android/ble/w1;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler;->H0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    const-string v3, "Cache refreshed"

    .line 8
    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    const-string v3, "Refreshing failed"

    .line 9
    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v1, 0x3

    const-string v3, "gatt.close()"

    .line 10
    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->G1(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :catchall_0
    :try_start_3
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->c:Landroid/bluetooth/BluetoothGatt;

    :cond_2
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->t:Z

    .line 14
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->r:Z

    .line 15
    iget-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->A:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 16
    iget-object v3, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->g:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 17
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->h:Ljava/util/Deque;

    .line 18
    iput-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;

    .line 19
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->n:Z

    .line 20
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method j0()Lno/nordicsemi/android/ble/v2/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/v0;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/v0;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler;)V

    return-object v0
.end method

.method public k0()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->b:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method final m0()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->s:I

    return v0
.end method

.method public synthetic m1(Lno/nordicsemi/android/ble/d2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->l1(Lno/nordicsemi/android/ble/d2;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method final n0()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->u:I

    return v0
.end method

.method o0(Ljava/lang/Object;)Lno/nordicsemi/android/ble/s2;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/ble/s2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lno/nordicsemi/android/ble/s2;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/s2;-><init>(Lno/nordicsemi/android/ble/a2;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->A:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/s2;->a()Lno/nordicsemi/android/ble/s2;

    return-object v0
.end method

.method public synthetic o1(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->n1(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method p0(Lno/nordicsemi/android/ble/w1;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/w1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->d:Lno/nordicsemi/android/ble/w1;

    .line 2
    iput-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->f:Landroid/os/Handler;

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected q0(Landroid/bluetooth/BluetoothGatt;)Ljava/util/Deque;
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            ")",
            "Ljava/util/Deque<",
            "Lno/nordicsemi/android/ble/Request;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic q1(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->p1(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method protected abstract r0()V
.end method

.method public synthetic s1(Lno/nordicsemi/android/ble/p2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->r1(Lno/nordicsemi/android/ble/p2;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
