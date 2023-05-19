.class public final synthetic Lno/nordicsemi/android/ble/r0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lno/nordicsemi/android/ble/BleManagerHandler$d;

.field public final synthetic b:Lno/nordicsemi/android/ble/x2/a;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/BleManagerHandler$d;Lno/nordicsemi/android/ble/x2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/r0;->a:Lno/nordicsemi/android/ble/BleManagerHandler$d;

    iput-object p2, p0, Lno/nordicsemi/android/ble/r0;->b:Lno/nordicsemi/android/ble/x2/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/r0;->a:Lno/nordicsemi/android/ble/BleManagerHandler$d;

    iget-object v1, p0, Lno/nordicsemi/android/ble/r0;->b:Lno/nordicsemi/android/ble/x2/a;

    invoke-static {v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->A1(Lno/nordicsemi/android/ble/BleManagerHandler$d;Lno/nordicsemi/android/ble/x2/a;)V

    return-void
.end method
