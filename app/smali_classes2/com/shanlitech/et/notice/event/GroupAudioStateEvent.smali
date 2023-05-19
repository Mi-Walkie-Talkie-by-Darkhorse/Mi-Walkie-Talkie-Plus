.class public Lcom/shanlitech/et/notice/event/GroupAudioStateEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "GroupAudioStateEvent.java"


# instance fields
.field private group:Lcom/shanlitech/et/model/Group;


# direct methods
.method public constructor <init>(Lcom/shanlitech/et/model/Group;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupAudioStateEvent;->group:Lcom/shanlitech/et/model/Group;

    return-void
.end method


# virtual methods
.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupAudioStateEvent;->group:Lcom/shanlitech/et/model/Group;

    return-object v0
.end method
