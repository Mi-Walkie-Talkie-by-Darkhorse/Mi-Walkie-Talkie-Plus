.class public final Lcom/shanlitech/et/notice/event/ListEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "ListEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/notice/event/ListEvent$ListType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shanlitech/et/notice/event/BaseEvent;"
    }
.end annotation


# instance fields
.field private count:I

.field private id:J

.field private type:Lcom/shanlitech/et/notice/event/ListEvent$ListType;


# direct methods
.method private constructor <init>(Lcom/shanlitech/et/notice/event/ListEvent$ListType;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/ListEvent;->type:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    .line 3
    iput-wide p2, p0, Lcom/shanlitech/et/notice/event/ListEvent;->id:J

    .line 4
    iput p4, p0, Lcom/shanlitech/et/notice/event/ListEvent;->count:I

    return-void
.end method

.method public static postEvent(Lcom/shanlitech/et/notice/event/ListEvent$ListType;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/shanlitech/et/notice/event/ListEvent;->postEvent(Lcom/shanlitech/et/notice/event/ListEvent$ListType;I)V

    return-void
.end method

.method public static postEvent(Lcom/shanlitech/et/notice/event/ListEvent$ListType;I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {p0, v0, v1, p1}, Lcom/shanlitech/et/notice/event/ListEvent;->postEvent(Lcom/shanlitech/et/notice/event/ListEvent$ListType;JI)V

    return-void
.end method

.method public static postEvent(Lcom/shanlitech/et/notice/event/ListEvent$ListType;J)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/shanlitech/et/notice/event/ListEvent;->postEvent(Lcom/shanlitech/et/notice/event/ListEvent$ListType;JI)V

    return-void
.end method

.method public static postEvent(Lcom/shanlitech/et/notice/event/ListEvent$ListType;JI)V
    .locals 2

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/ListEvent;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/shanlitech/et/notice/event/ListEvent;-><init>(Lcom/shanlitech/et/notice/event/ListEvent$ListType;JI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/ListEvent;->count:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/ListEvent;->id:J

    return-wide v0
.end method

.method public getType()Lcom/shanlitech/et/notice/event/ListEvent$ListType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/ListEvent;->type:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    return-object v0
.end method
