.class public Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "InviteGroupAckEvent.java"


# instance fields
.field private failUsers:[Lcom/shanlitech/et/model/FailUser;

.field private result:I


# direct methods
.method public constructor <init>(I[Lcom/shanlitech/et/model/FailUser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput p1, p0, Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;->result:I

    .line 3
    iput-object p2, p0, Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;->failUsers:[Lcom/shanlitech/et/model/FailUser;

    return-void
.end method


# virtual methods
.method public getFailUsers()[Lcom/shanlitech/et/model/FailUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;->failUsers:[Lcom/shanlitech/et/model/FailUser;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;->result:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InviteGroupAckEvent{evenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/BaseEvent;->evenTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;->failUsers:[Lcom/shanlitech/et/model/FailUser;

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
