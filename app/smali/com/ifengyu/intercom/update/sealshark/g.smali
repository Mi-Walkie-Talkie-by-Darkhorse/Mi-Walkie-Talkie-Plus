.class Lcom/ifengyu/intercom/update/sealshark/g;
.super Lcom/ifengyu/intercom/update/sealshark/b;
.source "SealMcuUpdateTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/update/sealshark/b",
        "<",
        "Lcom/ifengyu/intercom/node/m;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Lcom/ifengyu/intercom/node/m$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/f;

    invoke-direct {v0}, Lcom/ifengyu/intercom/update/sealshark/f;-><init>()V

    const-string v1, "SealMcuUpdateTransport"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/intercom/update/sealshark/b;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/ifengyu/intercom/update/sealshark/c;Ljava/lang/String;)V

    return-void
.end method

.method private f(I)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SealMcuUpdateTransport"

    const-string v2, "sendCommand..."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/g;->d(I)V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/update/a;->a()Lcom/ifengyu/intercom/update/a;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/node/m$a;->a()Lcom/ifengyu/intercom/node/m;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/update/a;->a(ILcom/ifengyu/intercom/node/a;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SealMcuUpdateTransport"

    const-string v2, "sendData error"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/g;->f(I)Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/m$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/m$a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->c:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/c;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->c:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/c;->b()I

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
.method public d()Z
    .locals 4

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->i()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->h()V

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    const/16 v2, 0x4e2c

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/m$a;->a(I)Lcom/ifengyu/intercom/node/m$a;

    const-string v1, "SealMcuUpdateTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEAL_UpGradeFileRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->g()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 6

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->h()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->c:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/c;->b()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/b/b;->a()Lcom/ifengyu/intercom/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/g;->c:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v2}, Lcom/ifengyu/intercom/update/sealshark/c;->a()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ifengyu/intercom/update/sealshark/g;->c:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v4}, Lcom/ifengyu/intercom/update/sealshark/c;->b()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ifengyu/intercom/b/b;->a([BII)J

    move-result-wide v2

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SealMcuUpdateTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send upgrade finish: file length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", crc32Result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v4, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_COMPLE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v4, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFSize(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCrc32(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    const-string v0, "SealMcuUpdateTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upGradeFileRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    const/16 v1, 0x4e2c

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/m$a;->a(I)Lcom/ifengyu/intercom/node/m$a;

    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/g;->f(I)Z

    move-result v0

    return v0
.end method

.method public e(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->d:Landroid/util/SparseArray;

    iget v3, p0, Lcom/ifengyu/intercom/update/sealshark/g;->b:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->h()V

    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->e:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/m;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/m;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/node/m$a;->a(I)Lcom/ifengyu/intercom/node/m$a;

    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->e:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/m;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/m;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->c:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/update/sealshark/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->h()V

    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->e:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/m;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/m;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/node/m$a;->a(I)Lcom/ifengyu/intercom/node/m$a;

    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->e:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/m;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/m;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->c()V

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public f()Z
    .locals 4

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->h()V

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_REBOOT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    const/16 v2, 0x4e2c

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/m$a;->a(I)Lcom/ifengyu/intercom/node/m$a;

    const-string v1, "SealMcuUpdateTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upGradeFileRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->g:Lcom/ifengyu/intercom/node/m$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/m$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/g;->f(I)Z

    move-result v0

    return v0
.end method
