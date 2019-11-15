.class public Lcom/ifengyu/im/protobuf/base/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field private commandId:S

.field private flag:S

.field private length:I

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private reserved:S

.field private seqnum:S

.field private serviceId:S

.field private version:S


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/ifengyu/im/protobuf/base/Header;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->logger:Lcom/ifengyu/im/utils/Logger;

    iput v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->length:I

    iput-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->version:S

    iput-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->serviceId:S

    iput-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->commandId:S

    iput-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->reserved:S

    iput-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->flag:S

    iput-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->seqnum:S

    return-void
.end method


# virtual methods
.method public decode(Lcom/ifengyu/im/protobuf/base/DataBuffer;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->length:I

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->version:S

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->flag:S

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->serviceId:S

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->commandId:S

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->seqnum:S

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->reserved:S

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "decode header, length:%d, version:%d, flag:%d serviceId:%d, commandId:%d, reserved:%d,seq:%d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/ifengyu/im/protobuf/base/Header;->length:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-short v4, p0, Lcom/ifengyu/im/protobuf/base/Header;->version:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-short v4, p0, Lcom/ifengyu/im/protobuf/base/Header;->flag:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-short v4, p0, Lcom/ifengyu/im/protobuf/base/Header;->serviceId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-short v4, p0, Lcom/ifengyu/im/protobuf/base/Header;->commandId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-short v4, p0, Lcom/ifengyu/im/protobuf/base/Header;->seqnum:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-short v4, p0, Lcom/ifengyu/im/protobuf/base/Header;->reserved:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->logger:Lcom/ifengyu/im/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public encode()Lcom/ifengyu/im/protobuf/base/DataBuffer;
    .locals 2

    new-instance v0, Lcom/ifengyu/im/protobuf/base/DataBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;-><init>(I)V

    iget v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->length:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeInt(I)V

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->version:S

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeShort(S)V

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->flag:S

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeShort(S)V

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->serviceId:S

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeShort(S)V

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->commandId:S

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeShort(S)V

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->seqnum:S

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeShort(S)V

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->reserved:S

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeShort(S)V

    return-object v0
.end method

.method public getCommandId()S
    .locals 1

    iget-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->commandId:S

    return v0
.end method

.method public getFlag()S
    .locals 1

    iget-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->flag:S

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->length:I

    return v0
.end method

.method public getReserved()I
    .locals 1

    iget-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->reserved:S

    return v0
.end method

.method public getSeqnum()S
    .locals 1

    iget-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->seqnum:S

    return v0
.end method

.method public getServiceId()S
    .locals 1

    iget-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->serviceId:S

    return v0
.end method

.method public getVersion()S
    .locals 1

    iget-short v0, p0, Lcom/ifengyu/im/protobuf/base/Header;->version:S

    return v0
.end method

.method public setCommandId(S)V
    .locals 0

    iput-short p1, p0, Lcom/ifengyu/im/protobuf/base/Header;->commandId:S

    return-void
.end method

.method public setFlag(S)V
    .locals 0

    iput-short p1, p0, Lcom/ifengyu/im/protobuf/base/Header;->flag:S

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/base/Header;->length:I

    return-void
.end method

.method public setReserved(S)V
    .locals 0

    iput-short p1, p0, Lcom/ifengyu/im/protobuf/base/Header;->reserved:S

    return-void
.end method

.method public setSeqnum(S)V
    .locals 0

    iput-short p1, p0, Lcom/ifengyu/im/protobuf/base/Header;->seqnum:S

    return-void
.end method

.method public setServiceId(S)V
    .locals 0

    iput-short p1, p0, Lcom/ifengyu/im/protobuf/base/Header;->serviceId:S

    return-void
.end method

.method public setVersion(S)V
    .locals 0

    iput-short p1, p0, Lcom/ifengyu/im/protobuf/base/Header;->version:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header [length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->version:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->flag:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->serviceId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commandId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->commandId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->seqnum:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/ifengyu/im/protobuf/base/Header;->reserved:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
