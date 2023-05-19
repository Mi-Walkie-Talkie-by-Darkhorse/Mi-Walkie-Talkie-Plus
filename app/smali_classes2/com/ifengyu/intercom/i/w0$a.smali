.class Lcom/ifengyu/intercom/i/w0$a;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/i/w0;->I0(Lcom/ifengyu/blelib/c/c;)V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0$a;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0$a;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/w0;->o0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query device param failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0$a;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/w0;->l0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "query device param success"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0$a;->c:Lcom/ifengyu/intercom/i/w0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/w0;->F0()[B

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/i/w0;->m0(Lcom/ifengyu/intercom/i/w0;Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;[B)V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getConfigInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getName()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/p/h0;->a(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->j0(Ljava/lang/String;)V

    return-void
.end method
