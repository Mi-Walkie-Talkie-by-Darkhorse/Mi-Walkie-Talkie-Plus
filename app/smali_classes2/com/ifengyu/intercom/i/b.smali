.class public final synthetic Lcom/ifengyu/intercom/i/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/v2/e;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/i/t0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/i/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/b;->a:Lcom/ifengyu/intercom/i/t0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/i/b;->a:Lcom/ifengyu/intercom/i/t0;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/i/t0;->q(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method