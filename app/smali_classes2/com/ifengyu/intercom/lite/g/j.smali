.class public final synthetic Lcom/ifengyu/intercom/lite/g/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/u2/k;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/g/t;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/g/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/g/j;->a:Lcom/ifengyu/intercom/lite/g/t;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/j;->a:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ifengyu/intercom/lite/g/t;->a(Landroid/bluetooth/BluetoothDevice;[BI)V

    return-void
.end method
