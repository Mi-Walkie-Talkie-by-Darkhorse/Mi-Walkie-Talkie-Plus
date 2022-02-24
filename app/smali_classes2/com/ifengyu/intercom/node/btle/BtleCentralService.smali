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
.field private static final q:Ljava/util/UUID;

.field private static final r:Ljava/util/UUID;

.field private static final s:Ljava/util/UUID;

.field private static final t:Ljava/util/UUID;

.field private static final u:Ljava/util/UUID;

.field private static final v:Ljava/util/UUID;

.field private static final w:Ljava/util/UUID;


# instance fields
.field private a:Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;

.field private b:Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;

.field private volatile c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private volatile d:Lcom/ifengyu/intercom/node/btle/f;

.field private volatile e:Lcom/ifengyu/intercom/node/btle/b;

.field private f:Lcom/ifengyu/intercom/node/btle/ConnectState;

.field private volatile g:Lcom/ifengyu/intercom/node/btle/i;

.field private volatile h:Lcom/ifengyu/intercom/node/btle/h;

.field private volatile i:Lcom/ifengyu/intercom/node/btle/e;

.field private volatile j:Lcom/ifengyu/intercom/node/btle/d;

.field private k:I

.field private volatile l:Z

.field private volatile m:Z

.field protected n:Landroid/os/HandlerThread;

.field private o:I

.field private p:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000aee7-0000-1000-8000-00805f9b34fb"

    .line 1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Ljava/util/UUID;

    const-string v0, "0000fdab-0000-1000-8000-00805f9b34fb"

    .line 2
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Ljava/util/UUID;

    const-string v0, "0000fee7-0000-1000-8000-00805f9b34fb"

    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s:Ljava/util/UUID;

    const-string v0, "0000aec7-0000-1000-8000-00805f9b34fb"

    .line 4
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->t:Ljava/util/UUID;

    const-string v0, "0000aec8-0000-1000-8000-00805f9b34fb"

    .line 5
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->u:Ljava/util/UUID;

    const-string v0, "0000feab-0000-1000-8000-00805f9b34fb"

    .line 6
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->v:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 7
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->w:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l:Z

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Z

    return-void
.end method

.method private a(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->t()Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 34
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupCommonDataChannelService() gattService udid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BtleCentralService"

    invoke-static {v5, v4}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :try_start_0
    sget-object v4, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->u:Ljava/util/UUID;

    invoke-static {v2, v4}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 37
    sget-object v6, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->t:Ljava/util/UUID;

    invoke-static {v2, v6}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    .line 38
    sget-object v7, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Ljava/util/UUID;

    invoke-virtual {v3, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 39
    sget-object v7, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->v:Ljava/util/UUID;

    invoke-static {v2, v7}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p:Landroid/bluetooth/BluetoothGattCharacteristic;
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "Trying to subscribe to intercom services"

    .line 40
    invoke-static {v5, v2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b(Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 42
    sget-object v2, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Ljava/util/UUID;

    invoke-virtual {v3, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b(Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 44
    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(ILandroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    :catch_0
    const-string v2, "Could not find all the walktalk characteristics in MiTalk service"

    .line 45
    invoke-static {v5, v2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/b;->h()V

    .line 47
    new-instance p1, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v0, "Some characteristics were missing from clockwork service"

    invoke-direct {p1, v0}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/ifengyu/intercom/node/btle/i;

    invoke-direct {v0, p0, p0, p2}, Lcom/ifengyu/intercom/node/btle/i;-><init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/BtleCentralService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/node/btle/i;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 51
    :goto_0
    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/e;

    if-nez p2, :cond_1

    .line 52
    new-instance p2, Lcom/ifengyu/intercom/node/btle/e;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    invoke-direct {p2, p1, v0}, Lcom/ifengyu/intercom/node/btle/e;-><init>(ILcom/ifengyu/intercom/node/btle/i;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/e;

    goto :goto_1

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/e;

    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/node/btle/e;->a(Lcom/ifengyu/intercom/node/btle/i;)V

    .line 54
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/d;

    if-nez p1, :cond_2

    .line 55
    new-instance p1, Lcom/ifengyu/intercom/node/btle/d;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/btle/d;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/d;

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h:Lcom/ifengyu/intercom/node/btle/h;

    if-nez p1, :cond_3

    .line 57
    new-instance p1, Lcom/ifengyu/intercom/node/btle/h;

    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    invoke-direct {p1, p2, v0}, Lcom/ifengyu/intercom/node/btle/h;-><init>(Lcom/ifengyu/intercom/node/btle/d;Lcom/ifengyu/intercom/node/btle/i;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h:Lcom/ifengyu/intercom/node/btle/h;

    goto :goto_2

    .line 58
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h:Lcom/ifengyu/intercom/node/btle/h;

    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {p1, p2, v0}, Lcom/ifengyu/intercom/node/btle/h;->a(Lcom/ifengyu/intercom/node/btle/d;Lcom/ifengyu/intercom/node/btle/i;)V

    :goto_2
    return-void
.end method

.method private b(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscribing to characteristic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtleCentralService"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p2, 0x30

    if-nez v0, :cond_0

    const-string p1, "no indicate and notify"

    .line 20
    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 22
    sget-object v0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->w:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_1

    const-string v0, "set indication"

    .line 23
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    :cond_1
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_2

    const-string p2, "set notification"

    .line 25
    invoke-static {v1, p2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 27
    :cond_2
    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattDescriptor;)V

    return-void
.end method

.method protected static b(Ljava/lang/Exception;)V
    .locals 3

    .line 28
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 29
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtleCentralService"

    invoke-static {v1, v0, p0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private c(Z)V
    .locals 2

    const-string v0, "BtleCentralService"

    const-string v1, "Interrupting connection thread"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d:Lcom/ifengyu/intercom/node/btle/f;

    if-nez p1, :cond_0

    const-string p1, "No connection thread to interrupt"

    .line 3
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d:Lcom/ifengyu/intercom/node/btle/f;

    if-ne p1, v1, :cond_1

    const-string p1, "Interrupting self, warning..."

    .line 5
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d:Lcom/ifengyu/intercom/node/btle/f;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method private s()V
    .locals 9

    const-string v0, "BtleCentralService"

    const-string v1, "In connectToDevice"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 5
    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    .line 6
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v8, Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    new-instance v0, Lcom/ifengyu/intercom/node/btle/f;

    iget-object v7, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/ifengyu/intercom/node/btle/f;-><init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/BtleCentralService;Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Landroid/os/Handler;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/f;)V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d()Lcom/ifengyu/intercom/node/btle/f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private t()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/b;->d()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMTGattServices uuid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BtleCentralService"

    invoke-static {v4, v3}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private u()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const-string v0, "BtleCentralService"

    const-string v1, "Request connection priority high"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/b;->a(I)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c(Z)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->a()V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got bluetooth exception when disconnecting\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtleCentralService"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected declared-synchronized a(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BtleCentralService"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xc

    if-ne p1, p2, :cond_1

    .line 84
    sget-object p1, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    .line 85
    iget-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l:Z

    const-string p1, "BtleCentralService"

    const-string p2, "Refreshing gatt as a precaution"

    .line 87
    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/b;->h()V

    :cond_0
    const-wide/16 p1, 0x3e8

    .line 89
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 90
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p()V

    goto :goto_0

    :cond_1
    const/16 p2, 0xd

    if-ne p1, p2, :cond_2

    .line 91
    sget-object p1, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    .line 92
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtleCentralService"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/GattException;)V

    const-string p1, "Requesting connection priority"

    .line 26
    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->u()V

    const-string p1, "Requesting connection mtu"

    .line 28
    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/b;->i()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:I

    const-string p1, "Setting up Common Data UserChannel Service"

    .line 30
    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:I

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(I)V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->c:Lcom/ifengyu/intercom/node/btle/ConnectState;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->u:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h:Lcom/ifengyu/intercom/node/btle/h;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/h;->a([B)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->v:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h:Lcom/ifengyu/intercom/node/btle/h;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/h;->b([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    .line 10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->t:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/btle/i;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BtleCentralService"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Lcom/ifengyu/intercom/node/btle/GattException;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 76
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l:Z

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

    .line 77
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got gatt status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".shouldRefreshGatt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ". Referashing gatt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtleCentralService"

    .line 81
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/b;->h()V

    :cond_2
    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/node/btle/f;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d:Lcom/ifengyu/intercom/node/btle/f;

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "BtleCentralService"

    const-string v1, "onError"

    .line 6
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b(Ljava/lang/Exception;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c(Z)V

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

    .line 12
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", received connection retry intent for device address: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d()Lcom/ifengyu/intercom/node/btle/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d()Lcom/ifengyu/intercom/node/btle/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/f;->a()V

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelConnection byUser:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtleCentralService"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Z

    .line 19
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b()V

    const/4 p1, 0x1

    .line 20
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c(Z)V

    .line 21
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q()V

    .line 22
    sget-object p1, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->t:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BtleCentralService"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v2, Lcom/ifengyu/intercom/node/btle/ConnectState;->c:Lcom/ifengyu/intercom/node/btle/ConnectState;

    if-eq v0, v2, :cond_0

    const-string p1, "Outgoing characteristic write failed because device has not connected."

    .line 60
    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 62
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLE write took "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected declared-synchronized a(Lcom/ifengyu/intercom/node/btle/ConnectState;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 69
    monitor-exit p0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    const-string v0, "BtleCentralService"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Expected state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Context: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x0

    .line 71
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected b()V
    .locals 5

    const-string v0, "doShutdownWork: "

    const-string v1, "BtleCentralService"

    .line 2
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/btle/i;->a()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g:Lcom/ifengyu/intercom/node/btle/i;

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/d;

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/d;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/node/btle/d;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/d;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v3

    .line 9
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/e;

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/e;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/node/btle/e;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/e;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v3

    .line 13
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 14
    :goto_3
    iput-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h:Lcom/ifengyu/intercom/node/btle/h;

    goto :goto_6

    .line 15
    :goto_4
    iput-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/e;

    .line 16
    throw v0

    .line 17
    :goto_5
    iput-object v2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/d;

    .line 18
    throw v0

    :cond_3
    :goto_6
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Z

    return-void
.end method

.method public c()Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-object v0
.end method

.method protected d()Lcom/ifengyu/intercom/node/btle/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d:Lcom/ifengyu/intercom/node/btle/f;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:I

    return v0
.end method

.method public f()Lcom/ifengyu/intercom/node/btle/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    return-object v0
.end method

.method public g()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j:Lcom/ifengyu/intercom/node/btle/d;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o:I

    return v0
.end method

.method public i()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i:Lcom/ifengyu/intercom/node/btle/e;

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Z)V

    return-void
.end method

.method public k()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:I

    return v0
.end method

.method protected declared-synchronized l()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->c:Lcom/ifengyu/intercom/node/btle/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized m()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized n()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;-><init>(Lcom/ifengyu/intercom/node/btle/BtleCentralService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "BtleCentralService"

    const-string v1, "onCreate"

    .line 2
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/service/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;-><init>(Lcom/ifengyu/intercom/node/btle/BtleCentralService;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a:Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;-><init>(Lcom/ifengyu/intercom/node/btle/BtleCentralService;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b:Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "BtleCentralService"

    const-string v1, "onDestroy"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a:Lcom/ifengyu/intercom/node/btle/BluetoothStateReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b:Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a()V

    .line 7
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q/d;->e:Lcom/ifengyu/intercom/node/p;

    iget-object v0, v0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/g;

    const/4 v2, 0x0

    .line 8
    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/node/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStartCommand() current state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BtleCentralService"

    invoke-static {p3, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "connection_config"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "config: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const-string v0, "notReConn"

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b(Z)V

    const-string v0, "ble_priority"

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->u()V

    return v2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r()V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 8
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestConnectionPriority error, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "connection_remove"

    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "has connected, nothing to do"

    .line 12
    invoke-static {p3, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "connecting, interrupt current thread and restart a new connection."

    .line 14
    invoke-static {p3, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Z)V

    .line 16
    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p()V

    goto :goto_1

    :cond_4
    const-string p1, "bluetooth state off, please enable it first."

    .line 19
    invoke-static {p3, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "DisConnected, nothing to do."

    .line 21
    invoke-static {p3, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    if-eqz p1, :cond_7

    .line 23
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a()V

    .line 24
    :cond_7
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Z)V

    :goto_1
    return v2
.end method

.method protected declared-synchronized p()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BtleCentralService"

    const-string v1, "maybeStartConnection"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/node/btle/b;

    invoke-direct {v1, p0, p0}, Lcom/ifengyu/intercom/node/btle/b;-><init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/j;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const-string v0, "BtleCentralService"

    const-string v1, "Not starting connection as the Bluetooth adapter is not on"

    .line 6
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 10
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create BluetoothGattHelper"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k:I

    return-void
.end method

.method protected declared-synchronized r()V
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

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e:Lcom/ifengyu/intercom/node/btle/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
