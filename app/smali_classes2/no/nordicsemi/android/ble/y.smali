.class public final synthetic Lno/nordicsemi/android/ble/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/w1$g;

.field private final synthetic b:Lno/nordicsemi/android/ble/w2/b;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/w1$g;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/y;->a:Lno/nordicsemi/android/ble/w1$g;

    iput-object p2, p0, Lno/nordicsemi/android/ble/y;->b:Lno/nordicsemi/android/ble/w2/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/y;->a:Lno/nordicsemi/android/ble/w1$g;

    iget-object v1, p0, Lno/nordicsemi/android/ble/y;->b:Lno/nordicsemi/android/ble/w2/b;

    invoke-static {v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1$g;Lno/nordicsemi/android/ble/w2/b;)V

    return-void
.end method
