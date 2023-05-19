.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;
.super Ljava/lang/Object;
.source "DolphinUpdateDeviceService.java"


# static fields
.field private static c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 4

    const-string v0, "UpdateDeviceService"

    const-string v1, "onDolphinUpdateCmdReceived"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileResp()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "received a FileResp"

    .line 3
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getFileResp()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getAckSeq()I

    move-result v1

    invoke-interface {v2, v3, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;I)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasUpdateResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "received a updateResponse."

    .line 8
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getUpdateResponse()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getState()Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getResult()Z

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getAck()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;ZI)V

    :cond_1
    return-void
.end method

.method public c(Lcom/google/protobuf/Message;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/u0;->v1(Lcom/google/protobuf/Message;)V

    return-void
.end method

.method public d([B)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/u0;->w1([B)V

    return-void
.end method

.method public e(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->b:Ljava/lang/String;

    return-void
.end method
