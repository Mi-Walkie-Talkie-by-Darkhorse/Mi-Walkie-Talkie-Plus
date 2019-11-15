.class public Lcom/ifengyu/im/imservice/event/UnreadEvent;
.super Ljava/lang/Object;
.source "UnreadEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;
    }
.end annotation


# instance fields
.field public entity:Lcom/ifengyu/im/imservice/entity/UnreadEntity;

.field public event:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/UnreadEvent;->event:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    return-void
.end method
