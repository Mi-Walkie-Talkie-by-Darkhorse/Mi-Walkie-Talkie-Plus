.class public Lcom/ifengyu/im/imservice/event/NearbyEvent;
.super Ljava/lang/Object;
.source "NearbyEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;
    }
.end annotation


# instance fields
.field private mEvent:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

.field private mUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/NearbyEvent;->mEvent:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/event/NearbyEvent;->mUserList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/event/NearbyEvent;->mEvent:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    return-object v0
.end method

.method public getUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/event/NearbyEvent;->mUserList:Ljava/util/List;

    return-object v0
.end method

.method public setEvent(Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/NearbyEvent;->mEvent:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    return-void
.end method

.method public setUserList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/NearbyEvent;->mUserList:Ljava/util/List;

    return-void
.end method
