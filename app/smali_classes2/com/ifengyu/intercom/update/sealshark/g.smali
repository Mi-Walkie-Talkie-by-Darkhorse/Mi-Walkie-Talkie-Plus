.class Lcom/ifengyu/intercom/update/sealshark/g;
.super Lcom/ifengyu/intercom/update/sealshark/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/update/sealshark/b<",
        "Lcom/ifengyu/intercom/node/l;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Lcom/ifengyu/intercom/node/l$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/f;

    invoke-direct {v0}, Lcom/ifengyu/intercom/update/sealshark/f;-><init>()V

    const-string v1, "SealMcuUpdateTransport"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/intercom/update/sealshark/b;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/ifengyu/intercom/update/sealshark/c;Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/l$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/l$a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    :cond_0
    return-void
.end method

.method private f(I)Z
    .locals 4

    const-string v0, "SealMcuUpdateTransport"

    const-string v1, "sendCommand..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/b;->e(I)V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/h/a;->a()Lcom/ifengyu/intercom/h/a;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/node/l$a;->a()Lcom/ifengyu/intercom/node/l;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/ifengyu/intercom/h/a;->a(ILcom/ifengyu/intercom/node/a;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "sendData error"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/b;->e:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/c;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/b;->e:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/c;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "you should call prepareForUpdate() first."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/o;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method private h()Z
    .locals 1

    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/g;->f(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->g()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->f()V

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    const/16 v2, 0x4e2c

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/l$a;->a(I)Lcom/ifengyu/intercom/node/l$a;

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

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->h()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 3

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->f()V

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_REBOOT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    const/16 v2, 0x4e2c

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/l$a;->a(I)Lcom/ifengyu/intercom/node/l$a;

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

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/g;->f(I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 6

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->f()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/b;->e:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/c;->b()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/i/h;->a()Lcom/ifengyu/intercom/i/h;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/b;->e:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v2}, Lcom/ifengyu/intercom/update/sealshark/c;->a()[B

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/b;->e:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v3}, Lcom/ifengyu/intercom/update/sealshark/c;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/ifengyu/intercom/i/h;->a([BII)J

    move-result-wide v1

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v3

    const-string v4, "SealMcuUpdateTransport"

    if-eqz v3, :cond_0

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

    invoke-static {v4, v3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v5, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_COMPLE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCmd(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    sget-object v5, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFSize(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    long-to-int v0, v1

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->setFCrc32(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

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

    invoke-static {v4, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    const/16 v1, 0x4e2c

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/l$a;->a(I)Lcom/ifengyu/intercom/node/l$a;

    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/g;->f(I)Z

    move-result v0

    return v0
.end method

.method public d(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/sealshark/b;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/b;->f:Landroid/util/SparseArray;

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/b;->d:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/b;->g:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->f()V

    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/l$a;->a(I)Lcom/ifengyu/intercom/node/l$a;

    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/b;->e:Lcom/ifengyu/intercom/update/sealshark/c;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/update/sealshark/c;->a(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/b;->g:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->f()V

    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/l$a;->a(I)Lcom/ifengyu/intercom/node/l$a;

    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/g;->h:Lcom/ifengyu/intercom/node/l$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/g;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/update/sealshark/b;->e()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
