.class public final synthetic Lcom/ifengyu/intercom/i/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/v2/e;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/i/w0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/i/w0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/z;->a:Lcom/ifengyu/intercom/i/w0;

    iput p2, p0, Lcom/ifengyu/intercom/i/z;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/i/z;->a:Lcom/ifengyu/intercom/i/w0;

    iget v1, p0, Lcom/ifengyu/intercom/i/z;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/i/w0;->W0(ILandroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
