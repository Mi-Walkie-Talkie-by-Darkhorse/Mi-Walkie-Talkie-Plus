.class public final synthetic Lno/nordicsemi/android/ble/h0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lno/nordicsemi/android/ble/BleManagerHandler$f;

.field public final synthetic b:Lno/nordicsemi/android/ble/x2/b;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/BleManagerHandler$f;Lno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/h0;->a:Lno/nordicsemi/android/ble/BleManagerHandler$f;

    iput-object p2, p0, Lno/nordicsemi/android/ble/h0;->b:Lno/nordicsemi/android/ble/x2/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/h0;->a:Lno/nordicsemi/android/ble/BleManagerHandler$f;

    iget-object v1, p0, Lno/nordicsemi/android/ble/h0;->b:Lno/nordicsemi/android/ble/x2/b;

    invoke-static {v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->C1(Lno/nordicsemi/android/ble/BleManagerHandler$f;Lno/nordicsemi/android/ble/x2/b;)V

    return-void
.end method
