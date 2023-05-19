.class public final synthetic Lcom/ifengyu/intercom/i/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/v2/b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/blelib/b/c;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/blelib/b/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/t;->a:Lcom/ifengyu/blelib/b/c;

    iput p2, p0, Lcom/ifengyu/intercom/i/t;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/i/t;->a:Lcom/ifengyu/blelib/b/c;

    iget v1, p0, Lcom/ifengyu/intercom/i/t;->b:I

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/i/w0;->S0(Lcom/ifengyu/blelib/b/c;ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
