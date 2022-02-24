.class public final synthetic Lcom/ifengyu/intercom/lite/fragment/z0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/f/e;

.field private final synthetic b:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/f/e;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/z0;->a:Lcom/ifengyu/intercom/lite/f/e;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/z0;->b:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/z0;->a:Lcom/ifengyu/intercom/lite/f/e;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/z0;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->a(Lcom/ifengyu/intercom/lite/f/e;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
