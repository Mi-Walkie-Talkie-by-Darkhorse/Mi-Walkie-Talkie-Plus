.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;
.super Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;
.source "McuUpdateTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f<",
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
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/p;-><init>()V

    const-string v1, "McuUpdateTransport"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;Ljava/lang/String;)V

    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;

    .line 2
    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "you should call prepareForUpdate() first."

    .line 3
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/p;->e(ZLjava/lang/Object;)V

    return-void
.end method

.method private t()Z
    .locals 1

    const/16 v0, 0x2710

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->u(I)Z

    move-result v0

    return v0
.end method

.method private u(I)Z
    .locals 2

    const-string v0, "McuUpdateTransport"

    const-string v1, "sendCommand..."

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->p(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->a()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->c(Lcom/google/protobuf/Message;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->s()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;->e()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;

    invoke-interface {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;->c()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/l;->b()Lcom/ifengyu/intercom/p/l;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;

    invoke-interface {v3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;->a()[B

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;

    .line 5
    invoke-interface {v4}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;->c()I

    move-result v4

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v2, v3, v5, v4}, Lcom/ifengyu/intercom/p/l;->a([BII)J

    move-result-wide v2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->g()Z

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

    invoke-static {v5, v4}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->r()V

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v4

    .line 11
    sget v5, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 12
    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;->START:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 13
    iget-object v5, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 14
    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFSize(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    long-to-int v1, v2

    .line 15
    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFCrc32(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 16
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->j:I

    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 17
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFPackNum(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 19
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->t()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->r()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    .line 3
    sget v1, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;->RSTDEVICE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->setCtrlCode(Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setControl(Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->u(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->r()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    .line 3
    sget v1, Lcom/ifengyu/intercom/p/d0;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;->COMPLETE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    const v0, 0xea60

    .line 6
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->u(I)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->g:Landroid/util/SparseArray;

    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->i:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->r()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->h:Ljava/lang/Object;

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->i:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;->d()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->i:I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/m;->f()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->r()V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->k:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->h:Ljava/lang/Object;

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->o()V

    .line 13
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/f;->i:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
