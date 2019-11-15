.class public Lcom/ifengyu/intercom/update/dolphin/h;
.super Lcom/ifengyu/intercom/update/dolphin/a;
.source "McuDataSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/update/dolphin/a",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private f:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/a;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/h;->f:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/h;->f:[B

    array-length v0, v0

    if-eq v0, p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/h;->f:[B

    if-eqz v0, :cond_1

    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBufferSize: change size from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/h;->f:[B

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

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/h;->f:[B

    :cond_2
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;I)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/update/dolphin/h;->a(I)V

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/h;->a:[B

    iget v3, p0, Lcom/ifengyu/intercom/update/dolphin/h;->b:I

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/h;->f:[B

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/h;->a:[B

    iget v4, p0, Lcom/ifengyu/intercom/update/dolphin/h;->b:I

    aget-byte v3, v3, v4

    aput-byte v3, v2, v0

    iget v2, p0, Lcom/ifengyu/intercom/update/dolphin/h;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/update/dolphin/h;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/h;->d:I

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->setSeq(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->setXor(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/h;->f:[B

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assembleData[seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ifengyu/intercom/update/dolphin/h;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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


# virtual methods
.method public e()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;
    .locals 3

    const/16 v0, 0x80

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/h;->c:I

    iget v2, p0, Lcom/ifengyu/intercom/update/dolphin/h;->b:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_0

    if-le v1, v0, :cond_1

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/update/dolphin/h;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;I)V

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/h;->d:I

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/h;->d:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public synthetic f()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/h;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    return-object v0
.end method
