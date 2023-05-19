.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;
.super Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;
.source "SealMcuUpdateTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b<",
        "Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/f;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/f;-><init>()V

    const-string v1, "SealMcuUpdateTransport"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    .line 2
    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->c()I

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

.method private q()Z
    .locals 1

    const/16 v0, 0x2710

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->r(I)Z

    move-result v0

    return v0
.end method

.method private r(I)Z
    .locals 2

    const-string v0, "SealMcuUpdateTransport"

    const-string v1, "sendCommand..."

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->m(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->a()Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->c()Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->d(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->p()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->o()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    .line 5
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    .line 6
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    const/16 v2, 0x4e2c

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->d(I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEAL_UpGradeFileRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SealMcuUpdateTransport"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->q()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->o()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    .line 4
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_REBOOT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    .line 5
    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    const/16 v2, 0x4e2c

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->d(I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upGradeFileRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SealMcuUpdateTransport"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->r(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->o()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->c()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/l;->b()Lcom/ifengyu/intercom/p/l;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    invoke-interface {v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->a()[B

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    .line 4
    invoke-interface {v3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->c()I

    move-result v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v2, v4, v3}, Lcom/ifengyu/intercom/p/l;->a([BII)J

    move-result-wide v1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->g()Z

    move-result v3

    const-string v4, "SealMcuUpdateTransport"

    if-eqz v3, :cond_0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send upgrade finish: file length="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", crc32Result="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v3

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    .line 10
    sget-object v5, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_COMPLE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    .line 11
    sget-object v5, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    .line 12
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFSize(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    long-to-int v0, v1

    .line 13
    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCrc32(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upGradeFileRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    const/16 v1, 0x4e2c

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->d(I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    const v0, 0xea60

    .line 17
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->r(I)Z

    move-result v0

    return v0
.end method

.method public h(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->f:Landroid/util/SparseArray;

    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->d:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->g:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->o()V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->d(I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->d(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->g:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->o()V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->d(I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->h:Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->l()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
