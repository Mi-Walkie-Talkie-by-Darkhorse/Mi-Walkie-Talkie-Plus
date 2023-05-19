.class public final synthetic Lno/nordicsemi/android/ble/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lno/nordicsemi/android/ble/BleManagerHandler$e;

.field public final synthetic b:Lno/nordicsemi/android/ble/x1;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/BleManagerHandler$e;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/b0;->a:Lno/nordicsemi/android/ble/BleManagerHandler$e;

    iput-object p2, p0, Lno/nordicsemi/android/ble/b0;->b:Lno/nordicsemi/android/ble/x1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/b0;->a:Lno/nordicsemi/android/ble/BleManagerHandler$e;

    iget-object v1, p0, Lno/nordicsemi/android/ble/b0;->b:Lno/nordicsemi/android/ble/x1;

    invoke-static {v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->B1(Lno/nordicsemi/android/ble/BleManagerHandler$e;Lno/nordicsemi/android/ble/x1;)V

    return-void
.end method
