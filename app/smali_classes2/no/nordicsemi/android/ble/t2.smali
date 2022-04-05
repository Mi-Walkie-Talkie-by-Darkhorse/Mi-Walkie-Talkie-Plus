.class public final Lno/nordicsemi/android/ble/t2;
.super Lno/nordicsemi/android/ble/n2;

# interfaces
.implements Lno/nordicsemi/android/ble/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/n2<",
        "Lno/nordicsemi/android/ble/u2/c;",
        ">;",
        "Lno/nordicsemi/android/ble/f2;"
    }
.end annotation


# static fields
.field private static final y:Lno/nordicsemi/android/ble/data/c;


# instance fields
.field private q:Lno/nordicsemi/android/ble/u2/k;

.field private r:Lno/nordicsemi/android/ble/data/c;

.field private final s:[B

.field private final t:I

.field private u:[B

.field private v:[B

.field private w:I

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lno/nordicsemi/android/ble/data/e;

    invoke-direct {v0}, Lno/nordicsemi/android/ble/data/e;-><init>()V

    sput-object v0, Lno/nordicsemi/android/ble/t2;->y:Lno/nordicsemi/android/ble/data/c;

    return-void
.end method

.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;)V
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/ble/t2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V

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

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/n2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const/4 p1, 0x0

    iput p1, p0, Lno/nordicsemi/android/ble/t2;->w:I

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/t2;->x:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lno/nordicsemi/android/ble/t2;->s:[B

    iput p1, p0, Lno/nordicsemi/android/ble/t2;->t:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/t2;->x:Z

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

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/n2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const/4 p1, 0x0

    iput p1, p0, Lno/nordicsemi/android/ble/t2;->w:I

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/t2;->x:Z

    invoke-static {p3, p4, p5}, Lno/nordicsemi/android/ble/y1;->a([BII)[B

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/t2;->s:[B

    iput p6, p0, Lno/nordicsemi/android/ble/t2;->t:I

    return-void
.end method


# virtual methods
.method bridge synthetic a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/t2;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/data/c;Lno/nordicsemi/android/ble/u2/k;)Lno/nordicsemi/android/ble/t2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/data/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lno/nordicsemi/android/ble/u2/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lno/nordicsemi/android/ble/t2;->r:Lno/nordicsemi/android/ble/data/c;

    iput-object p2, p0, Lno/nordicsemi/android/ble/t2;->q:Lno/nordicsemi/android/ble/u2/k;

    return-object p0
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/t2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/a;)Lno/nordicsemi/android/ble/t2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/u2/a;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/t2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/e;)Lno/nordicsemi/android/ble/t2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/u2/e;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/j;)Lno/nordicsemi/android/ble/t2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/u2/j;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/t2;->q:Lno/nordicsemi/android/ble/u2/k;

    if-eqz v0, :cond_0

    iget v1, p0, Lno/nordicsemi/android/ble/t2;->w:I

    invoke-interface {v0, p1, p2, v1}, Lno/nordicsemi/android/ble/u2/k;->a(Landroid/bluetooth/BluetoothDevice;[BI)V

    :cond_0
    return-void
.end method

.method b(Landroid/bluetooth/BluetoothDevice;[B)Z
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v1, Lno/nordicsemi/android/ble/r1;

    invoke-direct {v1, p0, p1, p2}, Lno/nordicsemi/android/ble/r1;-><init>(Lno/nordicsemi/android/ble/t2;Landroid/bluetooth/BluetoothDevice;[B)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    iget v0, p0, Lno/nordicsemi/android/ble/t2;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lno/nordicsemi/android/ble/t2;->w:I

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/t2;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v1, Lno/nordicsemi/android/ble/s1;

    invoke-direct {v1, p0, p1}, Lno/nordicsemi/android/ble/s1;-><init>(Lno/nordicsemi/android/ble/t2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/t2;->u:[B

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method b(I)[B
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param

    iget-object v0, p0, Lno/nordicsemi/android/ble/t2;->r:Lno/nordicsemi/android/ble/data/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lno/nordicsemi/android/ble/t2;->s:[B

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lno/nordicsemi/android/ble/t2;->t:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    add-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0xc

    :goto_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/t2;->v:[B

    if-nez v0, :cond_2

    iget-object v0, p0, Lno/nordicsemi/android/ble/t2;->r:Lno/nordicsemi/android/ble/data/c;

    iget-object v2, p0, Lno/nordicsemi/android/ble/t2;->s:[B

    iget v3, p0, Lno/nordicsemi/android/ble/t2;->w:I

    invoke-interface {v0, v2, v3, p1}, Lno/nordicsemi/android/ble/data/c;->a([BII)[B

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lno/nordicsemi/android/ble/t2;->r:Lno/nordicsemi/android/ble/data/c;

    iget-object v3, p0, Lno/nordicsemi/android/ble/t2;->s:[B

    iget v4, p0, Lno/nordicsemi/android/ble/t2;->w:I

    add-int/2addr v4, v1

    invoke-interface {v2, v3, v4, p1}, Lno/nordicsemi/android/ble/data/c;->a([BII)[B

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/ble/t2;->v:[B

    :cond_3
    iget-object p1, p0, Lno/nordicsemi/android/ble/t2;->v:[B

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lno/nordicsemi/android/ble/t2;->x:Z

    :cond_4
    iput-object v0, p0, Lno/nordicsemi/android/ble/t2;->u:[B

    return-object v0

    :cond_5
    :goto_1
    iput-boolean v1, p0, Lno/nordicsemi/android/ble/t2;->x:Z

    iget-object p1, p0, Lno/nordicsemi/android/ble/t2;->s:[B

    iput-object p1, p0, Lno/nordicsemi/android/ble/t2;->u:[B

    return-object p1
.end method

.method public synthetic f(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/n2;->p:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lno/nordicsemi/android/ble/u2/c;

    new-instance v1, Lno/nordicsemi/android/ble/data/Data;

    iget-object v2, p0, Lno/nordicsemi/android/ble/t2;->s:[B

    invoke-direct {v1, v2}, Lno/nordicsemi/android/ble/data/Data;-><init>([B)V

    invoke-interface {v0, p1, v1}, Lno/nordicsemi/android/ble/u2/c;->a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    :cond_0
    return-void
.end method

.method h()I
    .locals 1

    iget v0, p0, Lno/nordicsemi/android/ble/t2;->t:I

    return v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/t2;->x:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j()Lno/nordicsemi/android/ble/t2;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lno/nordicsemi/android/ble/t2;->y:Lno/nordicsemi/android/ble/data/c;

    iput-object v0, p0, Lno/nordicsemi/android/ble/t2;->r:Lno/nordicsemi/android/ble/data/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/ble/t2;->q:Lno/nordicsemi/android/ble/u2/k;

    return-object p0
.end method
