.class public abstract Lno/nordicsemi/android/ble/t1;
.super Lno/nordicsemi/android/ble/q2;
.source "AwaitingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lno/nordicsemi/android/ble/q2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private s:Lno/nordicsemi/android/ble/Request;

.field private t:I


# virtual methods
.method h()Lno/nordicsemi/android/ble/Request;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/t1;->s:Lno/nordicsemi/android/ble/Request;

    return-object v0
.end method

.method i()Z
    .locals 2

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/t1;->t:I

    const v1, -0x1e23f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j()Z
    .locals 2

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/t1;->t:I

    const v1, -0x1e240

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
