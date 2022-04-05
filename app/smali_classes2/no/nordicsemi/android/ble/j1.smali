.class public final synthetic Lno/nordicsemi/android/ble/j1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/Request;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/j1;->a:Lno/nordicsemi/android/ble/Request;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/j1;->a:Lno/nordicsemi/android/ble/Request;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->b()V

    return-void
.end method
