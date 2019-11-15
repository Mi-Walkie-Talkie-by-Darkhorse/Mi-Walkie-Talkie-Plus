.class public Lcom/ifengyu/im/imservice/event/ChatEvent;
.super Ljava/lang/Object;
.source "ChatEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/event/ChatEvent$Event;
    }
.end annotation


# instance fields
.field private mEvent:Lcom/ifengyu/im/imservice/event/ChatEvent$Event;

.field private mUserEntity:Lcom/ifengyu/im/DB/entity/UserEntity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/event/ChatEvent$Event;Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/ChatEvent;->mEvent:Lcom/ifengyu/im/imservice/event/ChatEvent$Event;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/event/ChatEvent;->mUserEntity:Lcom/ifengyu/im/DB/entity/UserEntity;

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/ifengyu/im/imservice/event/ChatEvent$Event;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/event/ChatEvent;->mEvent:Lcom/ifengyu/im/imservice/event/ChatEvent$Event;

    return-object v0
.end method

.method public getUserEntity()Lcom/ifengyu/im/DB/entity/UserEntity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/event/ChatEvent;->mUserEntity:Lcom/ifengyu/im/DB/entity/UserEntity;

    return-object v0
.end method

.method public setEvent(Lcom/ifengyu/im/imservice/event/ChatEvent$Event;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/ChatEvent;->mEvent:Lcom/ifengyu/im/imservice/event/ChatEvent$Event;

    return-void
.end method

.method public setUserEntity(Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/ChatEvent;->mUserEntity:Lcom/ifengyu/im/DB/entity/UserEntity;

    return-void
.end method
