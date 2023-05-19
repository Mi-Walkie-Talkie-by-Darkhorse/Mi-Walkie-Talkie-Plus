.class public final synthetic Lcom/ifengyu/intercom/l/b/e/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/v2/l;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/e/t;

.field public final synthetic b:Lcom/ifengyu/intercom/h/b/a/a;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/e/t;Lcom/ifengyu/intercom/h/b/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/h;->a:Lcom/ifengyu/intercom/l/b/e/t;

    iput-object p2, p0, Lcom/ifengyu/intercom/l/b/e/h;->b:Lcom/ifengyu/intercom/h/b/a/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/h;->a:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/e/h;->b:Lcom/ifengyu/intercom/h/b/a/a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/ifengyu/intercom/l/b/e/t;->q(Lcom/ifengyu/intercom/h/b/a/a;Landroid/bluetooth/BluetoothDevice;[BI)V

    return-void
.end method
