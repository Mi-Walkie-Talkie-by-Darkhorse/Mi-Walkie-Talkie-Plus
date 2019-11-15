.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;
.super Lcom/ifengyu/library/widget/recyclerview/adapter/a;
.source "MsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/library/widget/recyclerview/adapter/a",
        "<",
        "Lcom/ifengyu/im/imservice/model/MessageEntity;",
        "Lcom/ifengyu/library/widget/recyclerview/d/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISPLAY_MSG_TIME_WITH_INTERVAL:J = 0x493e0L


# instance fields
.field private eventListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;

.field private holder2ViewType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

.field private mContainer:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

.field private messageId:Ljava/lang/String;

.field private progresses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private timedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/a;-><init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->timedItems:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->progresses:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->holder2ViewType:Ljava/util/Map;

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderFactory;->getAllViewHolders()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    const v3, 0x7f0400a6

    invoke-virtual {p0, v1, v3, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->addItemType(IILjava/lang/Class;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->holder2ViewType:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->mContainer:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    return-void
.end method

.method private hideTimeAlways(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method private relocateShowTimeItemAfterDelete(Lcom/ifengyu/im/imservice/model/MessageEntity;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->needShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getDataSize()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getDataSize()I

    move-result v0

    if-ne p2, v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    :goto_0
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->hideTimeAlways(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->isTheSame(Lcom/ifengyu/im/imservice/model/IMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getDataSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->needShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->isTheSame(Lcom/ifengyu/im/imservice/model/IMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    goto :goto_2

    :cond_5
    iput-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    goto :goto_2
.end method

.method private setShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->timedItems:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->timedItems:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setShowTimeFlag(Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->hideTimeAlways(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v4

    sub-long v6, v4, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    move v0, v1

    goto :goto_0

    :cond_2
    sub-long v2, v4, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public deleteItem(Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->isTheSame(Lcom/ifengyu/im/imservice/model/IMessage;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getDataSize()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->remove(I)V

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->relocateShowTimeItemAfterDelete(Lcom/ifengyu/im/imservice/model/MessageEntity;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public getContainer()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->mContainer:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    return-object v0
.end method

.method public getEventListener()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->eventListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;

    return-object v0
.end method

.method protected getItemKey(Lcom/ifengyu/im/imservice/model/MessageEntity;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getItemKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getItemKey(Lcom/ifengyu/im/imservice/model/MessageEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method protected getViewType(Lcom/ifengyu/im/imservice/model/MessageEntity;)I
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->holder2ViewType:Ljava/util/Map;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderFactory;->getViewHolderByType(Lcom/ifengyu/im/imservice/model/MessageEntity;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getViewType(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getViewType(Lcom/ifengyu/im/imservice/model/MessageEntity;)I

    move-result v0

    return v0
.end method

.method public needShowTime(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->timedItems:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setEventListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->eventListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->messageId:Ljava/lang/String;

    return-void
.end method

.method public updateShowTimeItem(Ljava/util/List;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setShowTimeFlag(Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->lastShowTimeItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
