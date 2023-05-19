.class public Lcom/shanlitech/et/notice/event/GroupSessionEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "GroupSessionEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;
    }
.end annotation


# instance fields
.field private error:Z

.field private group:Lcom/shanlitech/et/model/Group;

.field private inviter:Lcom/shanlitech/et/model/User;

.field private is_on_created:Z

.field private reason:I


# direct methods
.method public constructor <init>(Lcom/shanlitech/et/model/Group;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->is_on_created:Z

    .line 3
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/GroupSession;->getInviter()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->inviter:Lcom/shanlitech/et/model/User;

    .line 5
    iput-boolean v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->error:Z

    return-void
.end method

.method private constructor <init>(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/User;I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->is_on_created:Z

    .line 14
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    .line 15
    iput-object p2, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->inviter:Lcom/shanlitech/et/model/User;

    .line 16
    iput p3, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->reason:I

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->error:Z

    return-void
.end method

.method private constructor <init>(Lcom/shanlitech/et/model/Group;Z)V
    .locals 4

    .line 6
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->is_on_created:Z

    .line 8
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    .line 9
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/GroupSession;->getInviter()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->inviter:Lcom/shanlitech/et/model/User;

    .line 10
    iput-boolean v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->error:Z

    .line 11
    iput-boolean p2, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->is_on_created:Z

    return-void
.end method

.method public static post(Lcom/shanlitech/et/model/Group;Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-direct {v1, p0, p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;-><init>(Lcom/shanlitech/et/model/Group;Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static postSticky(Lcom/shanlitech/et/model/Group;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-direct {v1, p0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;-><init>(Lcom/shanlitech/et/model/Group;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static postSticky(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/User;I)V
    .locals 2

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;-><init>(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/User;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public static postSticky(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public accept()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/shanlitech/et/core/c/l;->N0(Lcom/shanlitech/et/notice/event/GroupSessionEvent;ZI)Z

    move-result v0

    return v0
.end method

.method public cancel()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->isMySession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->stop()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->reason:I

    invoke-static {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->access$000(I)Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    move-result-object v0

    return-object v0
.end method

.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public getInviter()Lcom/shanlitech/et/model/User;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->inviter:Lcom/shanlitech/et/model/User;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/GroupSession;->getInviter()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->inviter:Lcom/shanlitech/et/model/User;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->inviter:Lcom/shanlitech/et/model/User;

    return-object v0
.end method

.method public getMyResponse()Ljava/lang/Integer;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shanlitech/et/core/c/l;->v(JJ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->reason:I

    return v0
.end method

.method public getRefuseReason(J)Ljava/lang/Integer;
    .locals 3

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/shanlitech/et/core/c/l;->v(JJ)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getRefuseReason(Lcom/shanlitech/et/model/Member;)Ljava/lang/Integer;
    .locals 5

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shanlitech/et/core/c/l;->v(JJ)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getRefuseReason(Lcom/shanlitech/et/model/User;)Ljava/lang/Integer;
    .locals 5

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shanlitech/et/core/c/l;->v(JJ)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/GroupSession;->getStatus()I

    move-result v0

    return v0
.end method

.method public isError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->error:Z

    return v0
.end method

.method public isMySession()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/GroupSession;->isMySession()Z

    move-result v0

    return v0
.end method

.method public isOnCreated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->is_on_created:Z

    return v0
.end method

.method public refuse(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/shanlitech/et/core/c/l;->N0(Lcom/shanlitech/et/notice/event/GroupSessionEvent;ZI)Z

    move-result p1

    return p1
.end method

.method public stop()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->stop(I)Z

    move-result v0

    return v0
.end method

.method public stop(I)Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v1, p1}, Lcom/shanlitech/et/core/c/l;->X0(Lcom/shanlitech/et/model/Group;I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupSessionEvent{group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inviter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->inviter:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->error:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_on_created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->is_on_created:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
