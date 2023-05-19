.class public Lcom/shanlitech/et/notice/event/OrganizationEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "OrganizationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/notice/event/OrganizationEvent$From;
    }
.end annotation


# instance fields
.field private code:I

.field private moveOutResult:Lcom/shanlitech/et/web/tob/api/model/MoveOutResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private orgNode:Lcom/shanlitech/et/web/tob/api/model/OrgNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private reqAction:I
    .annotation build Lcom/shanlitech/et/notice/event/OrganizationEvent$From;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/model/OrgNode;I)V
    .locals 0
    .param p4    # I
        .annotation build Lcom/shanlitech/et/notice/event/OrganizationEvent$From;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput p1, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->code:I

    .line 3
    iput-object p2, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->msg:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->orgNode:Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    .line 5
    iput p4, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->reqAction:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/model/OrgNode;Lcom/shanlitech/et/web/tob/api/model/MoveOutResult;I)V
    .locals 0
    .param p5    # I
        .annotation build Lcom/shanlitech/et/notice/event/OrganizationEvent$From;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 7
    iput p1, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->code:I

    .line 8
    iput-object p2, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->msg:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->moveOutResult:Lcom/shanlitech/et/web/tob/api/model/MoveOutResult;

    .line 10
    iput p5, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->reqAction:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getMoveOutResult()Lcom/shanlitech/et/web/tob/api/model/MoveOutResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->moveOutResult:Lcom/shanlitech/et/web/tob/api/model/MoveOutResult;

    return-object v0
.end method

.method public getOrgNode()Lcom/shanlitech/et/web/tob/api/model/OrgNode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->orgNode:Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    return-object v0
.end method

.method public getReqAction()I
    .locals 1
    .annotation build Lcom/shanlitech/et/notice/event/OrganizationEvent$From;
    .end annotation

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->reqAction:I

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrganizationEvent{orgNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->orgNode:Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", reqAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/OrganizationEvent;->reqAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/BaseEvent;->evenTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
