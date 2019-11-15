.class public Lcom/ifengyu/intercom/node/btle/BtleCentralService;
.super Landroid/app/Service;
.source "BtleCentralService.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/btle/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/UUID;

.field private static final c:Ljava/util/UUID;

.field private static final d:Ljava/util/UUID;

.field private static final e:Ljava/util/UUID;

.field private static final f:Ljava/util/UUID;

.field private static final g:Ljava/util/UUID;

.field private static final h:Ljava/util/UUID;


# instance fields
.field protected a:Landroid/os/HandlerThread;

.field private i:Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;

.field private j:Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;

.field private volatile k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private volatile l:Lcom/ifengyu/intercom/node/btle/f;

.field private volatile m:Lcom/ifengyu/intercom/node/btle/b;

.field private n:Lcom/ifengyu/intercom/node/btle/ConnectState;

.field private volatile o:Lcom/ifengyu/intercom/node/btle/i;

.field private volatile p:Lcom/ifengyu/intercom/node/btle/h;

.field private volatile q:Lcom/ifengyu/intercom/node/btle/e;

.field private volatile r:Lcom/ifengyu/intercom/node/btle/d;

.field private s:I

.field private volatile t:Z

.field private volatile u:Z

.field private v:I

.field private w:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000aee7-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b:Ljava/util/UUID;

    const-string v0, "0000fdab-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Ljava/util/UUID;

    const-string v0, "0000fee7-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d:Ljava/util/UUID;

    const-string v0, "0000aec7-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Ljava/util/UUID;

    const-string v0, "0000aec8-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Ljava/util/UUID;

    const-string v0, "0000feab-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;

    iput-boolean v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->t:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->u:Z

    return-void
.end method

.method private a(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const-string v4, "BtleCentralService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupCommonDataChannelService() gattService udid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v4, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Ljava/util/UUID;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Ljava/util/UUID;

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    sget-object v6, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Ljava/util/UUID;

    invoke-virtual {v3, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Ljava/util/UUID;

    invoke-static {v0, v6}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->w:Landroid/bluetooth/BluetoothGattCharacteristic;
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "BtleCentralService"

    const-string v6, "Trying to subscribe to intercom services"

    invoke-static {v1, v6}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b(Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    sget-object v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Ljava/util/UUID;

    invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->w:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->w:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b(Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(ILandroid/bluetooth/BluetoothGattCharacteristic;)V

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "BtleCentralService"

    const-string v3, "Could not find all the walktalk characteristics in MiTalk service"

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->c()V

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v1, "Some characteristics were missing from clockwork service"

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private a(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/node/btle/i;

    invoke-direct {v0, p0, p0, p2}, Lcom/ifengyu/intercom/node/btle/i;-><init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/BtleCentralService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Lcom/ifengyu/intercom/node/btle/e;

    if-nez v0, :cond_2

    new-instance v0, Lcom/ifengyu/intercom/node/btle/e;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/node/btle/e;-><init>(ILcom/ifengyu/intercom/node/btle/i;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Lcom/ifengyu/intercom/node/btle/e;

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Lcom/ifengyu/intercom/node/btle/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/btle/d;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/btle/d;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Lcom/ifengyu/intercom/node/btle/d;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p:Lcom/ifengyu/intercom/node/btle/h;

    if-nez v0, :cond_3

    new-instance v0, Lcom/ifengyu/intercom/node/btle/h;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Lcom/ifengyu/intercom/node/btle/d;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/node/btle/h;-><init>(Lcom/ifengyu/intercom/node/btle/d;Lcom/ifengyu/intercom/node/btle/i;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p:Lcom/ifengyu/intercom/node/btle/h;

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/node/btle/i;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Lcom/ifengyu/intercom/node/btle/e;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/e;->a(Lcom/ifengyu/intercom/node/btle/i;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p:Lcom/ifengyu/intercom/node/btle/h;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Lcom/ifengyu/intercom/node/btle/d;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/node/btle/h;->a(Lcom/ifengyu/intercom/node/btle/d;Lcom/ifengyu/intercom/node/btle/i;)V

    goto :goto_2
.end method

.method private b(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const-string v0, "BtleCentralService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribing to characteristic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p2, 0x30

    if-nez v0, :cond_0

    const-string v0, "BtleCentralService"

    const-string v1, "no indicate and notify"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    sget-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1

    const-string v1, "BtleCentralService"

    const-string v2, "set indication"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    :cond_1
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_2

    const-string v1, "BtleCentralService"

    const-string v2, "set notification"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattDescriptor;)V

    goto :goto_0
.end method

.method protected static b(Ljava/lang/Exception;)V
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p0, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    const-string v1, "BtleCentralService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private c(Z)V
    .locals 2

    const-string v0, "BtleCentralService"

    const-string v1, "Interrupting connection thread"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l:Lcom/ifengyu/intercom/node/btle/f;

    if-nez v0, :cond_0

    const-string v0, "BtleCentralService"

    const-string v1, "No connection thread to interrupt"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l:Lcom/ifengyu/intercom/node/btle/f;

    if-ne v0, v1, :cond_1

    const-string v0, "BtleCentralService"

    const-string v1, "Interrupting self, warning..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l:Lcom/ifengyu/intercom/node/btle/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/f;->interrupt()V

    goto :goto_0
.end method

.method private t()V
    .locals 6

    const-string v0, "BtleCentralService"

    const-string v1, "In connectToDevice"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    sget-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BtleCentralService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/ifengyu/intercom/node/btle/f;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/btle/f;-><init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/BtleCentralService;Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Landroid/os/Handler;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/f;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m()Lcom/ifengyu/intercom/node/btle/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/f;->start()V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c(Z)V

    return-void
.end method

.method private v()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const-string v0, "BtleCentralService"

    const-string v1, "Request connection priority high"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/b;->a(I)V

    :cond_0
    return-void
.end method

.method private w()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    const-string v3, "BtleCentralService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMTGattServices uuid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->w:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method protected declared-synchronized a(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BtleCentralService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->t:Z

    const-string v0, "BtleCentralService"

    const-string v1, "Refreshing gatt as a precaution"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->c()V

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const-string v0, "BtleCentralService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/GattException;)V

    const-string v0, "BtleCentralService"

    const-string v1, "Requesting connection priority"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->v()V

    const-string v0, "BtleCentralService"

    const-string v1, "Requesting connection mtu"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->a()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->v:I

    const-string v0, "BtleCentralService"

    const-string v1, "Setting up Common Data UserChannel Service"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->v:I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(I)V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->c:Lcom/ifengyu/intercom/node/btle/ConnectState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p:Lcom/ifengyu/intercom/node/btle/h;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/h;->a([B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p:Lcom/ifengyu/intercom/node/btle/h;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/h;->b([B)V

    goto :goto_0
.end method

.method public a(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/i;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BtleCentralService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/btle/ConnectState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/ConnectState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/ifengyu/intercom/node/btle/GattException;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "BtleCentralService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got gatt status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".shouldRefreshGatt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Referashing gatt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->c()V

    :cond_2
    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/node/btle/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l:Lcom/ifengyu/intercom/node/btle/f;

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "BtleCentralService"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b(Ljava/lang/Exception;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c(Z)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const-string v0, "BtleCentralService"

    const-string v1, "handleRetryConnection"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtleCentralService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", received connection retry intent for device address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m()Lcom/ifengyu/intercom/node/btle/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m()Lcom/ifengyu/intercom/node/btle/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/f;->a()V

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 3

    const-string v0, "BtleCentralService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelConnection byUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->u:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q()V

    sget-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->c:Lcom/ifengyu/intercom/node/btle/ConnectState;

    if-eq v0, v1, :cond_0

    const-string v0, "BtleCentralService"

    const-string v1, "Outgoing characteristic write failed because device has not connected."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-string v2, "BtleCentralService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BLE write took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected declared-synchronized a(Lcom/ifengyu/intercom/node/btle/ConnectState;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    const-string v0, "BtleCentralService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/btle/ConnectState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Expected state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/ConnectState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BtleCentralService"

    const-string v1, "maybeStartConnection"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ifengyu/intercom/node/btle/b;

    invoke-direct {v1, p0, p0}, Lcom/ifengyu/intercom/node/btle/b;-><init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/j;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const-string v0, "BtleCentralService"

    const-string v1, "Not starting connection as the Bluetooth adapter is not on"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create BluetoothGattHelper"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->t()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->u:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->u:Z

    return v0
.end method

.method protected d()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/i;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v4, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:Lcom/ifengyu/intercom/node/btle/i;

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Lcom/ifengyu/intercom/node/btle/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Lcom/ifengyu/intercom/node/btle/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/d;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v4, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Lcom/ifengyu/intercom/node/btle/d;

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Lcom/ifengyu/intercom/node/btle/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Lcom/ifengyu/intercom/node/btle/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/e;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    iput-object v4, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Lcom/ifengyu/intercom/node/btle/e;

    :goto_1
    iput-object v4, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p:Lcom/ifengyu/intercom/node/btle/h;

    :cond_3
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "BtleCentralService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShutdownWork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v4, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Lcom/ifengyu/intercom/node/btle/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Lcom/ifengyu/intercom/node/btle/d;

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "BtleCentralService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShutdownWork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iput-object v4, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Lcom/ifengyu/intercom/node/btle/e;

    goto :goto_1

    :catchall_1
    move-exception v0

    iput-object v4, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Lcom/ifengyu/intercom/node/btle/e;

    throw v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Lcom/ifengyu/intercom/node/btle/d;

    return-object v0
.end method

.method public f()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Lcom/ifengyu/intercom/node/btle/e;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->v:I

    return v0
.end method

.method protected declared-synchronized h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "BtleCentralService"

    const-string v1, "Request connection priority low-power"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized i()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized j()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->c:Lcom/ifengyu/intercom/node/btle/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized k()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected l()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->i()V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BtleCentralService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got bluetooth exception when disconnecting\uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/GattException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected m()Lcom/ifengyu/intercom/node/btle/f;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l:Lcom/ifengyu/intercom/node/btle/f;

    return-object v0
.end method

.method public n()Lcom/ifengyu/intercom/node/btle/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    return-object v0
.end method

.method public o()I
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;-><init>(Lcom/ifengyu/intercom/node/btle/BtleCentralService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "BtleCentralService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/service/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;-><init>(Lcom/ifengyu/intercom/node/btle/BtleCentralService;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;-><init>(Lcom/ifengyu/intercom/node/btle/BtleCentralService;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "BtleCentralService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l()V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/a/d;->e:Lcom/ifengyu/intercom/node/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/h;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/ifengyu/intercom/node/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v0, "BtleCentralService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand() current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "connection_config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    const-string v0, "BtleCentralService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notReConn"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b(Z)V

    const-string v0, "ble_priority"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->v()V

    :goto_0
    return v4

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h()V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BtleCentralService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestConnectionPriority error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/GattException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "connection_remove"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BtleCentralService"

    const-string v1, "has connected, nothing to do"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BtleCentralService"

    const-string v1, "connecting, interrupt current thread and restart a new connection."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Z)V

    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b()V

    goto :goto_0

    :cond_4
    const-string v0, "BtleCentralService"

    const-string v1, "bluetooth state off, please enable it first."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BtleCentralService"

    const-string v1, "DisConnected, nothing to do."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Lcom/ifengyu/intercom/node/btle/b;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l()V

    :cond_7
    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Z)V

    goto/16 :goto_0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s:I

    return v0
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s:I

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Z)V

    return-void
.end method

.method public s()Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-object v0
.end method
