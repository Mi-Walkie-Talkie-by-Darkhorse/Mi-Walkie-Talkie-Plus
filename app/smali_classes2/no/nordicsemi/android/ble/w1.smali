.class abstract Lno/nordicsemi/android/ble/w1;
.super Lno/nordicsemi/android/ble/j2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/ble/w1$g;,
        Lno/nordicsemi/android/ble/w1$e;,
        Lno/nordicsemi/android/ble/w1$f;
    }
.end annotation


# instance fields
.field private A:Lno/nordicsemi/android/ble/k2;

.field private final B:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lno/nordicsemi/android/ble/r2;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lno/nordicsemi/android/ble/r2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private D:Lno/nordicsemi/android/ble/t1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final E:Landroid/content/BroadcastReceiver;

.field private final F:Landroid/content/BroadcastReceiver;

.field private final G:Landroid/bluetooth/BluetoothGattCallback;

.field private final a:Ljava/lang/Object;

.field private b:Landroid/bluetooth/BluetoothDevice;

.field private c:Landroid/bluetooth/BluetoothGatt;

.field private d:Lno/nordicsemi/android/ble/u1;

.field private e:Lno/nordicsemi/android/ble/x1;

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

.field private l:Z

.field private m:J

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:I

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "[B>;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            "[B>;"
        }
    .end annotation
.end field

.field private y:Lno/nordicsemi/android/ble/b2;

.field private z:Lno/nordicsemi/android/ble/Request;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lno/nordicsemi/android/ble/j2;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/ble/w1;->n:I

    iput v0, p0, Lno/nordicsemi/android/ble/w1;->t:I

    const/16 v0, 0x17

    iput v0, p0, Lno/nordicsemi/android/ble/w1;->v:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->B:Ljava/util/HashMap;

    new-instance v0, Lno/nordicsemi/android/ble/w1$a;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/w1$a;-><init>(Lno/nordicsemi/android/ble/w1;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->E:Landroid/content/BroadcastReceiver;

    new-instance v0, Lno/nordicsemi/android/ble/w1$b;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/w1$b;-><init>(Lno/nordicsemi/android/ble/w1;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->F:Landroid/content/BroadcastReceiver;

    new-instance v0, Lno/nordicsemi/android/ble/w1$c;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/w1$c;-><init>(Lno/nordicsemi/android/ble/w1;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->G:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;I)I
    .locals 0

    iput p1, p0, Lno/nordicsemi/android/ble/w1;->t:I

    return p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;J)J
    .locals 0

    iput-wide p1, p0, Lno/nordicsemi/android/ble/w1;->m:J

    return-wide p1
.end method

.method private static a(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 2
    .param p0    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/2addr p1, v1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Ljava/util/Deque;)Ljava/util/Deque;
    .locals 0

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    return-object p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/Request;)Lno/nordicsemi/android/ble/Request;
    .locals 0

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    return-object p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/b2;)Lno/nordicsemi/android/ble/b2;
    .locals 0

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    return-object p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;
    .locals 0

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    invoke-virtual {v0, p1, p2}, Lno/nordicsemi/android/ble/u1;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    instance-of v1, v0, Lno/nordicsemi/android/ble/t2;

    if-eqz v1, :cond_3

    check-cast v0, Lno/nordicsemi/android/ble/t2;

    sget-object v1, Lno/nordicsemi/android/ble/w1$d;->a:[I

    iget-object v2, v0, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "[Server] Indication sent"

    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "[Server] Notification sent"

    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    :goto_0
    iget-object v1, v0, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lno/nordicsemi/android/ble/t2;->b(Landroid/bluetooth/BluetoothDevice;[B)Z

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/t2;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/Request;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->j:Z

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->l:Z

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->k:Z

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->i:Z

    iput v1, p0, Lno/nordicsemi/android/ble/w1;->t:I

    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->m()Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    const-string v0, "Connection attempt timed out"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->b()V

    new-instance v0, Lno/nordicsemi/android/ble/f0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/f0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    new-instance v0, Lno/nordicsemi/android/ble/p0;

    invoke-direct {v0, p1, p2}, Lno/nordicsemi/android/ble/p0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->r:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const-string v1, "Disconnected"

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->b()V

    new-instance v0, Lno/nordicsemi/android/ble/v0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/v0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    new-instance v0, Lno/nordicsemi/android/ble/r0;

    invoke-direct {v0, p1, p2}, Lno/nordicsemi/android/ble/r0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    if-eqz p2, :cond_2

    iget-object v0, p2, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_1
    const-string p2, "Connection lost"

    invoke-direct {p0, v1, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-instance p2, Lno/nordicsemi/android/ble/w0;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/ble/w0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    new-instance p2, Lno/nordicsemi/android/ble/k0;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/ble/k0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->i()V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/w2/b;->b(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lno/nordicsemi/android/ble/v2/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-instance v0, Lno/nordicsemi/android/ble/l0;

    invoke-direct {v0, p1, p2, p3}, Lno/nordicsemi/android/ble/l0;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/w2/b;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private a(Lno/nordicsemi/android/ble/w1$e;)V
    .locals 2
    .param p1    # Lno/nordicsemi/android/ble/w1$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    iget-object v0, v0, Lno/nordicsemi/android/ble/u1;->d:Lno/nordicsemi/android/ble/w2/a;

    if-eqz v0, :cond_0

    new-instance v1, Lno/nordicsemi/android/ble/q0;

    invoke-direct {v1, p1, v0}, Lno/nordicsemi/android/ble/q0;-><init>(Lno/nordicsemi/android/ble/w1$e;Lno/nordicsemi/android/ble/w2/a;)V

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/w1;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1$e;Lno/nordicsemi/android/ble/w2/a;)V
    .locals 0

    invoke-interface {p0, p1}, Lno/nordicsemi/android/ble/w1$e;->a(Lno/nordicsemi/android/ble/w2/a;)V

    return-void
.end method

.method private a(Lno/nordicsemi/android/ble/w1$f;)V
    .locals 2
    .param p1    # Lno/nordicsemi/android/ble/w1$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    iget-object v0, v0, Lno/nordicsemi/android/ble/u1;->c:Lno/nordicsemi/android/ble/v1;

    if-eqz v0, :cond_0

    new-instance v1, Lno/nordicsemi/android/ble/u0;

    invoke-direct {v1, p1, v0}, Lno/nordicsemi/android/ble/u0;-><init>(Lno/nordicsemi/android/ble/w1$f;Lno/nordicsemi/android/ble/v1;)V

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/w1;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1$f;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p0, p1}, Lno/nordicsemi/android/ble/w1$f;->a(Lno/nordicsemi/android/ble/v1;)V

    return-void
.end method

.method private a(Lno/nordicsemi/android/ble/w1$g;)V
    .locals 2
    .param p1    # Lno/nordicsemi/android/ble/w1$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    iget-object v0, v0, Lno/nordicsemi/android/ble/u1;->e:Lno/nordicsemi/android/ble/w2/b;

    if-eqz v0, :cond_0

    new-instance v1, Lno/nordicsemi/android/ble/y;

    invoke-direct {v1, p1, v0}, Lno/nordicsemi/android/ble/y;-><init>(Lno/nordicsemi/android/ble/w1$g;Lno/nordicsemi/android/ble/w2/b;)V

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/w1;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1$g;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    invoke-interface {p0, p1}, Lno/nordicsemi/android/ble/w1$g;->a(Lno/nordicsemi/android/ble/w2/b;)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$e;)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$g;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    return-void
.end method

.method private a(I)Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

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

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gatt.requestConnectionPriority("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result p1

    return p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method private a(III)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Requesting preferred PHYs..."

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.setPreferredPhy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lno/nordicsemi/android/ble/x2/a;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lno/nordicsemi/android/ble/x2/a;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", coding option = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lno/nordicsemi/android/ble/x2/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setPreferredPhy(III)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/b2;)Z
    .locals 10
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lno/nordicsemi/android/ble/b2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_8

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->g()Landroid/content/Context;

    move-result-object v5

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    if-nez v0, :cond_1

    const-string v0, "gatt.close()"

    invoke-direct {p0, v7, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "wait(200)"

    invoke-direct {p0, v7, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const-wide/16 v8, 0xc8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_1
    :try_start_4
    iput-boolean v6, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lno/nordicsemi/android/ble/w1;->m:J

    iput v3, p0, Lno/nordicsemi/android/ble/w1;->t:I

    const-string p2, "Connecting..."

    invoke-direct {p0, v4, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-instance p2, Lno/nordicsemi/android/ble/g0;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/ble/g0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    new-instance p2, Lno/nordicsemi/android/ble/y0;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/ble/y0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    const-string p1, "gatt.connect()"

    invoke-direct {p0, v7, p1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    monitor-exit v1

    return v3

    :cond_2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->E:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->F:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :catch_0
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p2, :cond_3

    return v6

    :cond_3
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/b2;->m()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->r:Z

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    :cond_4
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/b2;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Connecting..."

    goto :goto_1

    :cond_5
    const-string v0, "Retrying..."

    :goto_1
    invoke-direct {p0, v4, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iput v3, p0, Lno/nordicsemi/android/ble/w1;->t:I

    new-instance v0, Lno/nordicsemi/android/ble/c0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/c0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    new-instance v0, Lno/nordicsemi/android/ble/e0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/e0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lno/nordicsemi/android/ble/w1;->m:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/b2;->j()I

    move-result v9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatt = device.connectGatt(autoConnect = false, TRANSPORT_LE, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lno/nordicsemi/android/ble/x2/a;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v7, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v6, 0x0

    iget-object v7, p0, Lno/nordicsemi/android/ble/w1;->G:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v8, 0x2

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    goto :goto_2

    :cond_6
    const/16 p2, 0x17

    if-lt v0, p2, :cond_7

    const-string p2, "gatt = device.connectGatt(autoConnect = false, TRANSPORT_LE)"

    invoke-direct {p0, v7, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->G:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v5, v6, p2, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    goto :goto_2

    :cond_7
    const-string p2, "gatt = device.connectGatt(autoConnect = false)"

    invoke-direct {p0, v7, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->G:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v5, v6, p2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    :goto_2
    return v3

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_8
    :goto_3
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/p2;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    if-eqz p2, :cond_b

    if-eqz v0, :cond_a

    const/4 v0, -0x4

    goto :goto_4

    :cond_a
    const/16 v0, -0x64

    :goto_4
    invoke-virtual {p2, p1, v0}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_b
    :goto_5
    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    invoke-direct {p0, v3}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return v3
.end method

.method private a(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->e:Lno/nordicsemi/android/ble/x1;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/x1;->a()Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_7

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    aget-byte v0, v0, v1

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Server] Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    const-string v1, "indication"

    goto :goto_2

    :cond_5
    const-string v1, "notification"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server.notifyCharacteristicChanged(device, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->e:Lno/nordicsemi/android/ble/x1;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/x1;->a()Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p1, p2}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_6

    new-instance p2, Lno/nordicsemi/android/ble/z;

    invoke-direct {p2, p0}, Lno/nordicsemi/android/ble/z;-><init>(Lno/nordicsemi/android/ble/w1;)V

    invoke-virtual {p0, p2}, Lno/nordicsemi/android/ble/w1;->post(Ljava/lang/Runnable;)V

    :cond_6
    return p1

    :cond_7
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return p1

    :cond_8
    :goto_3
    return v1
.end method

.method private a(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading descriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

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

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;)Z
    .locals 0

    iget-boolean p0, p0, Lno/nordicsemi/android/ble/w1;->j:Z

    return p0
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/b2;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/b2;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->h(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->e(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->q:Z

    return p1
.end method

.method private a(Z)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lno/nordicsemi/android/ble/u1;->h:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v1, Lno/nordicsemi/android/ble/u1;->i:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->d(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/w1;I)I
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->c(I)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/w1;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/w2/b;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/w2/b;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private declared-synchronized b(Z)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->q:Z

    :cond_1
    iget-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const/4 p1, 0x0

    :try_start_1
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/k2;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/k2;->h()Lno/nordicsemi/android/ble/Request;

    move-result-object v2

    invoke-virtual {v2, p0}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    :cond_4
    move-object v2, p1

    :goto_1
    if-nez v2, :cond_6

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lno/nordicsemi/android/ble/Request;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :cond_5
    move-object v2, p1

    :cond_6
    :goto_2
    if-nez v2, :cond_8

    :try_start_2
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    if-eqz v2, :cond_7

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->q:Z

    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->j()V

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    new-instance v3, Lno/nordicsemi/android/ble/i0;

    invoke-direct {v3, v2}, Lno/nordicsemi/android/ble/i0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    new-instance v3, Lno/nordicsemi/android/ble/h0;

    invoke-direct {v3, v2}, Lno/nordicsemi/android/ble/h0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    invoke-virtual {v3}, Lno/nordicsemi/android/ble/b2;->i()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/p2;->d(Landroid/bluetooth/BluetoothDevice;)Z

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lno/nordicsemi/android/ble/Request;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    :try_start_4
    iput-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->q:Z

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->k()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :goto_3
    :try_start_5
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->q:Z

    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    instance-of v3, v2, Lno/nordicsemi/android/ble/t1;

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v3, :cond_10

    move-object v3, v2

    check-cast v3, Lno/nordicsemi/android/ble/t1;

    sget-object v6, Lno/nordicsemi/android/ble/w1$d;->a:[I

    iget-object v7, v2, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v5, :cond_c

    const/4 v7, 0x4

    if-eq v6, v7, :cond_b

    const/4 v7, 0x5

    if-eq v6, v7, :cond_a

    const/4 v7, 0x6

    if-eq v6, v7, :cond_9

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    const/16 v6, 0x4c

    goto :goto_4

    :cond_a
    const/4 v6, 0x2

    goto :goto_4

    :cond_b
    const/16 v6, 0x20

    goto :goto_4

    :cond_c
    const/16 v6, 0x10

    :goto_4
    iget-boolean v7, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_e

    iget-object v7, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v7, :cond_d

    iget-object v7, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_e

    :cond_d
    const/4 v6, 0x1

    goto :goto_5

    :cond_e
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_11

    instance-of v7, v3, Lno/nordicsemi/android/ble/a2;

    if-eqz v7, :cond_f

    move-object v7, v3

    check-cast v7, Lno/nordicsemi/android/ble/a2;

    invoke-virtual {v7}, Lno/nordicsemi/android/ble/a2;->k()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, p1}, Lno/nordicsemi/android/ble/p2;->c(Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, p1}, Lno/nordicsemi/android/ble/p2;->d(Landroid/bluetooth/BluetoothDevice;)Z

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_f
    :try_start_6
    iput-object v3, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    invoke-virtual {v3}, Lno/nordicsemi/android/ble/t1;->h()Lno/nordicsemi/android/ble/Request;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2}, Lno/nordicsemi/android/ble/p2;->c(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v3}, Lno/nordicsemi/android/ble/t1;->h()Lno/nordicsemi/android/ble/Request;

    move-result-object v2

    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    goto :goto_6

    :cond_10
    const/4 v6, 0x0

    :cond_11
    :goto_6
    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v7, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v3, v7, :cond_12

    move-object v3, v2

    check-cast v3, Lno/nordicsemi/android/ble/b2;

    invoke-virtual {v3}, Lno/nordicsemi/android/ble/b2;->i()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v3, v7}, Lno/nordicsemi/android/ble/p2;->c(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_7

    :cond_12
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/Request;->c(Landroid/bluetooth/BluetoothDevice;)V

    :goto_7
    sget-object v3, Lno/nordicsemi/android/ble/w1$d;->a:[I

    iget-object v7, v2, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v3, v3, v7

    if-eq v3, v1, :cond_1a

    if-eq v3, v4, :cond_1a

    const/16 v4, 0x15

    const-wide/16 v7, 0xc8

    const/16 v9, 0x1a

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1d

    check-cast v2, Lno/nordicsemi/android/ble/o2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sleep("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/o2;->h()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-instance v3, Lno/nordicsemi/android/ble/c;

    invoke-direct {v3, p0, v2, v0}, Lno/nordicsemi/android/ble/c;-><init>(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/o2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/o2;->h()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lno/nordicsemi/android/ble/w1;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_a

    :pswitch_1
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->w()Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Lno/nordicsemi/android/ble/s0;

    invoke-direct {v3, p0, v2, v0}, Lno/nordicsemi/android/ble/s0;-><init>(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, v3, v7, v8}, Lno/nordicsemi/android/ble/w1;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_b

    :pswitch_2
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->v()Z

    move-result v6

    goto/16 :goto_b

    :pswitch_3
    check-cast v2, Lno/nordicsemi/android/ble/g2;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_13

    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->u()Z

    move-result v6

    goto/16 :goto_b

    :cond_13
    iget-boolean v6, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v6, :cond_1d

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Lno/nordicsemi/android/ble/g2;->g(Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_4
    :try_start_7
    check-cast v2, Lno/nordicsemi/android/ble/g2;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_14

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/g2;->j()I

    move-result v0

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/g2;->i()I

    move-result v3

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/g2;->h()I

    move-result v2

    invoke-direct {p0, v0, v3, v2}, Lno/nordicsemi/android/ble/w1;->a(III)Z

    move-result v6

    goto/16 :goto_b

    :cond_14
    iget-boolean v6, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v6, :cond_1d

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Lno/nordicsemi/android/ble/g2;->g(Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_5
    :try_start_8
    check-cast v2, Lno/nordicsemi/android/ble/c2;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1d

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/c2;->h()I

    move-result v0

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Lno/nordicsemi/android/ble/a0;

    invoke-direct {v3, p0, v2, v0}, Lno/nordicsemi/android/ble/a0;-><init>(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/c2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, v3, v7, v8}, Lno/nordicsemi/android/ble/w1;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_b

    :pswitch_6
    check-cast v2, Lno/nordicsemi/android/ble/e2;

    iget v0, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/e2;->h()I

    move-result v3

    if-eq v0, v3, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_15

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/e2;->h()I

    move-result v0

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(I)Z

    move-result v6

    goto/16 :goto_b

    :cond_15
    iget-boolean v6, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v6, :cond_1d

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    iget v0, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2, p1, v0}, Lno/nordicsemi/android/ble/e2;->d(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_7
    :try_start_9
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->n()Z

    move-result v6

    goto/16 :goto_b

    :pswitch_8
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Z)Z

    move-result v6

    goto/16 :goto_b

    :pswitch_9
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->a(Z)Z

    move-result v6

    goto/16 :goto_b

    :pswitch_a
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->t()Z

    move-result v6

    goto/16 :goto_b

    :pswitch_b
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto/16 :goto_b

    :pswitch_c
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto/16 :goto_b

    :pswitch_d
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->c(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto/16 :goto_b

    :pswitch_e
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->d(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto/16 :goto_b

    :pswitch_f
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->o()Z

    move-result v6

    goto/16 :goto_b

    :pswitch_10
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->s()Z

    move-result v6

    goto/16 :goto_b

    :pswitch_11
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->p()Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_12
    :try_start_a
    check-cast v2, Lno/nordicsemi/android/ble/l2;

    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    iget v4, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2, v4}, Lno/nordicsemi/android/ble/l2;->b(I)[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_16
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    iget v3, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/l2;->b(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    :goto_8
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    goto :goto_a

    :pswitch_13
    check-cast v2, Lno/nordicsemi/android/ble/l2;

    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget v4, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2, v4}, Lno/nordicsemi/android/ble/l2;->b(I)[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_17
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget v3, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/l2;->b(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    :goto_9
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    :goto_a
    const/4 v6, 0x1

    goto/16 :goto_b

    :pswitch_14
    move-object v0, v2

    check-cast v0, Lno/nordicsemi/android/ble/t2;

    iget-object v2, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    if-eqz v2, :cond_18

    iget v3, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v0, v3}, Lno/nordicsemi/android/ble/t2;->b(I)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    :cond_18
    invoke-direct {p0, v2}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v6

    goto/16 :goto_b

    :pswitch_15
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v6

    goto/16 :goto_b

    :pswitch_16
    move-object v0, v2

    check-cast v0, Lno/nordicsemi/android/ble/t2;

    iget-object v2, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_19

    iget v3, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v0, v3}, Lno/nordicsemi/android/ble/t2;->b(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/t2;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    :cond_19
    invoke-direct {p0, v2}, Lno/nordicsemi/android/ble/w1;->f(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto :goto_b

    :pswitch_17
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->e(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto :goto_b

    :pswitch_18
    check-cast v2, Lno/nordicsemi/android/ble/k2;

    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_19
    :try_start_b
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->x()Z

    move-result v6

    goto :goto_b

    :pswitch_1a
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->q()Z

    move-result v6

    goto :goto_b

    :pswitch_1b
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->r()Z

    move-result v6

    goto :goto_b

    :pswitch_1c
    check-cast v2, Lno/nordicsemi/android/ble/b2;

    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/b2;->i()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/b2;)Z

    move-result v6

    goto :goto_b

    :cond_1a
    move-object v3, v2

    check-cast v3, Lno/nordicsemi/android/ble/t2;

    iget-object v4, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v4, :cond_1b

    iget v5, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v3, v5}, Lno/nordicsemi/android/ble/t2;->b(I)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v2, v2, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v4, Lno/nordicsemi/android/ble/Request$Type;->h:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v2, v4, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    invoke-direct {p0, v3, v0}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v6

    :cond_1d
    :goto_b
    if-nez v6, :cond_20

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v3, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v3, :cond_1e

    const/4 v3, -0x3

    goto :goto_c

    :cond_1e
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, -0x1

    goto :goto_c

    :cond_1f
    const/16 v3, -0x64

    :goto_c
    invoke-virtual {v0, v2, v3}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_20
    monitor-exit p0

    return-void

    :cond_21
    :try_start_c
    invoke-virtual {v2}, Lno/nordicsemi/android/ble/Request;->c()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
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

.method private b(I)Z
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

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Requesting new MTU..."

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.requestMtu("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

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

    invoke-direct {p0, v4, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling notifications and indications for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatt.writeDescriptor("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value=0x00-00)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lno/nordicsemi/android/ble/w1;->c(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private b(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing descriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v0, 0x3

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

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->c(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/w1;)Z
    .locals 0

    iget-boolean p0, p0, Lno/nordicsemi/android/ble/w1;->l:Z

    return p0
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->g(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->d(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->j:Z

    return p1
.end method

.method private c(I)I
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

.method static synthetic c(Lno/nordicsemi/android/ble/w1;I)I
    .locals 0

    iput p1, p0, Lno/nordicsemi/android/ble/w1;->v:I

    return p1
.end method

.method static synthetic c(Lno/nordicsemi/android/ble/w1;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic c(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->c(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic c(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/w2/b;->c(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private c(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

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

    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling indications for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatt.writeDescriptor("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value=0x02-00)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lno/nordicsemi/android/ble/w1;->c(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private c(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->l:Z

    return p1
.end method

.method static synthetic d(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->h(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic d(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lno/nordicsemi/android/ble/w2/b;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic d(Lno/nordicsemi/android/ble/w1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return-void
.end method

.method private d(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

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

    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling notifications for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatt.writeDescriptor("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value=0x01-00)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lno/nordicsemi/android/ble/w1;->c(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private d(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    sget-object v0, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

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

.method static synthetic d(Lno/nordicsemi/android/ble/w1;)Z
    .locals 0

    iget-boolean p0, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    return p0
.end method

.method static synthetic e(Lno/nordicsemi/android/ble/w1;)J
    .locals 2

    iget-wide v0, p0, Lno/nordicsemi/android/ble/w1;->m:J

    return-wide v0
.end method

.method static synthetic e(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic e(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/w2/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private e(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    return v1

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

    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

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

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private e(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    sget-object v0, Lno/nordicsemi/android/ble/u1;->k:Ljava/util/UUID;

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

.method static synthetic e(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    return p1
.end method

.method static synthetic f(Lno/nordicsemi/android/ble/w1;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic f(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->h(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic f(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0}, Lno/nordicsemi/android/ble/w2/b;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private f(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0xc

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing characteristic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v3

    invoke-static {v3}, Lno/nordicsemi/android/ble/x2/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

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

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic f(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->p:Z

    return p1
.end method

.method static synthetic g(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/u1;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    return-object p0
.end method

.method static synthetic g(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->h(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private g(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lno/nordicsemi/android/ble/u1;->i:Ljava/util/UUID;

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

.method static synthetic g(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->k:Z

    return p1
.end method

.method static synthetic h(Lno/nordicsemi/android/ble/w1;)I
    .locals 0

    iget p0, p0, Lno/nordicsemi/android/ble/w1;->n:I

    return p0
.end method

.method static synthetic h(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->j(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private h(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    sget-object v0, Lno/nordicsemi/android/ble/u1;->k:Ljava/util/UUID;

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

.method static synthetic h(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    return p1
.end method

.method static synthetic i(Lno/nordicsemi/android/ble/w1;)I
    .locals 1

    iget v0, p0, Lno/nordicsemi/android/ble/w1;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lno/nordicsemi/android/ble/w1;->n:I

    return v0
.end method

.method static synthetic i(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->i:Z

    return p1
.end method

.method static synthetic j(Lno/nordicsemi/android/ble/w1;)Z
    .locals 0

    iget-boolean p0, p0, Lno/nordicsemi/android/ble/w1;->k:Z

    return p0
.end method

.method static synthetic j(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    return p1
.end method

.method static synthetic k(Lno/nordicsemi/android/ble/w1;)Z
    .locals 0

    iget-boolean p0, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    return p0
.end method

.method static synthetic k(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->r:Z

    return p1
.end method

.method static synthetic l(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/x1;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->e:Lno/nordicsemi/android/ble/x1;

    return-object p0
.end method

.method static synthetic m(Lno/nordicsemi/android/ble/w1;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    return-object p0
.end method

.method private m()Z
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    instance-of v1, v0, Lno/nordicsemi/android/ble/a2;

    if-eqz v1, :cond_0

    check-cast v0, Lno/nordicsemi/android/ble/a2;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/a2;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/p2;->d(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic n(Lno/nordicsemi/android/ble/w1;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    return-object p0
.end method

.method private n()Z
    .locals 4

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    sget-object v2, Lno/nordicsemi/android/ble/u1;->j:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    sget-object v2, Lno/nordicsemi/android/ble/u1;->k:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v1, 0x4

    const-string v2, "Service Changed characteristic found on a bonded device"

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->c(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method static synthetic o(Lno/nordicsemi/android/ble/w1;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    return-object p0
.end method

.method private o()Z
    .locals 4

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    const-string v2, "Aborting reliable write..."

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x3

    if-lt v1, v2, :cond_2

    const-string v1, "gatt.abortReliableWrite()"

    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    goto :goto_0

    :cond_2
    const-string v1, "gatt.abortReliableWrite(device)"

    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

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

.method private p()Z
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v1, 0x2

    const-string v2, "Beginning reliable write..."

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.beginReliableWrite()"

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->beginReliableWrite()Z

    move-result v0

    iput-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic p(Lno/nordicsemi/android/ble/w1;)Z
    .locals 0

    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->r()Z

    move-result p0

    return p0
.end method

.method private q()Z
    .locals 6

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const-string v3, "Starting pairing..."

    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v1, 0x5

    const-string v2, "Device already bonded"

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return v0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v4, 0x3

    if-lt v2, v3, :cond_2

    const-string v1, "device.createBond()"

    invoke-direct {p0, v4, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    return v0

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createBond"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "device.createBond() (hidden)"

    invoke-direct {p0, v4, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BleManager"

    const-string v3, "An exception occurred while creating bond"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static synthetic q(Lno/nordicsemi/android/ble/w1;)Z
    .locals 0

    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->m()Z

    move-result p0

    return p0
.end method

.method static synthetic r(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/k2;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    return-object p0
.end method

.method private r()Z
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->r:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    iput v2, p0, Lno/nordicsemi/android/ble/w1;->t:I

    const/4 v3, 0x2

    iget-boolean v4, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v4, :cond_0

    const-string v4, "Disconnecting..."

    goto :goto_0

    :cond_0
    const-string v4, "Cancelling connection..."

    :goto_0
    invoke-direct {p0, v3, v4}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-boolean v4, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v4, :cond_1

    new-instance v4, Lno/nordicsemi/android/ble/b0;

    invoke-direct {v4, v3}, Lno/nordicsemi/android/ble/b0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    new-instance v4, Lno/nordicsemi/android/ble/j0;

    invoke-direct {v4, v3}, Lno/nordicsemi/android/ble/j0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    :cond_1
    const-string v4, "gatt.disconnect()"

    invoke-direct {p0, v2, v4}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iput v1, p0, Lno/nordicsemi/android/ble/w1;->t:I

    const/4 v1, 0x4

    const-string v2, "Disconnected"

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-instance v1, Lno/nordicsemi/android/ble/t0;

    invoke-direct {v1, v3}, Lno/nordicsemi/android/ble/t0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    new-instance v1, Lno/nordicsemi/android/ble/n0;

    invoke-direct {v1, v3}, Lno/nordicsemi/android/ble/n0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    :cond_3
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v3, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lno/nordicsemi/android/ble/Request;->c()V

    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return v0
.end method

.method static synthetic s(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/r2;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->C:Lno/nordicsemi/android/ble/r2;

    return-object p0
.end method

.method private s()Z
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    const-string v2, "Executing reliable write..."

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.executeReliableWrite()"

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->executeReliableWrite()Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic t(Lno/nordicsemi/android/ble/w1;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method private t()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lno/nordicsemi/android/ble/u1;->h:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v1, Lno/nordicsemi/android/ble/u1;->i:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->e(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic u(Lno/nordicsemi/android/ble/w1;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->B:Ljava/util/HashMap;

    return-object p0
.end method

.method private u()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Reading PHY..."

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.readPhy()"

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readPhy()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method private v()Z
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Reading remote RSSI..."

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.readRemoteRssi()"

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic w(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/t1;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    return-object p0
.end method

.method private w()Z
    .locals 5

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const-string v3, "Refreshing device cache..."

    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v2, 0x3

    const-string v3, "gatt.refresh() (hidden)"

    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "refresh"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BleManager"

    const-string v3, "An exception occurred while refreshing device"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    const-string v2, "gatt.refresh() method not found"

    invoke-direct {p0, v0, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    return v1
.end method

.method static synthetic x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;
    .locals 0

    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    return-object p0
.end method

.method private x()Z
    .locals 5

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const-string v3, "Removing bond information..."

    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    const/4 v1, 0x5

    const-string v2, "Device is not bonded"

    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "removeBond"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "device.removeBond() (hidden)"

    invoke-direct {p0, v3, v4}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BleManager"

    const-string v3, "An exception occurred while removing bond"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method protected a(Landroid/bluetooth/BluetoothGatt;)Ljava/util/Deque;
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

.method a(Ljava/lang/Object;)Lno/nordicsemi/android/ble/r2;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->B:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/ble/r2;

    if-nez v0, :cond_0

    new-instance v0, Lno/nordicsemi/android/ble/r2;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/r2;-><init>(Lno/nordicsemi/android/ble/z1;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->B:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/r2;->a()Lno/nordicsemi/android/ble/r2;

    return-object v0
.end method

.method final a()V
    .locals 4

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    const/4 v2, -0x7

    if-eqz v1, :cond_0

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v2}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v2}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    :cond_1
    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v2}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    :cond_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v2}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->r()Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    :goto_0
    return-void
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 3

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/Data;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lno/nordicsemi/android/ble/data/Data;->a(II)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery Level received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v0, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGatt;I)V

    new-instance v0, Lno/nordicsemi/android/ble/x0;

    invoke-direct {v0, p1, p2}, Lno/nordicsemi/android/ble/x0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/bluetooth/BluetoothGatt;I)V
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

.method protected a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
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

.method protected a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V
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

.method protected a(Landroid/bluetooth/BluetoothGattServer;)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGattServer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Lno/nordicsemi/android/ble/Request;)V
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Lno/nordicsemi/android/ble/Request;->m:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return-void
.end method

.method public synthetic a(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "Cache refreshed"

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    if-eqz v0, :cond_0

    const/4 v1, -0x3

    invoke-virtual {v0, p2, v1}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->clear()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    iget-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->i()V

    const/4 p1, 0x2

    const-string p2, "Discovering Services..."

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 p1, 0x3

    const-string p2, "gatt.discoverServices()"

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    :cond_1
    return-void
.end method

.method public synthetic a(Lno/nordicsemi/android/ble/c2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    :cond_0
    return-void
.end method

.method public synthetic a(Lno/nordicsemi/android/ble/o2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return-void
.end method

.method final a(Lno/nordicsemi/android/ble/p2;)V
    .locals 2
    .param p1    # Lno/nordicsemi/android/ble/p2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    iget-object p1, p1, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    if-ne p1, v1, :cond_0

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->r()Z

    return-void

    :cond_0
    sget-object v0, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->b()V

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return-void
.end method

.method a(Lno/nordicsemi/android/ble/u1;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    iput-object p2, p0, Lno/nordicsemi/android/ble/w1;->f:Landroid/os/Handler;

    return-void
.end method

.method b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    invoke-virtual {v1}, Lno/nordicsemi/android/ble/u1;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    const-string v3, "Cache refreshed"

    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    const-string v3, "Refreshing failed"

    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v1, 0x3

    const-string v3, "gatt.close()"

    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :try_start_3
    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->B:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public synthetic b(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 2

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/Data;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lno/nordicsemi/android/ble/data/Data;->a(II)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v0, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGatt;I)V

    new-instance v0, Lno/nordicsemi/android/ble/m0;

    invoke-direct {v0, p1, p2}, Lno/nordicsemi/android/ble/m0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/bluetooth/BluetoothGatt;I)V
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

.method protected b(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
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

.method protected b(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V
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

.method final b(Lno/nordicsemi/android/ble/Request;)V
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lno/nordicsemi/android/ble/Request;->m:Z

    return-void
.end method

.method protected b(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method c()Lno/nordicsemi/android/ble/u2/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lno/nordicsemi/android/ble/o0;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/o0;-><init>(Lno/nordicsemi/android/ble/w1;)V

    return-object v0
.end method

.method protected c(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
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

.method protected abstract c(Landroid/bluetooth/BluetoothGatt;)Z
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public d()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method protected d(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
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

.method final e()I
    .locals 1

    iget v0, p0, Lno/nordicsemi/android/ble/w1;->t:I

    return v0
.end method

.method protected abstract f()V
.end method

.method final g()Z
    .locals 1

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    return v0
.end method

.method public synthetic h()V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return-void
.end method

.method protected abstract i()V
.end method

.method protected abstract j()V
.end method

.method protected abstract k()V
.end method

.method l()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->C:Lno/nordicsemi/android/ble/r2;

    if-nez v0, :cond_0

    new-instance v0, Lno/nordicsemi/android/ble/r2;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/r2;-><init>(Lno/nordicsemi/android/ble/z1;)V

    new-instance v1, Lno/nordicsemi/android/ble/d0;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/ble/d0;-><init>(Lno/nordicsemi/android/ble/w1;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/r2;->a(Lno/nordicsemi/android/ble/u2/b;)Lno/nordicsemi/android/ble/r2;

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->C:Lno/nordicsemi/android/ble/r2;

    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
