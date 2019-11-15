.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;
.super Ljava/lang/Object;
.source "MessageListPanelEx.java"

# interfaces
.implements Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;
.implements Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageLoader"
.end annotation


# instance fields
.field private anchor:Lcom/ifengyu/im/imservice/model/MessageEntity;

.field private firstLoad:Z

.field private loadMsgCount:I

.field private remote:Z

.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->loadMsgCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->firstLoad:Z

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->anchor:Lcom/ifengyu/im/imservice/model/MessageEntity;

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->remote:Z

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->loadFromRemote()V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->loadFromLocal()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->loadAnchorContext()V

    goto :goto_0
.end method

.method static final synthetic lambda$loadFromLocal$0$MessageListPanelEx$MessageLoader(Lcom/ifengyu/im/imservice/model/MessageEntity;)Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ifengyu/im/protobuf/helper/MessageParseEngine;->parseGroupNotifyMsg(Lcom/ifengyu/im/imservice/model/MessageEntity;)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static final synthetic lambda$loadFromLocal$2$MessageListPanelEx$MessageLoader(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object p0
.end method

.method private loadAnchorContext()V
    .locals 0

    return-void
.end method

.method private loadFromLocal()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getDataSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v0

    :goto_0
    sget-object v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader$$Lambda$0;->$instance:Lio/reactivex/b/g;

    new-instance v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader$$Lambda$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader$$Lambda$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;J)V

    invoke-static {v3}, Lio/reactivex/k;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/reactivex/k;->map(Lio/reactivex/b/g;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/k;->toList()Lio/reactivex/s;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader$$Lambda$2;->$instance:Lio/reactivex/b/g;

    invoke-virtual {v0, v1}, Lio/reactivex/s;->a(Lio/reactivex/b/g;)Lio/reactivex/s;

    move-result-object v0

    invoke-static {}, Lio/reactivex/e/a;->b()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/s;->b(Lio/reactivex/r;)Lio/reactivex/s;

    move-result-object v0

    invoke-static {}, Lio/reactivex/a/b/a;->a()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/s;->a(Lio/reactivex/r;)Lio/reactivex/s;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader$$Lambda$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader$$Lambda$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;)V

    invoke-virtual {v0, v1}, Lio/reactivex/s;->a(Lio/reactivex/b/f;)Lio/reactivex/disposables/b;

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private loadFromRemote()V
    .locals 0

    return-void
.end method


# virtual methods
.method final synthetic lambda$loadFromLocal$1$MessageListPanelEx$MessageLoader(J)Lio/reactivex/o;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->instance()Lcom/ifengyu/im/imservice/services/MessageService;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    move-result-object v0

    iget v2, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->sessionType:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    move-result-object v0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->sessionId:Ljava/lang/String;

    iget v6, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->loadMsgCount:I

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ifengyu/im/imservice/services/MessageService;->loadHistoryMsg(ILjava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public onFetchMoreRequested()V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->remote:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->loadFromRemote()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->loadFromLocal()V

    goto :goto_0
.end method

.method public onLoadMoreRequested()V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->remote:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->loadFromLocal()V

    :cond_0
    return-void
.end method

.method public onMessageLoaded(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->loadMsgCount:I

    if-ge v0, v1, :cond_3

    move v2, v3

    :goto_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->remote:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->firstLoad:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v4

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->isTheSame(Lcom/ifengyu/im/imservice/model/IMessage;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->remove(I)V

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->firstLoad:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->anchor:Lcom/ifengyu/im/imservice/model/MessageEntity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->anchor:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v4, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v1

    iget-boolean v5, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->firstLoad:Z

    invoke-virtual {v1, v0, v3, v5}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->updateShowTimeItem(Ljava/util/List;ZZ)V

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->fetchMoreEnd(Ljava/util/List;Z)V

    :goto_4
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->firstLoad:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)V

    :cond_7
    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->firstLoad:Z

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->fetchMoreComplete(Ljava/util/List;)V

    goto :goto_4
.end method
