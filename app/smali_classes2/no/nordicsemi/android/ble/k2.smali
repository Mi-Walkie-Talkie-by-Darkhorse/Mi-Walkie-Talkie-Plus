.class public Lno/nordicsemi/android/ble/k2;
.super Lno/nordicsemi/android/ble/m2;


# instance fields
.field private final p:Ljava/util/Queue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lno/nordicsemi/android/ble/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    sget-object v0, Lno/nordicsemi/android/ble/Request$Type;->a:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {p0, v0}, Lno/nordicsemi/android/ble/m2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/ble/k2;->p:Ljava/util/Queue;

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

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/k2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/k2;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/f2;)Lno/nordicsemi/android/ble/k2;
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/f2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    instance-of v0, p1, Lno/nordicsemi/android/ble/Request;

    if-eqz v0, :cond_1

    check-cast p1, Lno/nordicsemi/android/ble/Request;

    iget-boolean v0, p1, Lno/nordicsemi/android/ble/Request;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/ble/k2;->p:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Lno/nordicsemi/android/ble/Request;->m:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Request already enqueued"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Operation does not extend Request"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/k2;
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

.method h()Lno/nordicsemi/android/ble/Request;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/k2;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/ble/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method i()Z
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/k2;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
