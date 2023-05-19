.class public final Lcom/shanlitech/et/model/GroupSession;
.super Ljava/lang/Object;
.source "GroupSession.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STATUS_CALLING:I = 0x1

.field public static final STATUS_CONNECTED:I = 0x2

.field public static final STATUS_DISCONNECTED:I = 0x3

.field public static final STATUS_IDLE:I


# instance fields
.field private begin_time:I

.field private end_time:I

.field private gid:J

.field private inviter:I

.field private msg:Ljava/lang/String;

.field private status:I

.field private temp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build(Lcom/shanlitech/et/model/Group;)Lcom/shanlitech/et/model/GroupSession;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/GroupSession;->gid:J

    return-object p0
.end method

.method public getBegin_time()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/GroupSession;->begin_time:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getEnd_time()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/GroupSession;->end_time:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getInviter()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/GroupSession;->inviter:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupSession;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getMyResponse()Ljava/lang/Integer;
    .locals 5

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/GroupSession;->gid:J

    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shanlitech/et/core/c/l;->v(JJ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/GroupSession;->status:I

    return v0
.end method

.method public varargs invite([Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/GroupSession;->gid:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/shanlitech/et/core/c/l;->f(J[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isActive()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/GroupSession;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isMySession()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    iget v1, p0, Lcom/shanlitech/et/model/GroupSession;->inviter:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->m(J)Z

    move-result v0

    return v0
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/GroupSession;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupSession{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/GroupSession;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", begin_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/GroupSession;->begin_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/GroupSession;->end_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/GroupSession;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", inviter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/GroupSession;->inviter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
