.class Lcom/ifengyu/intercom/update/dolphin/i;
.super Lcom/ifengyu/intercom/update/dolphin/b;
.source "McuUpdateTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/update/dolphin/b<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/h;

    invoke-direct {v0}, Lcom/ifengyu/intercom/update/dolphin/h;-><init>()V

    const-string v1, "McuUpdateTransport"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/b;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/ifengyu/intercom/update/dolphin/e;Ljava/lang/String;)V

    return-void
.end method

.method private e(I)Z
    .locals 3

    const-string v0, "McuUpdateTransport"

    const-string v1, "sendCommand..."

    .line 14
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/b;->d(I)V

    .line 16
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/h/a;->a()Lcom/ifengyu/intercom/h/a;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 17
    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/i;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/h/a;->a(Lcom/google/protobuf/Message;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "sendDolphinData error"

    .line 18
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    return-void
.end method

.method private k()V
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

.method private l()Z
    .locals 1

    const/16 v0, 0x2710

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/i;->e(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->k()V

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

    const-string v5, "sendUpdateRequest: chunk count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", file length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", crc32Result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "McuUpdateTransport"

    invoke-static {v5, v4}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->j()V

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v4

    .line 11
    sget v5, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 12
    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;->START:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 13
    iget-object v5, p0, Lcom/ifengyu/intercom/update/dolphin/b;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 14
    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFSize(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    long-to-int v1, v2

    .line 15
    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFCrc32(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 16
    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/b;->j:I

    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 17
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFPackNum(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 19
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->l()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->j()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    .line 3
    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;->RSTDEVICE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->setCtrlCode(Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/i;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setControl(Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/i;->e(I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->j()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    .line 3
    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;->COMPLETE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/i;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    const v0, 0xea60

    .line 6
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/i;->e(I)Z

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
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->j()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->f:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->c()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->f:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->j()V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/b;->h:Ljava/lang/Object;

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/b;->i()V

    .line 13
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/b;->i:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
