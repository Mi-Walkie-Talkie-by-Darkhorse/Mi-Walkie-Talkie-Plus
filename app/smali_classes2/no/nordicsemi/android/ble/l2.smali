.class public final Lno/nordicsemi/android/ble/l2;
.super Lno/nordicsemi/android/ble/m2;
.source "SetValueRequest.java"


# instance fields
.field private final p:[B

.field private q:Z


# virtual methods
.method bridge synthetic a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/l2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/l2;

    return-object p0
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/l2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method b(I)[B
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/l2;->q:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x200

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x3

    .line 2
    :goto_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/l2;->p:[B

    array-length v1, v0

    if-ge v1, p1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, p1}, Lno/nordicsemi/android/ble/y1;->a([BII)[B

    move-result-object p1

    return-object p1
.end method
