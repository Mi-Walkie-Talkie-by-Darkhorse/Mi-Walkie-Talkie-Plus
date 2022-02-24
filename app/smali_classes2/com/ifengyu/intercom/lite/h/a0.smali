.class public final synthetic Lcom/ifengyu/intercom/lite/h/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/u2/d;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/h/h0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/h/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/a0;->a:Lcom/ifengyu/intercom/lite/h/h0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/a0;->a:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/lite/h/h0;->c(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
