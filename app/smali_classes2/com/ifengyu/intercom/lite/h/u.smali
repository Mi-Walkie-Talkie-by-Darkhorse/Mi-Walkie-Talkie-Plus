.class public final synthetic Lcom/ifengyu/intercom/lite/h/u;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/h/h0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/h/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/u;->a:Lcom/ifengyu/intercom/lite/h/h0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/u;->a:Lcom/ifengyu/intercom/lite/h/h0;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/h/h0;->e(Landroid/bluetooth/BluetoothDevice;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
