.class public Lcom/shanlitech/et/notice/event/LocationEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "LocationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/notice/event/LocationEvent$Type;
    }
.end annotation


# instance fields
.field private code:I

.field private gid:J

.field private location:Lcom/shanlitech/et/model/SLocation;

.field private msg:Ljava/lang/String;

.field private sender:J

.field private type:Lcom/shanlitech/et/notice/event/LocationEvent$Type;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 10
    sget-object v0, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->ERROR:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    iput-object v0, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->type:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    .line 11
    iput p1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->code:I

    .line 12
    iput-object p2, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/notice/event/LocationEvent$Type;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->type:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    .line 3
    iput-wide p2, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->sender:J

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/notice/event/LocationEvent$Type;Lcom/shanlitech/et/model/SLocation;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->type:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    .line 6
    iput-object p2, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->location:Lcom/shanlitech/et/model/SLocation;

    .line 7
    invoke-virtual {p2}, Lcom/shanlitech/et/model/SLocation;->getUid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->sender:J

    .line 8
    invoke-virtual {p2}, Lcom/shanlitech/et/model/SLocation;->getGid()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->gid:J

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->code:I

    return v0
.end method

.method public getLocation()Lcom/shanlitech/et/model/SLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->location:Lcom/shanlitech/et/model/SLocation;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->sender:J

    return-wide v0
.end method

.method public getType()Lcom/shanlitech/et/notice/event/LocationEvent$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->type:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->location:Lcom/shanlitech/et/model/SLocation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentGroupEvent()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->B(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    const-class v1, Lcom/shanlitech/et/notice/event/LocationEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " SLocation:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    iget-object v1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->location:Lcom/shanlitech/et/model/SLocation;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/SLocation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " Type:"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget-object v1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->type:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " sender:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->sender:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, " gid:"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, " code:"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    iget v1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " msg:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    iget-object v1, p0, Lcom/shanlitech/et/notice/event/LocationEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
