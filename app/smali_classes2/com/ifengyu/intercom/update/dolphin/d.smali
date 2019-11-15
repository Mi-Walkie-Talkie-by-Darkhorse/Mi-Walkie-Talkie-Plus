.class Lcom/ifengyu/intercom/update/dolphin/d;
.super Lcom/ifengyu/intercom/update/dolphin/b;
.source "BleUpdateTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/update/dolphin/b",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/c;

    invoke-direct {v0}, Lcom/ifengyu/intercom/update/dolphin/c;-><init>()V

    const-string v1, "BleUpdateTransport"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/b;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/ifengyu/intercom/update/dolphin/e;Ljava/lang/String;)V

    return-void
.end method

.method private a([B)Z
    .locals 1

    const/16 v0, 0x2710

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/update/dolphin/d;->a([BI)Z

    move-result v0

    return v0
.end method

.method private a([BI)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "BleUpdateTransport"

    const-string v2, "sendBinaryData..."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/update/dolphin/d;->d(I)V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/update/a;->a()Lcom/ifengyu/intercom/update/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/update/a;->a([B)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "BleUpdateTransport"

    const-string v2, "sendDolphinData error"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "you should call prepareForUpdate() first."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/k;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public h()Z
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x4

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/d;->l()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->b()I

    move-result v1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->c()I

    move-result v2

    invoke-static {}, Lcom/ifengyu/intercom/b/b;->a()Lcom/ifengyu/intercom/b/b;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/d;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v3}, Lcom/ifengyu/intercom/update/dolphin/e;->a()[B

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/d;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v4}, Lcom/ifengyu/intercom/update/dolphin/e;->c()I

    move-result v4

    invoke-virtual {v0, v3, v10, v4}, Lcom/ifengyu/intercom/b/b;->a([BII)J

    move-result-wide v4

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BleUpdateTransport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendUpdateRequest: chunk count="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", file length="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", crc32Result="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->ordinal()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v0, v6, v7, v10, v9}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/d;->b:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->getNumber()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v0, v6, v7, v9, v9}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    int-to-long v6, v1

    invoke-static {v0, v6, v7, v11, v11}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v8, v8}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    const/16 v1, 0x8

    invoke-static {v0, v4, v5, v1, v8}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/d;->g:I

    int-to-long v2, v1

    const/16 v1, 0xc

    invoke-static {v0, v2, v3, v1, v8}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/d;->a([B)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->d:Landroid/util/SparseArray;

    iget v3, p0, Lcom/ifengyu/intercom/update/dolphin/d;->f:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/d;->a([B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->f:I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->d()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->f:I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->f()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/d;->a([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/d;->g()V

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->f:I

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public j()Z
    .locals 5

    const/4 v4, 0x1

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->ordinal()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    const v1, 0xea60

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/d;->a([BI)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->RESTART:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->ordinal()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/d;->e:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0, v4}, Lcom/ifengyu/intercom/update/dolphin/d;->a([BI)Z

    move-result v0

    return v0
.end method
