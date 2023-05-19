.class public Lcom/shanlitech/et/model/MemberSession;
.super Ljava/lang/Object;
.source "MemberSession.java"


# static fields
.field public static final STATUS_RESPONSE_ACCEPT:I = 0x1

.field public static final STATUS_RESPONSE_DISCONNECTED:I = 0x3

.field public static final STATUS_RESPONSE_NONE:I = 0x0

.field public static final STATUS_RESPONSE_REFUSE:I = 0x2


# instance fields
.field private confirmed:I

.field private deleted:I

.field private gid:J

.field private response:I

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build(Lcom/shanlitech/et/model/Member;)Lcom/shanlitech/et/model/MemberSession;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/MemberSession;->uid:J

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getGid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/MemberSession;->gid:J

    return-object p0
.end method

.method public getConfirmed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/MemberSession;->confirmed:I

    return v0
.end method

.method public getDeleted()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/MemberSession;->deleted:I

    return v0
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/MemberSession;->gid:J

    return-wide v0
.end method

.method public getResponse()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/MemberSession;->response:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/MemberSession;->uid:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemberSession{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/MemberSession;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/MemberSession;->response:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", confirmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/MemberSession;->confirmed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/MemberSession;->deleted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/MemberSession;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
