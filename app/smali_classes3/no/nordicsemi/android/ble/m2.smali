.class public final Lno/nordicsemi/android/ble/m2;
.super Lno/nordicsemi/android/ble/n2;
.source "SetValueRequest.java"


# instance fields
.field private final q:[B

.field private r:Z


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
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/m2;->I(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/m2;

    return-object p0
.end method

.method H(I)[B
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/m2;->r:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x200

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x3

    .line 2
    :goto_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/m2;->q:[B

    array-length v1, v0

    if-ge v1, p1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, p1}, Lno/nordicsemi/android/ble/z1;->a([BII)[B

    move-result-object p1

    return-object p1
.end method

.method I(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/m2;
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
