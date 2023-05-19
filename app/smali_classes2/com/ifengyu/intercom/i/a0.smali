.class public final synthetic Lcom/ifengyu/intercom/i/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/v2/k;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/i/w0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/i/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/a0;->a:Lcom/ifengyu/intercom/i/w0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/i/a0;->a:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/w0;->U0(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
