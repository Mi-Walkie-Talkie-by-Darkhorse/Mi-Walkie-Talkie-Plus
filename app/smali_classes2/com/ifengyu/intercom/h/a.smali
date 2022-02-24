.class public Lcom/ifengyu/intercom/h/a;
.super Ljava/lang/Object;
.source "UpdateDeviceService.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/g;


# static fields
.field private static d:Lcom/ifengyu/intercom/h/a;


# instance fields
.field private a:Lcom/ifengyu/intercom/node/i;

.field private b:Lcom/ifengyu/intercom/update/dolphin/f;

.field private c:Lcom/ifengyu/intercom/update/sealshark/d;


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

.method public static a()Lcom/ifengyu/intercom/h/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/h/a;->d:Lcom/ifengyu/intercom/h/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/h/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/h/a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/h/a;->d:Lcom/ifengyu/intercom/h/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/h/a;->d:Lcom/ifengyu/intercom/h/a;

    return-object v0
.end method

.method private a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z
    .locals 3

    const-string v0, "UpdateDeviceService"

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/h/a;->a:Lcom/ifengyu/intercom/node/i;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/ifengyu/intercom/h/a;->a:Lcom/ifengyu/intercom/node/i;

    const/4 v2, 0x3

    invoke-interface {v1, v2, p1}, Lcom/ifengyu/intercom/node/i;->a(ILcom/ifengyu/intercom/node/SendDataWrap;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "Device has disconnected."

    .line 42
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v1, "Got exception while sending Data, "

    .line 43
    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/i;)V
    .locals 2

    const-string v0, "UpdateDeviceService"

    const-string v1, "onDeviceConnected"

    .line 4
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-object p1, p0, Lcom/ifengyu/intercom/h/a;->a:Lcom/ifengyu/intercom/node/i;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/f;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/ifengyu/intercom/h/a;->b:Lcom/ifengyu/intercom/update/dolphin/f;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/sealshark/d;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/ifengyu/intercom/h/a;->c:Lcom/ifengyu/intercom/update/sealshark/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string p1, "UpdateDeviceService"

    const-string v0, "onDeviceDisConnected"

    .line 6
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ifengyu/intercom/h/a;->a:Lcom/ifengyu/intercom/node/i;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/b;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/l;)V
    .locals 2

    const-string p1, "UpdateDeviceService"

    const-string v0, "onSealCmdReceived"

    .line 20
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->a()I

    move-result p1

    const/16 v0, 0x4e2e

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    instance-of p1, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    .line 23
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    move-result-object p2

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/h/a;->c:Lcom/ifengyu/intercom/update/sealshark/d;

    if-eqz v0, :cond_2

    .line 25
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;->SEAL_UP_RESULT_LOW_POWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    if-ne p2, v1, :cond_0

    .line 26
    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/d;->a()V

    goto :goto_1

    .line 27
    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;->SEAL_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->getOffset()I

    move-result p1

    invoke-interface {v0, p2, p1}, Lcom/ifengyu/intercom/update/sealshark/d;->a(ZI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/m;)V
    .locals 2

    const-string p1, "UpdateDeviceService"

    const-string v0, "onSharkCmdReceived"

    .line 28
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->a()I

    move-result p1

    const/16 v0, 0x4e2e

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    instance-of p1, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    .line 31
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    move-result-object p2

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/h/a;->c:Lcom/ifengyu/intercom/update/sealshark/d;

    if-eqz v0, :cond_2

    .line 33
    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;->SHARK_UP_RESULT_LOW_POWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    if-ne p2, v1, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/d;->a()V

    goto :goto_1

    .line 35
    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;->SHARK_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->getOffset()I

    move-result p1

    invoke-interface {v0, p2, p1}, Lcom/ifengyu/intercom/update/sealshark/d;->a(ZI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 3

    const-string p1, "UpdateDeviceService"

    const-string v0, "onDolphinCmdReceived"

    .line 8
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileResp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "received a FileResp"

    .line 10
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/h/a;->b:Lcom/ifengyu/intercom/update/dolphin/f;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getFileResp()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/ifengyu/intercom/h/a;->b:Lcom/ifengyu/intercom/update/dolphin/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getAckSeq()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/ifengyu/intercom/update/dolphin/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;I)V

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasUpdateResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "received a updateResponse."

    .line 15
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/h/a;->b:Lcom/ifengyu/intercom/update/dolphin/f;

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getUpdateResponse()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/ifengyu/intercom/h/a;->b:Lcom/ifengyu/intercom/update/dolphin/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getState()Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getResult()Z

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getAck()I

    move-result p1

    invoke-interface {p2, v0, v1, p1}, Lcom/ifengyu/intercom/update/dolphin/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;ZI)V

    :cond_1
    return-void
.end method

.method public a(ILcom/ifengyu/intercom/node/a;)Z
    .locals 1

    .line 39
    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/a;->a()I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/h/a;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/google/protobuf/Message;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 38
    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/h/a;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z

    move-result p1

    return p1
.end method

.method public a([B)Z
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a([B)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/h/a;->a(Lcom/ifengyu/intercom/node/SendDataWrap;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
