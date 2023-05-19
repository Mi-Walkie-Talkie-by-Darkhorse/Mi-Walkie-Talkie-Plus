.class Lcom/ifengyu/intercom/i/w0$b;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/i/w0;->p1([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/i/w0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/i/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/w0;->t0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exchange key commend write failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/w0;->u0(Lcom/ifengyu/intercom/i/w0;I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$PublicKey;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$PublicKey;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/w0;->p0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/w0;->q0(Lcom/ifengyu/intercom/i/w0;)Lcom/ifengyu/blelib/utils/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/blelib/utils/a;->b([B)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/w0;->q0(Lcom/ifengyu/intercom/i/w0;)Lcom/ifengyu/blelib/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/blelib/utils/a;->d()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/w0;->v1([B)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/w0;->q0(Lcom/ifengyu/intercom/i/w0;)Lcom/ifengyu/blelib/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/blelib/utils/a;->c()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/w0;->u1([B)V

    .line 8
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/w0;->r0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generate secret key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/w0;->q0(Lcom/ifengyu/intercom/i/w0;)Lcom/ifengyu/blelib/utils/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/blelib/utils/a;->f()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/i/w0$b;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/w0;->s0(Lcom/ifengyu/intercom/i/w0;)V

    return-void
.end method
