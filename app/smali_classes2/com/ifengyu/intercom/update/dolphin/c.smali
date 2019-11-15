.class public Lcom/ifengyu/intercom/update/dolphin/c;
.super Lcom/ifengyu/intercom/update/dolphin/a;
.source "BleDataSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/update/dolphin/a",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/a;-><init>()V

    return-void
.end method

.method private a(II)[B
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v1, p1, [B

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->TRANSPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->ordinal()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3, v4, v6}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/c;->d:I

    int-to-long v2, v0

    const/4 v0, 0x2

    invoke-static {v1, v2, v3, v6, v0}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    aput-byte v4, v1, v5

    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v2, p2, 0x4

    if-ge v0, v2, :cond_0

    aget-byte v2, v1, v5

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/c;->a:[B

    iget v4, p0, Lcom/ifengyu/intercom/update/dolphin/c;->b:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/c;->a:[B

    iget v3, p0, Lcom/ifengyu/intercom/update/dolphin/c;->b:I

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    iget v2, p0, Lcom/ifengyu/intercom/update/dolphin/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/update/dolphin/c;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChunkHead[seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ifengyu/intercom/update/dolphin/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", xor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method


# virtual methods
.method public e()[B
    .locals 3

    const/16 v0, 0x80

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/c;->c:I

    iget v2, p0, Lcom/ifengyu/intercom/update/dolphin/c;->b:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_0

    if-le v1, v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/update/dolphin/c;->a(II)[B

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/update/dolphin/c;->d:I

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/c;->d:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public synthetic f()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/c;->e()[B

    move-result-object v0

    return-object v0
.end method
