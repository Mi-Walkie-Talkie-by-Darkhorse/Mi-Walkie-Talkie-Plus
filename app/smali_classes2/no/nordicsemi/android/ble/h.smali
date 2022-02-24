.class public final synthetic Lno/nordicsemi/android/ble/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/w1$b;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/w1$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/h;->a:Lno/nordicsemi/android/ble/w1$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/h;->a:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1$b;->a()V

    return-void
.end method
