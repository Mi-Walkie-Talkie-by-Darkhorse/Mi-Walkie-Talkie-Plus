.class public final synthetic Lcom/ifengyu/intercom/i/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/v2/b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/i/v0;

.field public final synthetic b:I

.field public final synthetic c:Lcom/ifengyu/blelib/b/c;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/i/v0;ILcom/ifengyu/blelib/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/o;->a:Lcom/ifengyu/intercom/i/v0;

    iput p2, p0, Lcom/ifengyu/intercom/i/o;->b:I

    iput-object p3, p0, Lcom/ifengyu/intercom/i/o;->c:Lcom/ifengyu/blelib/b/c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/i/o;->a:Lcom/ifengyu/intercom/i/v0;

    iget v1, p0, Lcom/ifengyu/intercom/i/o;->b:I

    iget-object v2, p0, Lcom/ifengyu/intercom/i/o;->c:Lcom/ifengyu/blelib/b/c;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ifengyu/intercom/i/v0;->O0(ILcom/ifengyu/blelib/b/c;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
