.class Lcom/ifengyu/intercom/lite/e/f$b;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/e/f;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/e/f$b;->a:Lcom/ifengyu/intercom/lite/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f$b;->a:Lcom/ifengyu/intercom/lite/e/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->b(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "update device model disconnect failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/e/f$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
