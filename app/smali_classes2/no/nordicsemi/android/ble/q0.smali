.class public final synthetic Lno/nordicsemi/android/ble/q0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/w1$e;

.field private final synthetic b:Lno/nordicsemi/android/ble/w2/a;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/w1$e;Lno/nordicsemi/android/ble/w2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/q0;->a:Lno/nordicsemi/android/ble/w1$e;

    iput-object p2, p0, Lno/nordicsemi/android/ble/q0;->b:Lno/nordicsemi/android/ble/w2/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/q0;->a:Lno/nordicsemi/android/ble/w1$e;

    iget-object v1, p0, Lno/nordicsemi/android/ble/q0;->b:Lno/nordicsemi/android/ble/w2/a;

    invoke-static {v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$e;Lno/nordicsemi/android/ble/w2/a;)V

    return-void
.end method
