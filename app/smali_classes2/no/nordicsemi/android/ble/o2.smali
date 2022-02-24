.class public final Lno/nordicsemi/android/ble/o2;
.super Lno/nordicsemi/android/ble/m2;
.source "SleepRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/f2;


# instance fields
.field private final p:J


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;J)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/m2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    .line 2
    iput-wide p2, p0, Lno/nordicsemi/android/ble/o2;->p:J

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

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/o2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/o2;

    return-object p0
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/o2;
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

.method h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lno/nordicsemi/android/ble/o2;->p:J

    return-wide v0
.end method
