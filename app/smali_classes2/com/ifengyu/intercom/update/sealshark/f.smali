.class public Lcom/ifengyu/intercom/update/sealshark/f;
.super Lcom/ifengyu/intercom/update/sealshark/a;
.source "SealMcuDataSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/update/sealshark/a",
        "<",
        "Lcom/ifengyu/intercom/node/m;",
        ">;"
    }
.end annotation


# instance fields
.field private e:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/a;-><init>()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;II)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/update/sealshark/f;->c(I)V

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/f;->a:[B

    aget-byte v2, v2, p2

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/f;->e:[B

    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/f;->a:[B

    aget-byte v3, v3, p2

    aput-byte v3, v2, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/f;->c:I

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->setOffset(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->setXor(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/f;->e:[B

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assembleData[size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", xor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private c(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/f;->e:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/f;->e:[B

    array-length v0, v0

    if-eq v0, p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/f;->e:[B

    if-eqz v0, :cond_1

    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBufferSize: change size from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/f;->e:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/f;->e:[B

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/f;->b(I)Lcom/ifengyu/intercom/node/m;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/ifengyu/intercom/node/m;
    .locals 5

    iput p1, p0, Lcom/ifengyu/intercom/update/sealshark/f;->c:I

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/f;->c:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/sealshark/f;->b()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/16 v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/f;->d:I

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/f;->c:I

    add-int/lit16 v0, v0, 0x80

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/sealshark/f;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/sealshark/f;->b()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/f;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/f;->d:I

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/node/m$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/m$a;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/update/sealshark/f;->c:I

    iget v3, p0, Lcom/ifengyu/intercom/update/sealshark/f;->d:I

    invoke-direct {p0, v1, v2, v3}, Lcom/ifengyu/intercom/update/sealshark/f;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;II)V

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SealMcuDataSplitManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEAL_UpGradeFilePack:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v2, 0x4e2d

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/node/m$a;->a(I)Lcom/ifengyu/intercom/node/m$a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/m$a;->a()Lcom/ifengyu/intercom/node/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
