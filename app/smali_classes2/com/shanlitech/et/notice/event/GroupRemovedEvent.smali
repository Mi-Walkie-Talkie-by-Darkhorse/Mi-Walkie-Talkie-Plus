.class public Lcom/shanlitech/et/notice/event/GroupRemovedEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "GroupRemovedEvent.java"


# instance fields
.field private group:Lcom/shanlitech/et/model/Group;

.field private type:I


# direct methods
.method private constructor <init>(Lcom/shanlitech/et/model/Group;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->group:Lcom/shanlitech/et/model/Group;

    .line 3
    iput p2, p0, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->type:I

    return-void
.end method

.method public static final post(Lcom/shanlitech/et/model/Group;I)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;

    invoke-direct {v1, p0, p1}, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;-><init>(Lcom/shanlitech/et/model/Group;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->group:Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupRemovedEvent{group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
