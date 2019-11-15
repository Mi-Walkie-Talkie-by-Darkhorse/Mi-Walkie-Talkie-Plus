.class public Lcom/ifengyu/intercom/update/a;
.super Ljava/lang/Object;
.source "UpdateDeviceService.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/h;


# static fields
.field private static a:Lcom/ifengyu/intercom/update/a;


# instance fields
.field private b:Lcom/ifengyu/intercom/node/j;

.field private c:Lcom/ifengyu/intercom/update/dolphin/f;

.field private d:Lcom/ifengyu/intercom/update/sealshark/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/intercom/update/a;->a:Lcom/ifengyu/intercom/update/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/update/a;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/update/a;->a:Lcom/ifengyu/intercom/update/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/update/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/update/a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/update/a;->a:Lcom/ifengyu/intercom/update/a;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/update/a;->a:Lcom/ifengyu/intercom/update/a;

    return-object v0
.end method

.method private a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/a;->b:Lcom/ifengyu/intercom/node/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/a;->b:Lcom/ifengyu/intercom/node/j;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/ifengyu/intercom/node/j;->a(ILcom/ifengyu/intercom/node/SendDataWrap;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "UpdateDeviceService"

    const-string v1, "Device has disconnected."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string v1, "UpdateDeviceService"

    const-string v2, "Got exception while sending Data, "

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/node/j;)V
    .locals 2

    const-string v0, "UpdateDeviceService"

    const-string v1, "onDeviceConnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/update/a;->b:Lcom/ifengyu/intercom/node/j;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/a;->c:Lcom/ifengyu/intercom/update/dolphin/f;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/sealshark/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/a;->d:Lcom/ifengyu/intercom/update/sealshark/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UpdateDeviceService"

    const-string v1, "onDeviceDisConnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/a;->b:Lcom/ifengyu/intercom/node/j;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/c;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/m;)V
    .locals 4

    const-string v0, "UpdateDeviceService"

    const-string v1, "onSealCmdReceived"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/m;->a()I

    move-result v0

    const/16 v1, 0x4e2e

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/m;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/m;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/a;->d:Lcom/ifengyu/intercom/update/sealshark/d;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;->SEAL_UP_RESULT_LOW_POWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/a;->d:Lcom/ifengyu/intercom/update/sealshark/d;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/d;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/update/a;->d:Lcom/ifengyu/intercom/update/sealshark/d;

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;->SEAL_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->getOffset()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ifengyu/intercom/update/sealshark/d;->a(ZI)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/n;)V
    .locals 4

    const-string v0, "UpdateDeviceService"

    const-string v1, "onSharkCmdReceived"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/n;->a()I

    move-result v0

    const/16 v1, 0x4e2e

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/n;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/n;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/a;->d:Lcom/ifengyu/intercom/update/sealshark/d;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;->SHARK_UP_RESULT_LOW_POWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/a;->d:Lcom/ifengyu/intercom/update/sealshark/d;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/d;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/update/a;->d:Lcom/ifengyu/intercom/update/sealshark/d;

    sget-object v3, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;->SHARK_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->getOffset()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ifengyu/intercom/update/sealshark/d;->a(ZI)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 4

    const-string v0, "UpdateDeviceService"

    const-string v1, "onDolphinCmdReceived"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileResp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UpdateDeviceService"

    const-string v1, "received a FileResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/a;->c:Lcom/ifengyu/intercom/update/dolphin/f;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getFileResp()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/a;->c:Lcom/ifengyu/intercom/update/dolphin/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getAckSeq()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/ifengyu/intercom/update/dolphin/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;I)V

    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasUpdateResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UpdateDeviceService"

    const-string v1, "received a updateResponse."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/a;->c:Lcom/ifengyu/intercom/update/dolphin/f;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getUpdateResponse()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/a;->c:Lcom/ifengyu/intercom/update/dolphin/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getState()Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getResult()Z

    move-result v3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getAck()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/ifengyu/intercom/update/dolphin/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;ZI)V

    :cond_1
    return-void
.end method

.method public a(ILcom/ifengyu/intercom/node/a;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->a()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/a;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/protobuf/Message;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/a;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z

    move-result v0

    return v0
.end method

.method public a([B)Z
    .locals 1

    invoke-static {p1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a([B)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/a;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
