.class Lcom/ifengyu/intercom/lite/e/f$f;
.super Lcom/ifengyu/blelib/c/e;
.source "LiteBleClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/e/f;->b(Lcom/ifengyu/blelib/d/c;)V
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/e/f$f;->c:Lcom/ifengyu/intercom/lite/e/f;

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f$f;->c:Lcom/ifengyu/intercom/lite/e/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->e(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query device param failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/ifengyu/blelib/d/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f$f;->c:Lcom/ifengyu/intercom/lite/e/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->d(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query device param success, param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->SUCCESS:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f$f;->c:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->getDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/e/f$f;->c:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v2}, Lcom/ifengyu/blelib/b/e;->u()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/intercom/lite/e/f;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->getDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->f(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->getDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->hasVox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->getDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getVox()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    if-ne p1, v0, :cond_0

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/i/w;->b()Lcom/ifengyu/intercom/i/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/w;->a()V

    :cond_0
    return-void
.end method
