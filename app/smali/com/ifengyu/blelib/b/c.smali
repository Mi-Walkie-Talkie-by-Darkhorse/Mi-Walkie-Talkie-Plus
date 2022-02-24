.class public final synthetic Lcom/ifengyu/blelib/b/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/u2/j;


# instance fields
.field private final synthetic a:Lcom/ifengyu/blelib/b/e;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/blelib/b/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/blelib/b/c;->a:Lcom/ifengyu/blelib/b/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/blelib/b/c;->a:Lcom/ifengyu/blelib/b/e;

    invoke-virtual {v0, p1}, Lcom/ifengyu/blelib/b/e;->h(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
