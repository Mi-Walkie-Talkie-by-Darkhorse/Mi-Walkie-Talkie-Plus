.class Lcom/ifengyu/intercom/i/z0/d$b;
.super Lno/nordicsemi/android/ble/w1$b;
.source "BaseBleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/i/z0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic G:Lcom/ifengyu/intercom/i/z0/d;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/i/z0/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/i/z0/d;Lcom/ifengyu/intercom/i/z0/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/z0/d$b;-><init>(Lcom/ifengyu/intercom/i/z0/d;)V

    return-void
.end method


# virtual methods
.method protected V0(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 7
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object v0, v0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "isRequiredServiceSupported"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/z0/d;->V()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/i/z0/d;->b0()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, v1, Lcom/ifengyu/intercom/i/z0/d;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/i/z0/d;->U()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, v1, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object v0, v0, Lcom/ifengyu/intercom/i/z0/d;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v3, v0, 0x8

    if-gtz v3, :cond_1

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object v3, v3, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportWrite:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v3, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object v3, v3, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v3

    and-int/lit8 v4, v3, 0x10

    if-gtz v4, :cond_3

    and-int/lit8 v3, v3, 0x20

    if-lez v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 10
    :goto_1
    iget-object v4, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object v4, v4, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportNotify: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v4, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/i/z0/d;->Y()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    iget-object v4, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/i/z0/d;->Z()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    iput-object p1, v4, Lcom/ifengyu/intercom/i/z0/d;->p:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object p1, p1, Lcom/ifengyu/intercom/i/z0/d;->p:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 15
    :goto_2
    iget-object v4, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object v4, v4, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportUpgradeWrite: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object v4, p1, Lcom/ifengyu/intercom/i/z0/d;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v4, :cond_7

    iget-object p1, p1, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method protected W1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object v0, v0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "onServicesInvalidated"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected r0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object v0, v0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    iget-object v1, v0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z0/d;->M(Lcom/ifengyu/intercom/i/z0/d;Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/s2;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    .line 3
    invoke-virtual {v1}, Lcom/ifengyu/intercom/i/z0/d;->S()Lno/nordicsemi/android/ble/data/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/s2;->g(Lno/nordicsemi/android/ble/data/b;)Lno/nordicsemi/android/ble/s2;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    .line 4
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/s2;->i(Lno/nordicsemi/android/ble/v2/c;)Lno/nordicsemi/android/ble/s2;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/z0/d;->O(Lcom/ifengyu/intercom/i/z0/d;)Lno/nordicsemi/android/ble/l2;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    .line 6
    invoke-virtual {v1}, Lcom/ifengyu/intercom/i/z0/d;->W()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z0/d;->N(Lcom/ifengyu/intercom/i/z0/d;I)Lno/nordicsemi/android/ble/f2;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/i/z0/d$b$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/i/z0/d$b$b;-><init>(Lcom/ifengyu/intercom/i/z0/d$b;)V

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/f2;->O(Lno/nordicsemi/android/ble/v2/g;)Lno/nordicsemi/android/ble/f2;

    new-instance v2, Lcom/ifengyu/intercom/i/z0/d$b$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/i/z0/d$b$a;-><init>(Lcom/ifengyu/intercom/i/z0/d$b;)V

    .line 7
    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/f2;->I(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/f2;

    .line 8
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/l2;->H(Lno/nordicsemi/android/ble/g2;)Lno/nordicsemi/android/ble/l2;

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d$b;->G:Lcom/ifengyu/intercom/i/z0/d;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/z0/d;->P(Lno/nordicsemi/android/ble/l2;)V

    .line 10
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void
.end method
