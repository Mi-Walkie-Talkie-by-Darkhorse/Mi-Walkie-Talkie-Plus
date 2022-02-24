.class Lcom/ifengyu/intercom/update/dolphin/d;
.super Lcom/ifengyu/intercom/update/dolphin/b;
.source "BleUpdateTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/update/dolphin/b<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/c;

    invoke-direct {v0}, Lcom/ifengyu/intercom/update/dolphin/c;-><init>()V

    const-string v1, "BleUpdateTransport"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/b;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/ifengyu/intercom/update/dolphin/e;Ljava/lang/String;)V

    return-void
.end method

.method private a([B)Z
    .locals 1

    const/16 v0, 0x2710

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/update/dolphin/d;->a([BI)Z

    move-result p1

    return p1
.end method

.method private a([BI)Z
    .locals 2

    const-string v0, "BleUpdateTransport"

    const-string v1, "sendBinaryData..."

    .line 18
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/update/dolphin/b;->d(I)V

    .line 20
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/h/a;->a()Lcom/ifengyu/intercom/h/a;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 21
    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/h/a;->a([B)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "sendDolphinData error"

    .line 22
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->f:Lcom/ifengyu/intercom/update/dolphin/e;

    .line 2
    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->f:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "you should call prepareForUpdate() first."

    .line 3
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/o;->a(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/d;->j()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->f:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->d()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/b;->f:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v1}, Lcom/ifengyu/intercom/update/dolphin/e;->b()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/h;->a()Lcom/ifengyu/intercom/i/h;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/b;->f:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v3}, Lcom/ifengyu/intercom/update/dolphin/e;->a()[B

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/b;->f:Lcom/ifengyu/intercom/update/dolphin/e;

    .line 5
    invoke-interface {v4}, Lcom/ifengyu/intercom/update/dolphin/e;->b()I

    move-result v4

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v2, v3, v5, v4}, Lcom/ifengyu/intercom/i/h;->a([BII)J

    move-result-wide v2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendUpdateRequest: chunk count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", file length="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", crc32Result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BleUpdateTransport"

    invoke-static {v6, v4}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 9
    iput-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    .line 10
    check-cast v4, [B

    sget-object v6, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v5, v8}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    .line 11
    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    check-cast v4, [B

    iget-object v5, p0, Lcom/ifengyu/intercom/update/dolphin/b;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->getNumber()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6, v8, v8}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    .line 12
    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    check-cast v4, [B

    int-to-long v5, v0

    const/4 v0, 0x2

    invoke-static {v4, v5, v6, v0, v0}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    check-cast v0, [B

    int-to-long v4, v1

    const/4 v1, 0x4

    invoke-static {v0, v4, v5, v1, v1}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    check-cast v0, [B

    const/16 v4, 0x8

    invoke-static {v0, v2, v3, v4, v1}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    check-cast v0, [B

    iget v2, p0, Lcom/ifengyu/intercom/update/dolphin/b;->j:I

    int-to-long v2, v2

    const/16 v4, 0xc

    invoke-static {v0, v2, v3, v4, v1}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/d;->a([B)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 1
    iput-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    .line 2
    check-cast v1, [B

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->RESTART:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0, v4}, Lcom/ifengyu/intercom/update/dolphin/d;->a([BI)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 1
    iput-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    .line 2
    check-cast v1, [B

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    check-cast v0, [B

    const v1, 0xea60

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/d;->a([BI)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/b;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->g:Landroid/util/SparseArray;

    iget v2, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 3
    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/d;->a([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->f:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->c()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->f:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 7
    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/d;->a([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/b;->i()V

    .line 9
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
