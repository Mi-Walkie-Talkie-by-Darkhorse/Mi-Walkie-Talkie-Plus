.class Lcom/ifengyu/intercom/lite/e/f$e;
.super Lcom/ifengyu/blelib/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/lite/e/f;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/e/f$e;->c:Lcom/ifengyu/intercom/lite/e/f;

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f$e;->c:Lcom/ifengyu/intercom/lite/e/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->c(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login commend write failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f$e;->c:Lcom/ifengyu/intercom/lite/e/f;

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/intercom/lite/e/f;I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/e/f$e;->c:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/u1;->c()Lno/nordicsemi/android/ble/d2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/p2;->a()V

    return-void
.end method

.method public a(Lcom/ifengyu/blelib/d/c;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f$e;->c:Lcom/ifengyu/intercom/lite/e/f;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/lite/e/f;->b(Lcom/ifengyu/intercom/lite/e/f;Lcom/ifengyu/blelib/d/c;)V

    return-void
.end method
