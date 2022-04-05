.class Lcom/ifengyu/blelib/b/e$b;
.super Lno/nordicsemi/android/ble/u1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/blelib/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic H:Lcom/ifengyu/blelib/b/e;


# direct methods
.method private constructor <init>(Lcom/ifengyu/blelib/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-direct {p0}, Lno/nordicsemi/android/ble/u1$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/blelib/b/e;Lcom/ifengyu/blelib/b/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/blelib/b/e$b;-><init>(Lcom/ifengyu/blelib/b/e;)V

    return-void
.end method


# virtual methods
.method protected c(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 7
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-virtual {v0}, Lcom/ifengyu/blelib/b/e;->t()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/b/e;->x()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, v1, Lcom/ifengyu/blelib/b/e;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v1, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/b/e;->s()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, v1, Lcom/ifengyu/blelib/b/e;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    iget-object v0, v0, Lcom/ifengyu/blelib/b/e;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

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

    :goto_0
    iget-object v3, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    iget-object v3, v3, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportWrite:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    iget-object v3, v3, Lcom/ifengyu/blelib/b/e;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    iget-object v4, v4, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportNotify: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-virtual {v4}, Lcom/ifengyu/blelib/b/e;->v()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-virtual {v4}, Lcom/ifengyu/blelib/b/e;->w()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    iput-object p1, v4, Lcom/ifengyu/blelib/b/e;->p:Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    iget-object p1, p1, Lcom/ifengyu/blelib/b/e;->p:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-lez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    iget-object v4, v4, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportUpgradeWrite: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    iget-object v4, p1, Lcom/ifengyu/blelib/b/e;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v4, :cond_6

    iget-object p1, p1, Lcom/ifengyu/blelib/b/e;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method protected f()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    iget-object v1, v0, Lcom/ifengyu/blelib/b/e;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/b/e;Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/r2;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/blelib/e/a;

    invoke-direct {v1}, Lcom/ifengyu/blelib/e/a;-><init>()V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/r2;->a(Lno/nordicsemi/android/ble/data/b;)Lno/nordicsemi/android/ble/r2;

    new-instance v1, Lcom/ifengyu/blelib/b/e$c;

    iget-object v2, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/blelib/b/e$c;-><init>(Lcom/ifengyu/blelib/b/e;Lcom/ifengyu/blelib/b/e$a;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/r2;->a(Lno/nordicsemi/android/ble/u2/b;)Lno/nordicsemi/android/ble/r2;

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-static {v0}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/b/e;)Lno/nordicsemi/android/ble/k2;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/b/e;I)Lno/nordicsemi/android/ble/e2;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/blelib/b/e$b$d;

    invoke-direct {v2, p0}, Lcom/ifengyu/blelib/b/e$b$d;-><init>(Lcom/ifengyu/blelib/b/e$b;)V

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/e2;->a(Lno/nordicsemi/android/ble/u2/f;)Lno/nordicsemi/android/ble/e2;

    new-instance v2, Lcom/ifengyu/blelib/b/e$b$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/blelib/b/e$b$c;-><init>(Lcom/ifengyu/blelib/b/e$b;)V

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/e2;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/e2;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/k2;->a(Lno/nordicsemi/android/ble/f2;)Lno/nordicsemi/android/ble/k2;

    iget-object v1, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    iget-object v2, v1, Lcom/ifengyu/blelib/b/e;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v1, v2}, Lcom/ifengyu/blelib/b/e;->b(Lcom/ifengyu/blelib/b/e;Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/t2;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/blelib/b/e$b$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/blelib/b/e$b$b;-><init>(Lcom/ifengyu/blelib/b/e$b;)V

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/t2;

    new-instance v2, Lcom/ifengyu/blelib/b/e$b$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/blelib/b/e$b$a;-><init>(Lcom/ifengyu/blelib/b/e$b;)V

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/j;)Lno/nordicsemi/android/ble/t2;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/k2;->a(Lno/nordicsemi/android/ble/f2;)Lno/nordicsemi/android/ble/k2;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->a()V

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-virtual {v0}, Lcom/ifengyu/blelib/b/e;->o()Lcom/ifengyu/blelib/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-static {v1, v0}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/b/e;Lcom/ifengyu/blelib/d/c;)[B

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-virtual {v1, v0}, Lcom/ifengyu/blelib/b/e;->a([B)V

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ifengyu/blelib/b/e;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object v1, v0, Lcom/ifengyu/blelib/b/e;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/b/e;->c(Lcom/ifengyu/blelib/b/e;[B)[B

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/b/e;->d(Lcom/ifengyu/blelib/b/e;[B)[B

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/b/e;Z)Z

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/b/e;->b(Lcom/ifengyu/blelib/b/e;[B)[B

    return-void
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e$b;->H:Lcom/ifengyu/blelib/b/e;

    iget-object v0, v0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
