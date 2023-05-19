.class abstract Lno/nordicsemi/android/ble/k2;
.super Ljava/lang/Object;
.source "RequestHandler.java"

# interfaces
.implements Lno/nordicsemi/android/ble/a2;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract b(Lno/nordicsemi/android/ble/Request;)V
    .param p1    # Lno/nordicsemi/android/ble/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method abstract c(Lno/nordicsemi/android/ble/q2;)V
    .param p1    # Lno/nordicsemi/android/ble/q2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
