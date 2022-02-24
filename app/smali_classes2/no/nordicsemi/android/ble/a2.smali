.class public final Lno/nordicsemi/android/ble/a2;
.super Lno/nordicsemi/android/ble/t1;
.source "ConditionalWaitRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/f2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/ble/a2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lno/nordicsemi/android/ble/t1;",
        "Lno/nordicsemi/android/ble/f2;"
    }
.end annotation


# instance fields
.field private final u:Lno/nordicsemi/android/ble/a2$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lno/nordicsemi/android/ble/a2$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private w:Z


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
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/a2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/a2;

    return-object p0
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/a2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno/nordicsemi/android/ble/j2;",
            ")",
            "Lno/nordicsemi/android/ble/a2<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/p2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/p2;

    return-object p0
.end method

.method bridge synthetic a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/p2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/a2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/a2;

    return-object p0
.end method

.method k()Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/a2;->u:Lno/nordicsemi/android/ble/a2$a;

    iget-object v2, p0, Lno/nordicsemi/android/ble/a2;->v:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/a2$a;->a(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v2, p0, Lno/nordicsemi/android/ble/a2;->w:Z
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
