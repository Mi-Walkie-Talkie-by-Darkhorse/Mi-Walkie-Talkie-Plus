.class public final synthetic Lcom/ifengyu/blelib/b/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/u2/d;


# instance fields
.field private final synthetic a:Lcom/ifengyu/blelib/b/e;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/blelib/b/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/blelib/b/a;->a:Lcom/ifengyu/blelib/b/e;

    iput p2, p0, Lcom/ifengyu/blelib/b/a;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/blelib/b/a;->a:Lcom/ifengyu/blelib/b/e;

    iget v1, p0, Lcom/ifengyu/blelib/b/a;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/blelib/b/e;->a(ILandroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
