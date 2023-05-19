.class public final Lno/nordicsemi/android/ble/d2;
.super Lno/nordicsemi/android/ble/o2;
.source "ConnectionPriorityRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/g2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/o2<",
        "Ljava/lang/Object;",
        ">;",
        "Lno/nordicsemi/android/ble/g2;"
    }
.end annotation


# instance fields
.field private final r:I


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
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/d2;->J(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/d2;

    return-object p0
.end method

.method I()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/d2;->r:I

    return v0
.end method

.method J(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/d2;
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
