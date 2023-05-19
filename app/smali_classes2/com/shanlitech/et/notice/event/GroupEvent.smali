.class public Lcom/shanlitech/et/notice/event/GroupEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "GroupEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/notice/event/GroupEvent$EventType;
    }
.end annotation


# instance fields
.field private group:Lcom/shanlitech/et/model/Group;

.field private reason:I

.field private type:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->group:Lcom/shanlitech/et/model/Group;

    return-void
.end method

.method private constructor <init>(Lcom/shanlitech/et/model/Group;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->group:Lcom/shanlitech/et/model/Group;

    .line 6
    sget-object p1, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->LEAVE:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->type:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    .line 7
    iput p2, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->reason:I

    return-void
.end method

.method private constructor <init>(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/notice/event/GroupEvent$EventType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->group:Lcom/shanlitech/et/model/Group;

    .line 3
    iput-object p2, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->type:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    return-void
.end method

.method public static postAdd(Lcom/shanlitech/et/model/Group;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupEvent;

    sget-object v2, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->ADD:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    invoke-direct {v1, p0, v2}, Lcom/shanlitech/et/notice/event/GroupEvent;-><init>(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/notice/event/GroupEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public static postCurrent(Lcom/shanlitech/et/model/Group;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupEvent;

    sget-object v2, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->CURRENT:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    invoke-direct {v1, p0, v2}, Lcom/shanlitech/et/notice/event/GroupEvent;-><init>(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/notice/event/GroupEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public static postLeave(Lcom/shanlitech/et/model/Group;I)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupEvent;

    invoke-direct {v1, p0, p1}, Lcom/shanlitech/et/notice/event/GroupEvent;-><init>(Lcom/shanlitech/et/model/Group;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCurrentGroup()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getCurrentGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->reason:I

    return v0
.end method

.method public getTargetGroup()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->group:Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public getType()Lcom/shanlitech/et/notice/event/GroupEvent$EventType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->type:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    return-object v0
.end method

.method public inGroup()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/notice/event/GroupEvent;->getCurrentGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentGroup()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->group:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupEvent{group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->type:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/GroupEvent;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
