.class public Lcom/ifengyu/im/imservice/event/GroupEvent;
.super Ljava/lang/Object;
.source "GroupEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/event/GroupEvent$Event;
    }
.end annotation


# instance fields
.field private changeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private changeType:I

.field private event:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field private groupEntity:Lcom/ifengyu/im/DB/entity/GroupEntity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->event:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;Lcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->groupEntity:Lcom/ifengyu/im/DB/entity/GroupEntity;

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->event:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    return-void
.end method


# virtual methods
.method public getChangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->changeList:Ljava/util/List;

    return-object v0
.end method

.method public getChangeType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->changeType:I

    return v0
.end method

.method public getEvent()Lcom/ifengyu/im/imservice/event/GroupEvent$Event;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->event:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    return-object v0
.end method

.method public getGroupEntity()Lcom/ifengyu/im/DB/entity/GroupEntity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->groupEntity:Lcom/ifengyu/im/DB/entity/GroupEntity;

    return-object v0
.end method

.method public setChangeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->changeList:Ljava/util/List;

    return-void
.end method

.method public setChangeType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->changeType:I

    return-void
.end method

.method public setEvent(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->event:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    return-void
.end method

.method public setGroupEntity(Lcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/GroupEvent;->groupEntity:Lcom/ifengyu/im/DB/entity/GroupEntity;

    return-void
.end method
