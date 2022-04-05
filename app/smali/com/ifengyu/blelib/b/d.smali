.class public final synthetic Lcom/ifengyu/blelib/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lno/nordicsemi/android/ble/u2/a;


# instance fields
.field private final synthetic a:Lcom/ifengyu/blelib/c/e;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/blelib/c/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/blelib/b/d;->a:Lcom/ifengyu/blelib/c/e;

    iput p2, p0, Lcom/ifengyu/blelib/b/d;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/blelib/b/d;->a:Lcom/ifengyu/blelib/c/e;

    iget v1, p0, Lcom/ifengyu/blelib/b/d;->b:I

    invoke-static {v0, v1, p1}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/c/e;ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
