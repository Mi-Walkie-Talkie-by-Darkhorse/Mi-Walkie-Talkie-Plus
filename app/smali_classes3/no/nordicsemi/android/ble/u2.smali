.class public final Lno/nordicsemi/android/ble/u2;
.super Lno/nordicsemi/android/ble/o2;
.source "WriteRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/g2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/o2<",
        "Lno/nordicsemi/android/ble/v2/d;",
        ">;",
        "Lno/nordicsemi/android/ble/g2;"
    }
.end annotation


# static fields
.field private static final z:Lno/nordicsemi/android/ble/data/c;


# instance fields
.field private r:Lno/nordicsemi/android/ble/v2/l;

.field private s:Lno/nordicsemi/android/ble/data/c;

.field private final t:[B

.field private final u:I

.field private v:[B

.field private w:[B

.field private x:I

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/data/e;

    invoke-direct {v0}, Lno/nordicsemi/android/ble/data/e;-><init>()V

    sput-object v0, Lno/nordicsemi/android/ble/u2;->z:Lno/nordicsemi/android/ble/data/c;

    return-void
.end method

.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;)V
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/ble/u2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/o2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lno/nordicsemi/android/ble/u2;->x:I

    .line 4
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/u2;->y:Z

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lno/nordicsemi/android/ble/u2;->t:[B

    .line 6
    iput p1, p0, Lno/nordicsemi/android/ble/u2;->u:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/u2;->y:Z

    return-void
.end method

.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;[BIII)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/o2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lno/nordicsemi/android/ble/u2;->x:I

    .line 10
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/u2;->y:Z

    .line 11
    invoke-static {p3, p4, p5}, Lno/nordicsemi/android/ble/z1;->a([BII)[B

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/u2;->t:[B

    .line 12
    iput p6, p0, Lno/nordicsemi/android/ble/u2;->u:I

    return-void
.end method

.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattDescriptor;[BII)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/o2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattDescriptor;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lno/nordicsemi/android/ble/u2;->x:I

    .line 15
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/u2;->y:Z

    .line 16
    invoke-static {p3, p4, p5}, Lno/nordicsemi/android/ble/z1;->a([BII)[B

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/u2;->t:[B

    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lno/nordicsemi/android/ble/u2;->u:I

    return-void
.end method

.method private synthetic P(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/u2;->r:Lno/nordicsemi/android/ble/v2/l;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lno/nordicsemi/android/ble/u2;->x:I

    invoke-interface {v0, p1, p2, v1}, Lno/nordicsemi/android/ble/v2/l;->a(Landroid/bluetooth/BluetoothDevice;[BI)V

    :cond_0
    return-void
.end method

.method private synthetic R(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/o2;->q:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lno/nordicsemi/android/ble/v2/d;

    new-instance v1, Lno/nordicsemi/android/ble/data/Data;

    iget-object v2, p0, Lno/nordicsemi/android/ble/u2;->t:[B

    invoke-direct {v1, v2}, Lno/nordicsemi/android/ble/data/Data;-><init>([B)V

    invoke-interface {v0, p1, v1}, Lno/nordicsemi/android/ble/v2/d;->a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    :cond_0
    return-void
.end method


# virtual methods
.method bridge synthetic G(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/u2;->U(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/u2;

    return-object p0
.end method

.method public I(Lno/nordicsemi/android/ble/v2/b;)Lno/nordicsemi/android/ble/u2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/v2/b;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->e(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->g(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method L(I)[B
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/u2;->s:Lno/nordicsemi/android/ble/data/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v2, p0, Lno/nordicsemi/android/ble/u2;->t:[B

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v3, p0, Lno/nordicsemi/android/ble/u2;->u:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    add-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0xc

    .line 3
    :goto_0
    iget-object v3, p0, Lno/nordicsemi/android/ble/u2;->w:[B

    if-nez v3, :cond_2

    .line 4
    iget v3, p0, Lno/nordicsemi/android/ble/u2;->x:I

    invoke-interface {v0, v2, v3, p1}, Lno/nordicsemi/android/ble/data/c;->a([BII)[B

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 5
    iget-object v0, p0, Lno/nordicsemi/android/ble/u2;->s:Lno/nordicsemi/android/ble/data/c;

    iget-object v2, p0, Lno/nordicsemi/android/ble/u2;->t:[B

    iget v4, p0, Lno/nordicsemi/android/ble/u2;->x:I

    add-int/2addr v4, v1

    invoke-interface {v0, v2, v4, p1}, Lno/nordicsemi/android/ble/data/c;->a([BII)[B

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/u2;->w:[B

    .line 6
    :cond_3
    iget-object p1, p0, Lno/nordicsemi/android/ble/u2;->w:[B

    if-nez p1, :cond_4

    .line 7
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/u2;->y:Z

    .line 8
    :cond_4
    iput-object v3, p0, Lno/nordicsemi/android/ble/u2;->v:[B

    return-object v3

    .line 9
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/u2;->y:Z

    .line 10
    iget-object p1, p0, Lno/nordicsemi/android/ble/u2;->t:[B

    iput-object p1, p0, Lno/nordicsemi/android/ble/u2;->v:[B

    return-object p1
.end method

.method M()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/u2;->u:I

    return v0
.end method

.method N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/u2;->y:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public O(Lno/nordicsemi/android/ble/v2/f;)Lno/nordicsemi/android/ble/u2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->i(Lno/nordicsemi/android/ble/v2/f;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public synthetic Q(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/u2;->P(Landroid/bluetooth/BluetoothDevice;[B)V

    return-void
.end method

.method public synthetic S(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/u2;->R(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method T(Landroid/bluetooth/BluetoothDevice;[B)Z
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v1, Lno/nordicsemi/android/ble/t1;

    invoke-direct {v1, p0, p1, p2}, Lno/nordicsemi/android/ble/t1;-><init>(Lno/nordicsemi/android/ble/u2;Landroid/bluetooth/BluetoothDevice;[B)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    .line 2
    iget v0, p0, Lno/nordicsemi/android/ble/u2;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lno/nordicsemi/android/ble/u2;->x:I

    .line 3
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/u2;->y:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v1, Lno/nordicsemi/android/ble/u1;

    invoke-direct {v1, p0, p1}, Lno/nordicsemi/android/ble/u1;-><init>(Lno/nordicsemi/android/ble/u2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/u2;->v:[B

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method U(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/u2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->G(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public V()Lno/nordicsemi/android/ble/u2;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lno/nordicsemi/android/ble/u2;->z:Lno/nordicsemi/android/ble/data/c;

    iput-object v0, p0, Lno/nordicsemi/android/ble/u2;->s:Lno/nordicsemi/android/ble/data/c;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lno/nordicsemi/android/ble/u2;->r:Lno/nordicsemi/android/ble/v2/l;

    return-object p0
.end method

.method public W(Lno/nordicsemi/android/ble/data/c;Lno/nordicsemi/android/ble/v2/l;)Lno/nordicsemi/android/ble/u2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/data/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lno/nordicsemi/android/ble/v2/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/u2;->s:Lno/nordicsemi/android/ble/data/c;

    .line 2
    iput-object p2, p0, Lno/nordicsemi/android/ble/u2;->r:Lno/nordicsemi/android/ble/v2/l;

    return-object p0
.end method
