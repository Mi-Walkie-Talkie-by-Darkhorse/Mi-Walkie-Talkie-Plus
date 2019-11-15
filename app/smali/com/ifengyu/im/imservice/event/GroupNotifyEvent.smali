.class public Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;
.super Ljava/lang/Object;
.source "GroupNotifyEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;
    }
.end annotation


# instance fields
.field private mApplyNotify:Lcom/ifengyu/im/imservice/entity/ApplyNotify;

.field private mEvent:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

.field private mInvitedNotify:Lcom/ifengyu/im/imservice/entity/InviteNotify;


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->mApplyNotify:Lcom/ifengyu/im/imservice/entity/ApplyNotify;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->mEvent:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/im/imservice/entity/InviteNotify;Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->mInvitedNotify:Lcom/ifengyu/im/imservice/entity/InviteNotify;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->mEvent:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    return-void
.end method


# virtual methods
.method public getApplyNotify()Lcom/ifengyu/im/imservice/entity/ApplyNotify;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->mApplyNotify:Lcom/ifengyu/im/imservice/entity/ApplyNotify;

    return-object v0
.end method

.method public getEvent()Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->mEvent:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    return-object v0
.end method

.method public getInvitedNotify()Lcom/ifengyu/im/imservice/entity/InviteNotify;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->mInvitedNotify:Lcom/ifengyu/im/imservice/entity/InviteNotify;

    return-object v0
.end method

.method public setApplyNotify(Lcom/ifengyu/im/imservice/entity/ApplyNotify;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->mApplyNotify:Lcom/ifengyu/im/imservice/entity/ApplyNotify;

    return-void
.end method

.method public setEvent(Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->mEvent:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    return-void
.end method

.method public setInvitedNotify(Lcom/ifengyu/im/imservice/entity/InviteNotify;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;->mInvitedNotify:Lcom/ifengyu/im/imservice/entity/InviteNotify;

    return-void
.end method
