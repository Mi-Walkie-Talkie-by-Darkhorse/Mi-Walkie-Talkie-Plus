.class public final Lno/nordicsemi/android/ble/b2;
.super Lno/nordicsemi/android/ble/v1;
.source "ConditionalWaitRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/ble/b2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lno/nordicsemi/android/ble/v1<",
        "TT;>;",
        "Lno/nordicsemi/android/ble/g2;"
    }
.end annotation


# instance fields
.field private final v:Lno/nordicsemi/android/ble/b2$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lno/nordicsemi/android/ble/b2$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final w:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private x:Z


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
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/b2;->O(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/b2;

    return-object p0
.end method

.method bridge synthetic I(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/q2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/b2;->O(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/b2;

    return-object p0
.end method

.method N()Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/b2;->v:Lno/nordicsemi/android/ble/b2$a;

    iget-object v2, p0, Lno/nordicsemi/android/ble/b2;->w:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/b2$a;->a(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/b2;->x:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "ConditionalWaitRequest"

    const-string v3, "Error while checking predicate"

    .line 2
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method O(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/b2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno/nordicsemi/android/ble/k2;",
            ")",
            "Lno/nordicsemi/android/ble/b2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/q2;->I(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/q2;

    return-object p0
.end method
