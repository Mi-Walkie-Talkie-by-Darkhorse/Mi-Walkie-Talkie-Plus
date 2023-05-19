.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/j;
.super Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;
.source "SharkMcuDataSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a<",
        "Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;-><init>()V

    return-void
.end method

.method private f(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;II)V
    .locals 4

    .line 1
    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/j;->h(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->a:[B

    aget-byte v3, v2, p2

    xor-int/2addr v1, v3

    .line 3
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/j;->d:[B

    aget-byte v2, v2, p2

    aput-byte v2, v3, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->b:I

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;->setOffset(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;

    .line 5
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;->setXor(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/j;->d:[B

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "assembleData[size="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", xor="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SealSharkUpdateHelper"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/j;->d:[B

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

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/j;->d:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealSharkUpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/j;->d:[B

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic d(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/j;->g(I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a;
    .locals 3

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->c()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/16 p1, 0x80

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->c:I

    .line 4
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->c()I

    move-result p1

    if-le v0, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->c()I

    move-result p1

    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->c:I

    .line 6
    :cond_0
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a$a;

    invoke-direct {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a$a;-><init>()V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack;->newBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;

    move-result-object v0

    .line 8
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->b:I

    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/a;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/j;->f(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;II)V

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHARK_UpGradeFilePack:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SharkMcuDataSplitManager"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v1, 0x4e2d

    .line 11
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a$a;->d(I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a$a;

    .line 12
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a$a;

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a$a;->c()Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/b/a;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
