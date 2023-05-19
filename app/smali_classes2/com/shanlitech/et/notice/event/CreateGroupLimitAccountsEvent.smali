.class public Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "CreateGroupLimitAccountsEvent.java"


# instance fields
.field private accounts:[Ljava/lang/String;

.field private count:I

.field private gid:J


# direct methods
.method public constructor <init>(JI[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;->gid:J

    .line 3
    iput p3, p0, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;->count:I

    .line 4
    iput-object p4, p0, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;->accounts:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccounts()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;->accounts:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;->count:I

    return v0
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;->gid:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateGroupLimitAccountsEvent{evenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/BaseEvent;->evenTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;->accounts:[Ljava/lang/String;

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
