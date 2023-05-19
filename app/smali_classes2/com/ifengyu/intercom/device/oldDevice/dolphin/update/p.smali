.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;
.super Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;
.source "McuDataSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private f:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;-><init>()V

    return-void
.end method

.method private h(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;->j(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->a:[B

    iget v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->b:I

    aget-byte v4, v2, v3

    xor-int/2addr v1, v4

    .line 3
    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;->f:[B

    aget-byte v2, v2, v3

    aput-byte v2, v4, v0

    add-int/lit8 v3, v3, 0x1

    .line 4
    iput v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->d:I

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->setSeq(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    .line 6
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->setXor(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;->f:[B

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "assembleData[seq="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", xor="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UpdateHelper"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;->f:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eq v1, p1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBufferSize: change size from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;->f:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;->f:[B

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic f()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;->i()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->b:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    const/16 v0, 0x80

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;->h(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;I)V

    .line 4
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->d:I

    return-object v1

    .line 5
    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/e;->d:I

    const/4 v0, 0x0

    return-object v0
.end method
