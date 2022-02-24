.class public Lcom/ifengyu/intercom/update/dolphin/c;
.super Lcom/ifengyu/intercom/update/dolphin/a;
.source "BleDataSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/update/dolphin/a<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/a;-><init>()V

    return-void
.end method

.method private a(II)[B
    .locals 8

    .line 1
    new-array p1, p1, [B

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->TRANSPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    .line 3
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->d:I

    int-to-long v0, v0

    const/4 v4, 0x2

    invoke-static {p1, v0, v1, v3, v4}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    const/4 v0, 0x3

    .line 4
    aput-byte v2, p1, v0

    const/4 v1, 0x4

    const/4 v2, 0x4

    :goto_0
    add-int/lit8 v4, p2, 0x4

    if-ge v2, v4, :cond_0

    .line 5
    aget-byte v4, p1, v0

    iget-object v5, p0, Lcom/ifengyu/intercom/update/dolphin/a;->a:[B

    iget v6, p0, Lcom/ifengyu/intercom/update/dolphin/a;->b:I

    aget-byte v7, v5, v6

    xor-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 6
    aget-byte v4, v5, v6

    aput-byte v4, p1, v2

    add-int/2addr v6, v3

    .line 7
    iput v6, p0, Lcom/ifengyu/intercom/update/dolphin/a;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChunkHead[seq="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/a;->d:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", xor="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UpdateHelper"

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method


# virtual methods
.method public bridge synthetic e()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/c;->e()[B

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 2

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/a;->b:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    const/16 v0, 0x80

    :cond_0
    add-int/lit8 v1, v0, 0x4

    .line 3
    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/update/dolphin/c;->a(II)[B

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/update/dolphin/a;->d:I

    return-object v0

    .line 5
    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/a;->d:I

    const/4 v0, 0x0

    return-object v0
.end method
