.class public final synthetic Lcom/ifengyu/intercom/lite/g/f;
.super Ljava/lang/Object;

# interfaces
.implements Lno/nordicsemi/android/ble/u2/j;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/g/t;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/g/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/g/f;->a:Lcom/ifengyu/intercom/lite/g/t;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/f;->a:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/g/t;->g(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
