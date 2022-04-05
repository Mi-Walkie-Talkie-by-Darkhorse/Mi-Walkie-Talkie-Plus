.class public abstract Lcom/ifengyu/blelib/b/e;
.super Lno/nordicsemi/android/ble/u1;

# interfaces
.implements Lno/nordicsemi/android/ble/w2/b;
.implements Lcom/ifengyu/blelib/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/blelib/b/e$b;,
        Lcom/ifengyu/blelib/b/e$c;
    }
.end annotation


# instance fields
.field protected final l:Ljava/lang/String;

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/blelib/c/b;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Landroid/bluetooth/BluetoothGattCharacteristic;

.field protected o:Landroid/bluetooth/BluetoothGattCharacteristic;

.field protected p:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private q:J

.field private r:Z

.field private s:[B

.field private t:[B

.field private u:[B

.field private v:Lcom/ifengyu/blelib/utils/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/u1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/blelib/b/e;->m:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/blelib/b/e;->r:Z

    invoke-virtual {p0, p0}, Lno/nordicsemi/android/ble/u1;->a(Lno/nordicsemi/android/ble/w2/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/blelib/b/e;[B)Lcom/ifengyu/blelib/d/c;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/blelib/b/e;->g([B)Lcom/ifengyu/blelib/d/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/blelib/b/e;I)Lno/nordicsemi/android/ble/e2;
    .locals 0

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/u1;->b(I)Lno/nordicsemi/android/ble/e2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/blelib/b/e;)Lno/nordicsemi/android/ble/k2;
    .locals 0

    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->a()Lno/nordicsemi/android/ble/k2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/blelib/b/e;Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/r2;
    .locals 0

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/u1;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/r2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/blelib/c/e;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/ifengyu/blelib/c/d;->c()Lcom/ifengyu/blelib/c/d;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/ifengyu/blelib/c/d;->a(ILcom/ifengyu/blelib/c/e;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/blelib/b/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/blelib/b/e;->r:Z

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/blelib/b/e;Lcom/ifengyu/blelib/d/c;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/ifengyu/blelib/d/c;)[B
    .locals 5

    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x4e21

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x4e37

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/blelib/b/e;->a([BI)[B

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/blelib/b/e;->v:Lcom/ifengyu/blelib/utils/a;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/utils/a;->c()[B

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/blelib/b/e;->v:Lcom/ifengyu/blelib/utils/a;

    invoke-virtual {v2}, Lcom/ifengyu/blelib/utils/a;->b()[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/ifengyu/blelib/utils/b;->b([B[B[B)[B

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/ifengyu/blelib/b/e;->a([BI)[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->r()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->q()[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/ifengyu/blelib/utils/b;->b([B[B[B)[B

    move-result-object p1

    :cond_2
    :goto_0
    new-instance v1, Lcom/ifengyu/blelib/d/e;

    invoke-direct {v1, v0, p1}, Lcom/ifengyu/blelib/d/e;-><init>(I[B)V

    invoke-virtual {v1}, Lcom/ifengyu/blelib/d/e;->c()[B

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/blelib/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send commend-->cmdId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", encrypt: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->y()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", packet: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/d/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p1
.end method

.method private a([BI)[B
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/blelib/b/e;->q:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_0
    iput-wide v0, p0, Lcom/ifengyu/blelib/b/e;->q:J

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v1, v0

    add-int/2addr v1, p2

    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    int-to-long v3, v1

    const/4 v1, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v1, v5}, Lcom/ifengyu/blelib/d/f;->a([BJII)V

    invoke-static {p1, v1, v2, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v5

    array-length p1, v0

    invoke-static {v0, v1, v2, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method static synthetic b(Lcom/ifengyu/blelib/b/e;Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/t2;
    .locals 0

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/u1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/t2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/blelib/b/e;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/blelib/b/e;->u:[B

    return-object p1
.end method

.method static synthetic c(Lcom/ifengyu/blelib/b/e;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/blelib/b/e;->s:[B

    return-object p1
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const-string p1, "UNKNOWN"

    return-object p1

    :cond_0
    const-string p1, "TIMEOUT"

    return-object p1

    :cond_1
    const-string p1, "NOT SUPPORTED"

    return-object p1

    :cond_2
    const-string p1, "LINK LOSS"

    return-object p1

    :cond_3
    const-string p1, "TERMINATE PEER USER"

    return-object p1

    :cond_4
    const-string p1, "TERMINATE LOCAL HOST"

    return-object p1

    :cond_5
    const-string p1, "SUCCESS"

    return-object p1
.end method

.method static synthetic d(Lcom/ifengyu/blelib/b/e;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/blelib/b/e;->t:[B

    return-object p1
.end method

.method private e([B)Z
    .locals 2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/ifengyu/blelib/d/f;->a([BII)[B

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/blelib/d/f;->b([B)[B

    move-result-object p1

    invoke-static {v0}, Lcom/ifengyu/blelib/d/b;->a([B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/d/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method private f([B)[B
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unpack, real data length < 2, data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/d/a;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/ifengyu/blelib/d/f;->d([B)I

    move-result v0

    array-length v3, p1

    add-int/lit8 v4, v0, 0x2

    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unpack, real data length < dataLen + 2, data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/d/a;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-static {p1, v2, v0}, Lcom/ifengyu/blelib/d/f;->a([BII)[B

    move-result-object p1

    return-object p1
.end method

.method private g([B)Lcom/ifengyu/blelib/d/c;
    .locals 7

    invoke-direct {p0, p1}, Lcom/ifengyu/blelib/b/e;->e([B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "parse received pack-->invalid crc"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/ifengyu/blelib/d/f;->a([B)I

    move-result v0

    invoke-static {p1}, Lcom/ifengyu/blelib/d/f;->g([B)I

    move-result v2

    invoke-static {p1}, Lcom/ifengyu/blelib/d/f;->f([B)I

    move-result v3

    invoke-static {p1}, Lcom/ifengyu/blelib/d/f;->c([B)[B

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/blelib/a;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse received pack-->cmdId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", seq: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/d/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->y()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4e22

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/ifengyu/blelib/b/e;->f([B)[B

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 v2, 0x4e38

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/ifengyu/blelib/b/e;->v:Lcom/ifengyu/blelib/utils/a;

    invoke-virtual {v2}, Lcom/ifengyu/blelib/utils/a;->c()[B

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/blelib/b/e;->v:Lcom/ifengyu/blelib/utils/a;

    invoke-virtual {v3}, Lcom/ifengyu/blelib/utils/a;->b()[B

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/ifengyu/blelib/utils/b;->a([B[B[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/blelib/b/e;->f([B)[B

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->r()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->q()[B

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/ifengyu/blelib/utils/b;->a([B[B[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/blelib/b/e;->f([B)[B

    move-result-object p1

    :goto_0
    invoke-static {}, Lcom/ifengyu/blelib/a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse received pack-->decrypt data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/d/a;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "parse receive pack-->data is null"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->n()Lcom/ifengyu/blelib/d/d;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/ifengyu/blelib/d/d;->a(I[B)Lcom/ifengyu/blelib/d/c;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic a(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data failed, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", status: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/blelib/c/d;->c()Lcom/ifengyu/blelib/c/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ifengyu/blelib/c/d;->a(I)Lcom/ifengyu/blelib/c/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/ifengyu/blelib/c/e;->a(I)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/ifengyu/blelib/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceReady->device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/blelib/c/d;->c()Lcom/ifengyu/blelib/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/blelib/c/d;->b()V

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/blelib/c/b;

    invoke-interface {v1, p1}, Lno/nordicsemi/android/ble/w2/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceDisconnected->device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/ifengyu/blelib/b/e;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/blelib/c/d;->c()Lcom/ifengyu/blelib/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/blelib/c/d;->a()V

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/blelib/c/b;

    invoke-interface {v1, p1, p2}, Lno/nordicsemi/android/ble/w2/b;->a(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/blelib/c/b;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/blelib/b/e;->a([BLcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public a(Lcom/ifengyu/blelib/utils/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/blelib/b/e;->v:Lcom/ifengyu/blelib/utils/a;

    return-void
.end method

.method public a([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/blelib/b/e;->a([BLcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public a([BLcom/ifengyu/blelib/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "send data failed, device may be disconnected"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p2, p1}, Lcom/ifengyu/blelib/c/e;->a(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/ifengyu/blelib/d/f;->f([B)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/blelib/b/e;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v1, p1}, Lno/nordicsemi/android/ble/u1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/t2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/t2;->j()Lno/nordicsemi/android/ble/t2;

    new-instance v1, Lcom/ifengyu/blelib/b/d;

    invoke-direct {v1, p2, v0}, Lcom/ifengyu/blelib/b/d;-><init>(Lcom/ifengyu/blelib/c/e;I)V

    invoke-virtual {p1, v1}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/a;)Lno/nordicsemi/android/ble/t2;

    new-instance p2, Lcom/ifengyu/blelib/b/c;

    invoke-direct {p2, p0}, Lcom/ifengyu/blelib/b/c;-><init>(Lcom/ifengyu/blelib/b/e;)V

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/j;)Lno/nordicsemi/android/ble/t2;

    new-instance p2, Lcom/ifengyu/blelib/b/a;

    invoke-direct {p2, p0, v0}, Lcom/ifengyu/blelib/b/a;-><init>(Lcom/ifengyu/blelib/b/e;I)V

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/t2;

    new-instance p2, Lcom/ifengyu/blelib/b/b;

    invoke-direct {p2, p0, v0}, Lcom/ifengyu/blelib/b/b;-><init>(Lcom/ifengyu/blelib/b/e;I)V

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/e;)Lno/nordicsemi/android/ble/t2;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->a()V

    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/t2;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lno/nordicsemi/android/ble/u1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/t2;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceConnecting->device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceFailedToConnect->device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/ifengyu/blelib/b/e;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/blelib/c/b;

    invoke-interface {v1, p1, p2}, Lno/nordicsemi/android/ble/w2/b;->b(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/ifengyu/blelib/c/b;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/blelib/b/e;->r:Z

    return-void
.end method

.method public b([B)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/blelib/b/e;->t:[B

    return-void
.end method

.method public synthetic c(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v1, "invalid request"

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/blelib/c/d;->c()Lcom/ifengyu/blelib/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/blelib/c/d;->a(I)Lcom/ifengyu/blelib/c/e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x4

    invoke-virtual {p1, v0}, Lcom/ifengyu/blelib/c/e;->a(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceDisconnecting->device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c([B)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/blelib/b/e;->s:[B

    return-void
.end method

.method public d([B)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/blelib/b/e;->u:[B

    return-void
.end method

.method public f(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceConnected->device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected h()Lno/nordicsemi/android/ble/u1$b;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/ifengyu/blelib/b/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/blelib/b/e$b;-><init>(Lcom/ifengyu/blelib/b/e;Lcom/ifengyu/blelib/b/e$a;)V

    return-object v0
.end method

.method public synthetic h(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data success, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/blelib/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m()V
    .locals 0

    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->b()V

    return-void
.end method

.method public abstract n()Lcom/ifengyu/blelib/d/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected abstract o()Lcom/ifengyu/blelib/d/c;
.end method

.method public p()Lcom/ifengyu/blelib/utils/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->v:Lcom/ifengyu/blelib/utils/a;

    return-object v0
.end method

.method public q()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->t:[B

    return-object v0
.end method

.method public r()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->s:[B

    return-object v0
.end method

.method protected abstract s()Ljava/util/UUID;
.end method

.method protected abstract t()Ljava/util/UUID;
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->u:[B

    return-object v0
.end method

.method protected abstract v()Ljava/util/UUID;
.end method

.method protected abstract w()Ljava/util/UUID;
.end method

.method protected abstract x()Ljava/util/UUID;
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/blelib/b/e;->r:Z

    return v0
.end method
