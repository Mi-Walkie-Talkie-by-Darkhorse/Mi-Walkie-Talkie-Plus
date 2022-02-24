.class public final synthetic Lno/nordicsemi/android/ble/u0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/w1$f;

.field private final synthetic b:Lno/nordicsemi/android/ble/v1;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/w1$f;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/u0;->a:Lno/nordicsemi/android/ble/w1$f;

    iput-object p2, p0, Lno/nordicsemi/android/ble/u0;->b:Lno/nordicsemi/android/ble/v1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/u0;->a:Lno/nordicsemi/android/ble/w1$f;

    iget-object v1, p0, Lno/nordicsemi/android/ble/u0;->b:Lno/nordicsemi/android/ble/v1;

    invoke-static {v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$f;Lno/nordicsemi/android/ble/v1;)V

    return-void
.end method
