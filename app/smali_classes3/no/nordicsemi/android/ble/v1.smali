.class public abstract Lno/nordicsemi/android/ble/v1;
.super Lno/nordicsemi/android/ble/r2;
.source "AwaitingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lno/nordicsemi/android/ble/r2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private t:Lno/nordicsemi/android/ble/Request;

.field private u:I


# virtual methods
.method K()Lno/nordicsemi/android/ble/Request;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/v1;->t:Lno/nordicsemi/android/ble/Request;

    return-object v0
.end method

.method L()Z
    .locals 2

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/v1;->u:I

    const v1, -0x1e23f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method M()Z
    .locals 2

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/v1;->u:I

    const v1, -0x1e240

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
