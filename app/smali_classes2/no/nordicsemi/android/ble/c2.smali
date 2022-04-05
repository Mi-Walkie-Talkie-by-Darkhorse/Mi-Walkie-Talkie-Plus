.class public final Lno/nordicsemi/android/ble/c2;
.super Lno/nordicsemi/android/ble/n2;

# interfaces
.implements Lno/nordicsemi/android/ble/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/n2<",
        "Ljava/lang/Object;",
        ">;",
        "Lno/nordicsemi/android/ble/f2;"
    }
.end annotation


# instance fields
.field private final q:I


# virtual methods
.method bridge synthetic a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/c2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/c2;

    return-object p0
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/c2;
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

.method h()I
    .locals 1

    iget v0, p0, Lno/nordicsemi/android/ble/c2;->q:I

    return v0
.end method
