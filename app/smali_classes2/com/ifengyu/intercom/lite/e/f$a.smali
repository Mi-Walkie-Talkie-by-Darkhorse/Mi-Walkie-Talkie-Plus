.class Lcom/ifengyu/intercom/lite/e/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/e/f;->j(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/ifengyu/intercom/lite/models/DeviceModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/e/f;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/e/f$a;->a:Lcom/ifengyu/intercom/lite/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/e/f$a;->a:Lcom/ifengyu/intercom/lite/e/f;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "update device model disconnect success "

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/e/f$a;->a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V

    return-void
.end method
