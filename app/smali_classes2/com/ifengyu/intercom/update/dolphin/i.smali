.class Lcom/ifengyu/intercom/update/dolphin/i;
.super Lcom/ifengyu/intercom/update/dolphin/b;
.source "McuUpdateTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/update/dolphin/b",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/h;

    invoke-direct {v0}, Lcom/ifengyu/intercom/update/dolphin/h;-><init>()V

    const-string v1, "McuUpdateTransport"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/b;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/ifengyu/intercom/update/dolphin/e;Ljava/lang/String;)V

    return-void
.end method

.method private e(I)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "McuUpdateTransport"

    const-string v2, "sendCommand..."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/i;->d(I)V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/update/a;->a()Lcom/ifengyu/intercom/update/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/i;->h:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/update/a;->a(Lcom/google/protobuf/Message;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "McuUpdateTransport"

    const-string v2, "sendDolphinData error"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/i;->e(I)Z

    move-result v0

    return v0
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->h:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->h:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->h:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->c:Lcom/ifengyu/intercom/update/dolphin/e;

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
    .locals 7

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->n()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/i;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v1}, Lcom/ifengyu/intercom/update/dolphin/e;->c()I

    move-result v1

    invoke-static {}, Lcom/ifengyu/intercom/b/b;->a()Lcom/ifengyu/intercom/b/b;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/i;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v3}, Lcom/ifengyu/intercom/update/dolphin/e;->a()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ifengyu/intercom/update/dolphin/i;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v5}, Lcom/ifengyu/intercom/update/dolphin/e;->c()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/ifengyu/intercom/b/b;->a([BII)J

    move-result-wide v2

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "McuUpdateTransport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendUpdateRequest: chunk count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", file length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", crc32Result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->m()V

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v4

    sget v5, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;->START:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    iget-object v5, p0, Lcom/ifengyu/intercom/update/dolphin/i;->b:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFSize(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    long-to-int v1, v2

    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFCrc32(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/i;->g:I

    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFPackNum(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->h:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->l()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->d:Landroid/util/SparseArray;

    iget v3, p0, Lcom/ifengyu/intercom/update/dolphin/i;->f:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->m()V

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/i;->h:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->e:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->f:I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->d()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->f:I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->c:Lcom/ifengyu/intercom/update/dolphin/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/e;->f()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->m()V

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/i;->h:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->e:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->g()V

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/i;->f:I

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->m()V

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;->COMPLETE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/i;->h:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/i;->e(I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/i;->m()V

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;->RSTDEVICE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->setCtrlCode(Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/i;->h:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setControl(Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/i;->e(I)Z

    move-result v0

    return v0
.end method
