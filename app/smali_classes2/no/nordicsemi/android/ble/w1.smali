.class abstract Lno/nordicsemi/android/ble/w1;
.super Lno/nordicsemi/android/ble/j2;
.source "BleManagerHandler.java"


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

    .line 1
    invoke-direct {p0}, Lno/nordicsemi/android/ble/j2;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lno/nordicsemi/android/ble/w1;->n:I

    .line 5
    iput v0, p0, Lno/nordicsemi/android/ble/w1;->t:I

    const/16 v0, 0x17

    .line 6
    iput v0, p0, Lno/nordicsemi/android/ble/w1;->v:I

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->B:Ljava/util/HashMap;

    .line 8
    new-instance v0, Lno/nordicsemi/android/ble/w1$a;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/w1$a;-><init>(Lno/nordicsemi/android/ble/w1;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->E:Landroid/content/BroadcastReceiver;

    .line 9
    new-instance v0, Lno/nordicsemi/android/ble/w1$b;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/w1$b;-><init>(Lno/nordicsemi/android/ble/w1;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->F:Landroid/content/BroadcastReceiver;

    .line 10
    new-instance v0, Lno/nordicsemi/android/ble/w1$c;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/w1$c;-><init>(Lno/nordicsemi/android/ble/w1;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->G:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;I)I
    .locals 0

    .line 7
    iput p1, p0, Lno/nordicsemi/android/ble/w1;->t:I

    return p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;J)J
    .locals 0

    .line 6
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

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/2addr p1, v1

    if-nez p1, :cond_1

    return-object v0

    .line 86
    :cond_1
    sget-object p1, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Ljava/util/Deque;)Ljava/util/Deque;
    .locals 0

    .line 11
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    return-object p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 10
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/Request;)Lno/nordicsemi/android/ble/Request;
    .locals 0

    .line 15
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    return-object p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/b2;)Lno/nordicsemi/android/ble/b2;
    .locals 0

    .line 17
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    return-object p1
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;
    .locals 0

    .line 16
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 217
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

    .line 191
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    instance-of v1, v0, Lno/nordicsemi/android/ble/t2;

    if-eqz v1, :cond_3

    .line 192
    check-cast v0, Lno/nordicsemi/android/ble/t2;

    .line 193
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

    .line 194
    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "[Server] Notification sent"

    .line 195
    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 196
    :goto_0
    iget-object v1, v0, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lno/nordicsemi/android/ble/t2;->b(Landroid/bluetooth/BluetoothDevice;[B)Z

    .line 197
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/t2;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/Request;)V

    goto :goto_1

    .line 199
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

    .line 161
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    const/4 v1, 0x0

    .line 162
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    .line 163
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->j:Z

    .line 164
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->l:Z

    .line 165
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->k:Z

    .line 166
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->i:Z

    .line 167
    iput v1, p0, Lno/nordicsemi/android/ble/w1;->t:I

    .line 168
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->m()Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    const-string v0, "Connection attempt timed out"

    .line 169
    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->b()V

    .line 171
    new-instance v0, Lno/nordicsemi/android/ble/f0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/f0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    .line 172
    new-instance v0, Lno/nordicsemi/android/ble/p0;

    invoke-direct {v0, p1, p2}, Lno/nordicsemi/android/ble/p0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->r:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const-string v1, "Disconnected"

    .line 174
    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->b()V

    .line 176
    new-instance v0, Lno/nordicsemi/android/ble/v0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/v0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    .line 177
    new-instance v0, Lno/nordicsemi/android/ble/r0;

    invoke-direct {v0, p1, p2}, Lno/nordicsemi/android/ble/r0;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    .line 178
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    if-eqz p2, :cond_2

    .line 179
    iget-object v0, p2, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v0, v1, :cond_2

    .line 180
    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_1
    const-string p2, "Connection lost"

    .line 181
    invoke-direct {p0, v1, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 182
    new-instance p2, Lno/nordicsemi/android/ble/w0;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/ble/w0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    .line 183
    new-instance p2, Lno/nordicsemi/android/ble/k0;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/ble/k0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    .line 184
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->i()V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 122
    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    .line 185
    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/w2/b;->b(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {p3}, Lno/nordicsemi/android/ble/v2/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 188
    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 189
    new-instance v0, Lno/nordicsemi/android/ble/l0;

    invoke-direct {v0, p1, p2, p3}, Lno/nordicsemi/android/ble/l0;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 190
    invoke-interface {p3, p0, p1, p2}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 71
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    .line 72
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/w2/b;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private a(Lno/nordicsemi/android/ble/w1$e;)V
    .locals 2
    .param p1    # Lno/nordicsemi/android/ble/w1$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    iget-object v0, v0, Lno/nordicsemi/android/ble/u1;->d:Lno/nordicsemi/android/ble/w2/a;

    if-eqz v0, :cond_0

    .line 156
    new-instance v1, Lno/nordicsemi/android/ble/q0;

    invoke-direct {v1, p1, v0}, Lno/nordicsemi/android/ble/q0;-><init>(Lno/nordicsemi/android/ble/w1$e;Lno/nordicsemi/android/ble/w2/a;)V

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/w1;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1$e;Lno/nordicsemi/android/ble/w2/a;)V
    .locals 0

    .line 157
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

    .line 152
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    iget-object v0, v0, Lno/nordicsemi/android/ble/u1;->c:Lno/nordicsemi/android/ble/v1;

    if-eqz v0, :cond_0

    .line 153
    new-instance v1, Lno/nordicsemi/android/ble/u0;

    invoke-direct {v1, p1, v0}, Lno/nordicsemi/android/ble/u0;-><init>(Lno/nordicsemi/android/ble/w1$f;Lno/nordicsemi/android/ble/v1;)V

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/w1;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1$f;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 154
    invoke-interface {p0, p1}, Lno/nordicsemi/android/ble/w1$f;->a(Lno/nordicsemi/android/ble/v1;)V

    return-void
.end method

.method private a(Lno/nordicsemi/android/ble/w1$g;)V
    .locals 2
    .param p1    # Lno/nordicsemi/android/ble/w1$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 158
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    iget-object v0, v0, Lno/nordicsemi/android/ble/u1;->e:Lno/nordicsemi/android/ble/w2/b;

    if-eqz v0, :cond_0

    .line 159
    new-instance v1, Lno/nordicsemi/android/ble/y;

    invoke-direct {v1, p1, v0}, Lno/nordicsemi/android/ble/y;-><init>(Lno/nordicsemi/android/ble/w1$g;Lno/nordicsemi/android/ble/w2/b;)V

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/w1;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1$g;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    .line 160
    invoke-interface {p0, p1}, Lno/nordicsemi/android/ble/w1$g;->a(Lno/nordicsemi/android/ble/w2/b;)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$e;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$e;)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$g;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    return-void
.end method

.method private a(I)Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 99
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_4

    .line 100
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

    .line 101
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

    .line 102
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

    .line 103
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

    .line 104
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

    .line 105
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 106
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Requesting preferred PHYs..."

    .line 107
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.setPreferredPhy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lno/nordicsemi/android/ble/x2/a;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {p2}, Lno/nordicsemi/android/ble/x2/a;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", coding option = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {p3}, Lno/nordicsemi/android/ble/x2/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 112
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

    .line 21
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 22
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_8

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 23
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->g()Landroid/content/Context;

    move-result-object v5

    .line 24
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v0, :cond_2

    .line 26
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    if-nez v0, :cond_1

    const-string v0, "gatt.close()"

    .line 27
    invoke-direct {p0, v7, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :catchall_0
    :try_start_2
    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "wait(200)"

    .line 30
    invoke-direct {p0, v7, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const-wide/16 v8, 0xc8

    .line 31
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 32
    :cond_1
    :try_start_4
    iput-boolean v6, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    const-wide/16 v5, 0x0

    .line 33
    iput-wide v5, p0, Lno/nordicsemi/android/ble/w1;->m:J

    .line 34
    iput v3, p0, Lno/nordicsemi/android/ble/w1;->t:I

    const-string p2, "Connecting..."

    .line 35
    invoke-direct {p0, v4, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 36
    new-instance p2, Lno/nordicsemi/android/ble/g0;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/ble/g0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    .line 37
    new-instance p2, Lno/nordicsemi/android/ble/y0;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/ble/y0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    const-string p1, "gatt.connect()"

    .line 38
    invoke-direct {p0, v7, p1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 39
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    .line 40
    monitor-exit v1

    return v3

    .line 41
    :cond_2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->E:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->F:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    :catch_0
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p2, :cond_3

    return v6

    .line 44
    :cond_3
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/b2;->m()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 45
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->r:Z

    if-eqz v0, :cond_4

    .line 46
    iput-boolean v3, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    .line 47
    :cond_4
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    .line 48
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/b2;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Connecting..."

    goto :goto_1

    :cond_5
    const-string v0, "Retrying..."

    :goto_1
    invoke-direct {p0, v4, v0}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 49
    iput v3, p0, Lno/nordicsemi/android/ble/w1;->t:I

    .line 50
    new-instance v0, Lno/nordicsemi/android/ble/c0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/c0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    .line 51
    new-instance v0, Lno/nordicsemi/android/ble/e0;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/e0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lno/nordicsemi/android/ble/w1;->m:J

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    .line 54
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/b2;->j()I

    move-result v9

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatt = device.connectGatt(autoConnect = false, TRANSPORT_LE, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {v9}, Lno/nordicsemi/android/ble/x2/a;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-direct {p0, v7, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v6, 0x0

    .line 58
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

    .line 59
    invoke-direct {p0, v7, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 60
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->G:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v5, v6, p2, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    goto :goto_2

    :cond_7
    const-string p2, "gatt = device.connectGatt(autoConnect = false)"

    .line 61
    invoke-direct {p0, v7, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 62
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->G:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v5, v6, p2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    :goto_2
    return v3

    :catchall_1
    move-exception p1

    .line 63
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 64
    :cond_8
    :goto_3
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    .line 65
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 66
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/p2;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_5

    .line 67
    :cond_9
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    if-eqz p2, :cond_b

    if-eqz v0, :cond_a

    const/4 v0, -0x4

    goto :goto_4

    :cond_a
    const/16 v0, -0x64

    .line 68
    :goto_4
    invoke-virtual {p2, p1, v0}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 69
    :cond_b
    :goto_5
    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    .line 70
    invoke-direct {p0, v3}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return v3
.end method

.method private a(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73
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

    .line 74
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

    .line 75
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    return v1

    .line 76
    :cond_2
    sget-object v0, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    .line 77
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

    .line 78
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    aget-byte v0, v0, v1

    if-eqz v0, :cond_7

    .line 79
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

    .line 80
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

    .line 81
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->e:Lno/nordicsemi/android/ble/x1;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/x1;->a()Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p1, p2}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 82
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_6

    .line 83
    new-instance p2, Lno/nordicsemi/android/ble/z;

    invoke-direct {p2, p0}, Lno/nordicsemi/android/ble/z;-><init>(Lno/nordicsemi/android/ble/w1;)V

    invoke-virtual {p0, p2}, Lno/nordicsemi/android/ble/w1;->post(Ljava/lang/Runnable;)V

    :cond_6
    return p1

    :cond_7
    const/4 p1, 0x1

    .line 84
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

    .line 87
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 88
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 89
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

    .line 90
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

    .line 91
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

    .line 5
    iget-boolean p0, p0, Lno/nordicsemi/android/ble/w1;->j:Z

    return p0
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/b2;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/b2;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->h(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->e(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->q:Z

    return p1
.end method

.method private a(Z)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 93
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    sget-object v2, Lno/nordicsemi/android/ble/u1;->h:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 95
    :cond_1
    sget-object v1, Lno/nordicsemi/android/ble/u1;->i:Ljava/util/UUID;

    .line 96
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 97
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->d(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    .line 98
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

    .line 3
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->c(I)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/w1;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 4
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 47
    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    .line 55
    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/w2/b;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 26
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    .line 27
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/w2/b;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private declared-synchronized b(Z)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 56
    :try_start_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->q:Z

    .line 57
    :cond_1
    iget-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 58
    monitor-exit p0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 59
    :try_start_1
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    if-eqz v2, :cond_4

    .line 60
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/k2;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/k2;->h()Lno/nordicsemi/android/ble/Request;

    move-result-object v2

    invoke-virtual {v2, p0}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;

    move-result-object v2

    goto :goto_1

    .line 62
    :cond_3
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 63
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    :cond_4
    move-object v2, p1

    :goto_1
    if-nez v2, :cond_6

    .line 64
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

    .line 65
    :try_start_2
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    if-eqz v2, :cond_7

    .line 66
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    .line 67
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->q:Z

    .line 68
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->j()V

    .line 69
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 70
    new-instance v3, Lno/nordicsemi/android/ble/i0;

    invoke-direct {v3, v2}, Lno/nordicsemi/android/ble/i0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    .line 71
    new-instance v3, Lno/nordicsemi/android/ble/h0;

    invoke-direct {v3, v2}, Lno/nordicsemi/android/ble/h0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    .line 72
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    if-eqz v2, :cond_7

    .line 73
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    invoke-virtual {v3}, Lno/nordicsemi/android/ble/b2;->i()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/p2;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 74
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
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

    .line 76
    :catch_1
    :try_start_4
    iput-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->q:Z

    .line 77
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    .line 78
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->k()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 80
    :cond_8
    :goto_3
    :try_start_5
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->q:Z

    .line 81
    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    .line 82
    instance-of v3, v2, Lno/nordicsemi/android/ble/t1;

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v3, :cond_10

    .line 83
    move-object v3, v2

    check-cast v3, Lno/nordicsemi/android/ble/t1;

    .line 84
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

    .line 85
    :goto_4
    iget-boolean v7, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_e

    iget-object v7, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v7, :cond_d

    iget-object v7, v3, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 86
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

    .line 87
    instance-of v7, v3, Lno/nordicsemi/android/ble/a2;

    if-eqz v7, :cond_f

    .line 88
    move-object v7, v3

    check-cast v7, Lno/nordicsemi/android/ble/a2;

    .line 89
    invoke-virtual {v7}, Lno/nordicsemi/android/ble/a2;->k()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 90
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, p1}, Lno/nordicsemi/android/ble/p2;->c(Landroid/bluetooth/BluetoothDevice;)V

    .line 91
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, p1}, Lno/nordicsemi/android/ble/p2;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 92
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 94
    :cond_f
    :try_start_6
    iput-object v3, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    .line 95
    invoke-virtual {v3}, Lno/nordicsemi/android/ble/t1;->h()Lno/nordicsemi/android/ble/Request;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 96
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2}, Lno/nordicsemi/android/ble/p2;->c(Landroid/bluetooth/BluetoothDevice;)V

    .line 97
    invoke-virtual {v3}, Lno/nordicsemi/android/ble/t1;->h()Lno/nordicsemi/android/ble/Request;

    move-result-object v2

    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    goto :goto_6

    :cond_10
    const/4 v6, 0x0

    .line 98
    :cond_11
    :goto_6
    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v7, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v3, v7, :cond_12

    .line 99
    move-object v3, v2

    check-cast v3, Lno/nordicsemi/android/ble/b2;

    .line 100
    invoke-virtual {v3}, Lno/nordicsemi/android/ble/b2;->i()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v3, v7}, Lno/nordicsemi/android/ble/p2;->c(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_7

    .line 101
    :cond_12
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_21

    .line 102
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/Request;->c(Landroid/bluetooth/BluetoothDevice;)V

    .line 103
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

    .line 104
    :pswitch_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1d

    .line 105
    check-cast v2, Lno/nordicsemi/android/ble/o2;

    .line 106
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

    .line 107
    new-instance v3, Lno/nordicsemi/android/ble/c;

    invoke-direct {v3, p0, v2, v0}, Lno/nordicsemi/android/ble/c;-><init>(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/o2;Landroid/bluetooth/BluetoothDevice;)V

    .line 108
    invoke-virtual {v2}, Lno/nordicsemi/android/ble/o2;->h()J

    move-result-wide v4

    .line 109
    invoke-virtual {p0, v3, v4, v5}, Lno/nordicsemi/android/ble/w1;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_a

    .line 110
    :pswitch_1
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->w()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 111
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    .line 112
    new-instance v3, Lno/nordicsemi/android/ble/s0;

    invoke-direct {v3, p0, v2, v0}, Lno/nordicsemi/android/ble/s0;-><init>(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, v3, v7, v8}, Lno/nordicsemi/android/ble/w1;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_b

    .line 113
    :pswitch_2
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->v()Z

    move-result v6

    goto/16 :goto_b

    .line 114
    :pswitch_3
    check-cast v2, Lno/nordicsemi/android/ble/g2;

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_13

    .line 116
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->u()Z

    move-result v6

    goto/16 :goto_b

    .line 117
    :cond_13
    iget-boolean v6, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v6, :cond_1d

    .line 118
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Lno/nordicsemi/android/ble/g2;->g(Landroid/bluetooth/BluetoothDevice;)V

    .line 119
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 120
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 122
    :pswitch_4
    :try_start_7
    check-cast v2, Lno/nordicsemi/android/ble/g2;

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_14

    .line 124
    invoke-virtual {v2}, Lno/nordicsemi/android/ble/g2;->j()I

    move-result v0

    .line 125
    invoke-virtual {v2}, Lno/nordicsemi/android/ble/g2;->i()I

    move-result v3

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/g2;->h()I

    move-result v2

    .line 126
    invoke-direct {p0, v0, v3, v2}, Lno/nordicsemi/android/ble/w1;->a(III)Z

    move-result v6

    goto/16 :goto_b

    .line 127
    :cond_14
    iget-boolean v6, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v6, :cond_1d

    .line 128
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Lno/nordicsemi/android/ble/g2;->g(Landroid/bluetooth/BluetoothDevice;)V

    .line 129
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 130
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 132
    :pswitch_5
    :try_start_8
    check-cast v2, Lno/nordicsemi/android/ble/c2;

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1d

    .line 135
    invoke-virtual {v2}, Lno/nordicsemi/android/ble/c2;->h()I

    move-result v0

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 136
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    .line 137
    new-instance v3, Lno/nordicsemi/android/ble/a0;

    invoke-direct {v3, p0, v2, v0}, Lno/nordicsemi/android/ble/a0;-><init>(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/c2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, v3, v7, v8}, Lno/nordicsemi/android/ble/w1;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_b

    .line 138
    :pswitch_6
    check-cast v2, Lno/nordicsemi/android/ble/e2;

    .line 139
    iget v0, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/e2;->h()I

    move-result v3

    if-eq v0, v3, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_15

    .line 140
    invoke-virtual {v2}, Lno/nordicsemi/android/ble/e2;->h()I

    move-result v0

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(I)Z

    move-result v6

    goto/16 :goto_b

    .line 141
    :cond_15
    iget-boolean v6, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v6, :cond_1d

    .line 142
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    iget v0, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2, p1, v0}, Lno/nordicsemi/android/ble/e2;->d(Landroid/bluetooth/BluetoothDevice;I)V

    .line 143
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 144
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 146
    :pswitch_7
    :try_start_9
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->n()Z

    move-result v6

    goto/16 :goto_b

    .line 147
    :pswitch_8
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Z)Z

    move-result v6

    goto/16 :goto_b

    .line 148
    :pswitch_9
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->a(Z)Z

    move-result v6

    goto/16 :goto_b

    .line 149
    :pswitch_a
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->t()Z

    move-result v6

    goto/16 :goto_b

    .line 150
    :pswitch_b
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto/16 :goto_b

    .line 151
    :pswitch_c
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto/16 :goto_b

    .line 152
    :pswitch_d
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->c(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto/16 :goto_b

    .line 153
    :pswitch_e
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->d(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto/16 :goto_b

    .line 154
    :pswitch_f
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->o()Z

    move-result v6

    goto/16 :goto_b

    .line 155
    :pswitch_10
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->s()Z

    move-result v6

    goto/16 :goto_b

    .line 156
    :pswitch_11
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->p()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 157
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 158
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 160
    :pswitch_12
    :try_start_a
    check-cast v2, Lno/nordicsemi/android/ble/l2;

    .line 161
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    if-eqz v0, :cond_1d

    .line 162
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 163
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    iget v4, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2, v4}, Lno/nordicsemi/android/ble/l2;->b(I)[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 164
    :cond_16
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    iget v3, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/l2;->b(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 165
    :goto_8
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 166
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    goto :goto_a

    .line 167
    :pswitch_13
    check-cast v2, Lno/nordicsemi/android/ble/l2;

    .line 168
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_1d

    .line 169
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 170
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    iget-object v3, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget v4, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2, v4}, Lno/nordicsemi/android/ble/l2;->b(I)[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 171
    :cond_17
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget v3, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/l2;->b(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 172
    :goto_9
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 173
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    :goto_a
    const/4 v6, 0x1

    goto/16 :goto_b

    .line 174
    :pswitch_14
    move-object v0, v2

    check-cast v0, Lno/nordicsemi/android/ble/t2;

    .line 175
    iget-object v2, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    if-eqz v2, :cond_18

    .line 176
    iget v3, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v0, v3}, Lno/nordicsemi/android/ble/t2;->b(I)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 177
    :cond_18
    invoke-direct {p0, v2}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v6

    goto/16 :goto_b

    .line 178
    :pswitch_15
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v6

    goto/16 :goto_b

    .line 179
    :pswitch_16
    move-object v0, v2

    check-cast v0, Lno/nordicsemi/android/ble/t2;

    .line 180
    iget-object v2, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_19

    .line 181
    iget v3, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v0, v3}, Lno/nordicsemi/android/ble/t2;->b(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 182
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/t2;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 183
    :cond_19
    invoke-direct {p0, v2}, Lno/nordicsemi/android/ble/w1;->f(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto :goto_b

    .line 184
    :pswitch_17
    iget-object v0, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->e(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    goto :goto_b

    .line 185
    :pswitch_18
    check-cast v2, Lno/nordicsemi/android/ble/k2;

    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    .line 186
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 188
    :pswitch_19
    :try_start_b
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->x()Z

    move-result v6

    goto :goto_b

    .line 189
    :pswitch_1a
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->q()Z

    move-result v6

    goto :goto_b

    .line 190
    :pswitch_1b
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->r()Z

    move-result v6

    goto :goto_b

    .line 191
    :pswitch_1c
    check-cast v2, Lno/nordicsemi/android/ble/b2;

    .line 192
    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    .line 193
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    .line 194
    invoke-virtual {v2}, Lno/nordicsemi/android/ble/b2;->i()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/b2;)Z

    move-result v6

    goto :goto_b

    .line 195
    :cond_1a
    move-object v3, v2

    check-cast v3, Lno/nordicsemi/android/ble/t2;

    .line 196
    iget-object v4, v2, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v4, :cond_1b

    .line 197
    iget v5, p0, Lno/nordicsemi/android/ble/w1;->v:I

    invoke-virtual {v3, v5}, Lno/nordicsemi/android/ble/t2;->b(I)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 198
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 199
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
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

    .line 201
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v3, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v3, :cond_1e

    const/4 v3, -0x3

    goto :goto_c

    .line 202
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

    .line 203
    :goto_c
    invoke-virtual {v0, v2, v3}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 204
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    .line 205
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 206
    :cond_20
    monitor-exit p0

    return-void

    .line 207
    :cond_21
    :try_start_c
    invoke-virtual {v2}, Lno/nordicsemi/android/ble/Request;->c()V

    .line 208
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    .line 209
    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->b(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 210
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

    .line 42
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 43
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Requesting new MTU..."

    .line 44
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 45
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

    .line 46
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

    .line 28
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 29
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 30
    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 31
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

    .line 32
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 33
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    const/4 v0, 0x2

    .line 34
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

    .line 35
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

    .line 36
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

    .line 37
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 38
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 39
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

    .line 40
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

    .line 41
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

    .line 2
    iget-boolean p0, p0, Lno/nordicsemi/android/ble/w1;->l:Z

    return p0
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->g(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->d(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    .line 1
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

    .line 3
    iput p1, p0, Lno/nordicsemi/android/ble/w1;->v:I

    return p1
.end method

.method static synthetic c(Lno/nordicsemi/android/ble/w1;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 2
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic c(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 4
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->c(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic c(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    .line 5
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/w2/b;->c(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private c(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 7
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    .line 8
    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
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

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 11
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    const/4 v0, 0x2

    .line 12
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

    .line 13
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

    .line 14
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

    .line 15
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 16
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v2

    const/4 v3, 0x2

    .line 19
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 20
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    .line 21
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->l:Z

    return p1
.end method

.method static synthetic d(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 4
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->h(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic d(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, p0, v0}, Lno/nordicsemi/android/ble/w2/b;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic d(Lno/nordicsemi/android/ble/w1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return-void
.end method

.method private d(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 7
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 8
    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
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

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 11
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    const/4 v0, 0x2

    .line 12
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

    .line 13
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

    .line 14
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

    .line 15
    sget-object v0, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

    .line 16
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

    .line 2
    iget-boolean p0, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    return p0
.end method

.method static synthetic e(Lno/nordicsemi/android/ble/w1;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lno/nordicsemi/android/ble/w1;->m:J

    return-wide v0
.end method

.method static synthetic e(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 10
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic e(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    .line 11
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/w2/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private e(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    return v1

    .line 6
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

    .line 7
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

    .line 8
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

    .line 12
    sget-object v0, Lno/nordicsemi/android/ble/u1;->k:Ljava/util/UUID;

    .line 13
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

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    return p1
.end method

.method static synthetic f(Lno/nordicsemi/android/ble/w1;)Ljava/util/Deque;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic f(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 11
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->h(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic f(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 1

    const/4 v0, 0x3

    .line 12
    invoke-interface {p1, p0, v0}, Lno/nordicsemi/android/ble/w2/b;->a(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private f(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0xc

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing characteristic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v3

    invoke-static {v3}, Lno/nordicsemi/android/ble/x2/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 9
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

    .line 10
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic f(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->p:Z

    return p1
.end method

.method static synthetic g(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/u1;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    return-object p0
.end method

.method static synthetic g(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 4
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

    .line 5
    sget-object v0, Lno/nordicsemi/android/ble/u1;->i:Ljava/util/UUID;

    .line 6
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

    .line 2
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->k:Z

    return p1
.end method

.method static synthetic h(Lno/nordicsemi/android/ble/w1;)I
    .locals 0

    .line 1
    iget p0, p0, Lno/nordicsemi/android/ble/w1;->n:I

    return p0
.end method

.method static synthetic h(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 5
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

    .line 6
    sget-object v0, Lno/nordicsemi/android/ble/u1;->k:Ljava/util/UUID;

    .line 7
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

    .line 2
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    return p1
.end method

.method static synthetic i(Lno/nordicsemi/android/ble/w1;)I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/w1;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lno/nordicsemi/android/ble/w1;->n:I

    return v0
.end method

.method static synthetic i(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->i:Z

    return p1
.end method

.method static synthetic j(Lno/nordicsemi/android/ble/w1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lno/nordicsemi/android/ble/w1;->k:Z

    return p0
.end method

.method static synthetic j(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    return p1
.end method

.method static synthetic k(Lno/nordicsemi/android/ble/w1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    return p0
.end method

.method static synthetic k(Lno/nordicsemi/android/ble/w1;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->r:Z

    return p1
.end method

.method static synthetic l(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/x1;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->e:Lno/nordicsemi/android/ble/x1;

    return-object p0
.end method

.method static synthetic m(Lno/nordicsemi/android/ble/w1;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->w:Ljava/util/Map;

    return-object p0
.end method

.method private m()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    instance-of v1, v0, Lno/nordicsemi/android/ble/a2;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lno/nordicsemi/android/ble/a2;

    .line 4
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/a2;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/p2;->d(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic n(Lno/nordicsemi/android/ble/w1;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->x:Ljava/util/Map;

    return-object p0
.end method

.method private n()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    return v1

    .line 6
    :cond_1
    sget-object v2, Lno/nordicsemi/android/ble/u1;->j:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 7
    :cond_2
    sget-object v2, Lno/nordicsemi/android/ble/u1;->k:Ljava/util/UUID;

    .line 8
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v1, 0x4

    const-string v2, "Service Changed characteristic found on a bonded device"

    .line 9
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 10
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->c(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method static synthetic o(Lno/nordicsemi/android/ble/w1;)Ljava/util/Deque;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    return-object p0
.end method

.method private o()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    const-string v2, "Aborting reliable write..."

    .line 5
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x3

    if-lt v1, v2, :cond_2

    const-string v1, "gatt.abortReliableWrite()"

    .line 7
    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    goto :goto_0

    :cond_2
    const-string v1, "gatt.abortReliableWrite(device)"

    .line 9
    invoke-direct {p0, v3, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 10
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

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v1, 0x2

    const-string v2, "Beginning reliable write..."

    .line 5
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.beginReliableWrite()"

    .line 6
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 7
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

    .line 1
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->r()Z

    move-result p0

    return p0
.end method

.method private q()Z
    .locals 6

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const-string v3, "Starting pairing..."

    .line 3
    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v1, 0x5

    const-string v2, "Device already bonded"

    .line 5
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return v0

    .line 8
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v4, 0x3

    if-lt v2, v3, :cond_2

    const-string v1, "device.createBond()"

    .line 9
    invoke-direct {p0, v4, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    return v0

    .line 11
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createBond"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "device.createBond() (hidden)"

    .line 12
    invoke-direct {p0, v4, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 13
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

    .line 14
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static synthetic q(Lno/nordicsemi/android/ble/w1;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->m()Z

    move-result p0

    return p0
.end method

.method static synthetic r(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/k2;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    return-object p0
.end method

.method private r()Z
    .locals 5

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->r:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    .line 4
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 5
    iput v2, p0, Lno/nordicsemi/android/ble/w1;->t:I

    const/4 v3, 0x2

    .line 6
    iget-boolean v4, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v4, :cond_0

    const-string v4, "Disconnecting..."

    goto :goto_0

    :cond_0
    const-string v4, "Cancelling connection..."

    :goto_0
    invoke-direct {p0, v3, v4}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 7
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 8
    iget-boolean v4, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v4, :cond_1

    .line 9
    new-instance v4, Lno/nordicsemi/android/ble/b0;

    invoke-direct {v4, v3}, Lno/nordicsemi/android/ble/b0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    .line 10
    new-instance v4, Lno/nordicsemi/android/ble/j0;

    invoke-direct {v4, v3}, Lno/nordicsemi/android/ble/j0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    :cond_1
    const-string v4, "gatt.disconnect()"

    .line 11
    invoke-direct {p0, v2, v4}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 12
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 13
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz v2, :cond_2

    return v0

    .line 14
    :cond_2
    iput v1, p0, Lno/nordicsemi/android/ble/w1;->t:I

    const/4 v1, 0x4

    const-string v2, "Disconnected"

    .line 15
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 16
    new-instance v1, Lno/nordicsemi/android/ble/t0;

    invoke-direct {v1, v3}, Lno/nordicsemi/android/ble/t0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;)V

    .line 17
    new-instance v1, Lno/nordicsemi/android/ble/n0;

    invoke-direct {v1, v3}, Lno/nordicsemi/android/ble/n0;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;)V

    .line 18
    :cond_3
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v3, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-ne v2, v3, :cond_5

    .line 19
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {v1}, Lno/nordicsemi/android/ble/Request;->c()V

    .line 22
    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return v0
.end method

.method static synthetic s(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/r2;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->C:Lno/nordicsemi/android/ble/r2;

    return-object p0
.end method

.method private s()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    const-string v2, "Executing reliable write..."

    .line 5
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.executeReliableWrite()"

    .line 6
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->executeReliableWrite()Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic t(Lno/nordicsemi/android/ble/w1;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method private t()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v2, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lno/nordicsemi/android/ble/u1;->h:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    sget-object v1, Lno/nordicsemi/android/ble/u1;->i:Ljava/util/UUID;

    .line 6
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->e(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic u(Lno/nordicsemi/android/ble/w1;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->B:Ljava/util/HashMap;

    return-object p0
.end method

.method private u()Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Reading PHY..."

    .line 4
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.readPhy()"

    .line 5
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 6
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

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method private v()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "Reading remote RSSI..."

    .line 4
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "gatt.readRemoteRssi()"

    .line 5
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 6
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

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    return-object p0
.end method

.method private w()Z
    .locals 5

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const-string v3, "Refreshing device cache..."

    .line 3
    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 v2, 0x3

    const-string v3, "gatt.refresh() (hidden)"

    .line 4
    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "refresh"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 6
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

    .line 7
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    const-string v2, "gatt.refresh() method not found"

    .line 8
    invoke-direct {p0, v0, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    return v1
.end method

.method static synthetic x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;
    .locals 0

    .line 1
    iget-object p0, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    return-object p0
.end method

.method private x()Z
    .locals 5

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const-string v3, "Removing bond information..."

    .line 3
    invoke-direct {p0, v2, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    const/4 v1, 0x5

    const-string v2, "Device is not bonded"

    .line 5
    invoke-direct {p0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return v0

    .line 8
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

    .line 9
    invoke-direct {p0, v3, v4}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 10
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

    .line 11
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

    .line 113
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->B:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/ble/r2;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lno/nordicsemi/android/ble/r2;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/r2;-><init>(Lno/nordicsemi/android/ble/z1;)V

    if-eqz p1, :cond_0

    .line 115
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->B:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/r2;->a()Lno/nordicsemi/android/ble/r2;

    return-object v0
.end method

.method final a()V
    .locals 4

    .line 127
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    .line 129
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    const/4 v2, -0x7

    if-eqz v1, :cond_0

    .line 130
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v2}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 131
    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    if-eq v3, v1, :cond_1

    .line 132
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v2}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 133
    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    .line 134
    :cond_1
    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    .line 135
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    if-eqz v1, :cond_2

    .line 136
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v2}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 137
    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->A:Lno/nordicsemi/android/ble/k2;

    .line 138
    :cond_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    if-eqz v1, :cond_3

    .line 139
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v2}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 140
    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    .line 141
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->r()Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 142
    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    :goto_0
    return-void
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 3

    .line 117
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/Data;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p2, v0, v1}, Lno/nordicsemi/android/ble/data/Data;->a(II)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x4

    .line 119
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

    .line 120
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v0, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGatt;I)V

    .line 121
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

    .line 151
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

    .line 123
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    .line 124
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p1, Lno/nordicsemi/android/ble/Request;->m:Z

    const/4 p1, 0x0

    .line 126
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    return-void
.end method

.method public synthetic a(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "Cache refreshed"

    .line 202
    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 203
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    .line 205
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    if-eqz v0, :cond_0

    const/4 v1, -0x3

    .line 206
    invoke-virtual {v0, p2, v1}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 207
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    .line 208
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->clear()V

    .line 209
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    .line 210
    iget-boolean p1, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->i()V

    const/4 p1, 0x2

    const-string p2, "Discovering Services..."

    .line 212
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    const/4 p1, 0x3

    const-string p2, "gatt.discoverServices()"

    .line 213
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    .line 214
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    :cond_1
    return-void
.end method

.method public synthetic a(Lno/nordicsemi/android/ble/c2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 200
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 201
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->b(Z)V

    :cond_0
    return-void
.end method

.method public synthetic a(Lno/nordicsemi/android/ble/o2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 215
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    const/4 p1, 0x1

    .line 216
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

    .line 143
    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->z:Lno/nordicsemi/android/ble/Request;

    .line 144
    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->D:Lno/nordicsemi/android/ble/t1;

    .line 145
    iget-object p1, p1, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    if-ne p1, v1, :cond_0

    .line 146
    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->y:Lno/nordicsemi/android/ble/b2;

    .line 147
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->r()Z

    return-void

    .line 148
    :cond_0
    sget-object v0, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-ne p1, v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->b()V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 150
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

    .line 19
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    .line 20
    iput-object p2, p0, Lno/nordicsemi/android/ble/w1;->f:Landroid/os/Handler;

    return-void
.end method

.method b()V
    .locals 4

    .line 7
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->g()Landroid/content/Context;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/u1;

    invoke-virtual {v1}, Lno/nordicsemi/android/ble/u1;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-direct {p0}, Lno/nordicsemi/android/ble/w1;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    const-string v3, "Cache refreshed"

    .line 14
    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    const-string v3, "Refreshing failed"

    .line 15
    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v1, 0x3

    const-string v3, "gatt.close()"

    .line 16
    invoke-direct {p0, v1, v3}, Lno/nordicsemi/android/ble/w1;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :catchall_0
    :try_start_3
    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    :cond_2
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->u:Z

    .line 20
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/w1;->s:Z

    .line 21
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->B:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 22
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 23
    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    .line 24
    iput-object v2, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    .line 25
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

    .line 48
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/Data;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p2, v0, v1}, Lno/nordicsemi/android/ble/data/Data;->a(II)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 50
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v0, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGatt;I)V

    .line 51
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

    .line 52
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/Deque;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->g:Ljava/util/Deque;

    .line 53
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 54
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

    .line 22
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

    .line 3
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

    .line 9
    iget v0, p0, Lno/nordicsemi/android/ble/w1;->t:I

    return v0
.end method

.method protected abstract f()V
.end method

.method final g()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/w1;->o:Z

    return v0
.end method

.method public synthetic h()V
    .locals 1

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x1

    .line 4
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

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->C:Lno/nordicsemi/android/ble/r2;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lno/nordicsemi/android/ble/r2;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/r2;-><init>(Lno/nordicsemi/android/ble/z1;)V

    new-instance v1, Lno/nordicsemi/android/ble/d0;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/ble/d0;-><init>(Lno/nordicsemi/android/ble/w1;)V

    .line 4
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

    .line 1
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

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
