.class public Lcom/liulishuo/okdownload/DownloadContext$Builder;
.super Ljava/lang/Object;
.source "DownloadContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/DownloadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final boundTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/liulishuo/okdownload/DownloadContextListener;

.field private final set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/DownloadContext$Builder;-><init>(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/liulishuo/okdownload/DownloadContext$Builder;-><init>(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/okdownload/DownloadContext$QueueSet;",
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    .line 5
    iput-object p2, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bind(Lcom/liulishuo/okdownload/DownloadTask$Builder;)Lcom/liulishuo/okdownload/DownloadTask;
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$200(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$200(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setHeaderMapFields(Ljava/util/Map;)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$300(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$300(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setReadBufferSize(I)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$400(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$400(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setFlushBufferSize(I)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$500(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$500(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setSyncBufferSize(I)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$600(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$600(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setWifiRequired(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$700(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$700(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setSyncBufferIntervalMillis(I)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$800(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$800(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$900(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    .line 15
    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$900(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setMinIntervalMillisCallbackProcess(I)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$1000(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 17
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$1000(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setPassIfAlreadyCompleted(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    .line 18
    :cond_8
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$1100(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$1100(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask;->setTag(Ljava/lang/Object;)V

    .line 20
    :cond_9
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public bind(Ljava/lang/String;)Lcom/liulishuo/okdownload/DownloadTask;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$100(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-static {v1}, Lcom/liulishuo/okdownload/DownloadContext$QueueSet;->access$100(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setFilenameFromResponse(Ljava/lang/Boolean;)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/DownloadContext$Builder;->bind(Lcom/liulishuo/okdownload/DownloadTask$Builder;)Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "If you want to bind only with url, you have to provide parentPath on QueueSet!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bindSetTask(Lcom/liulishuo/okdownload/DownloadTask;)Lcom/liulishuo/okdownload/DownloadContext$Builder;
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public build()Lcom/liulishuo/okdownload/DownloadContext;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/liulishuo/okdownload/DownloadTask;

    .line 2
    new-instance v1, Lcom/liulishuo/okdownload/DownloadContext;

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->listener:Lcom/liulishuo/okdownload/DownloadContextListener;

    iget-object v3, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    invoke-direct {v1, v0, v2, v3}, Lcom/liulishuo/okdownload/DownloadContext;-><init>([Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/DownloadContextListener;Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)V

    return-object v1
.end method

.method public setListener(Lcom/liulishuo/okdownload/DownloadContextListener;)Lcom/liulishuo/okdownload/DownloadContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->listener:Lcom/liulishuo/okdownload/DownloadContextListener;

    return-object p0
.end method

.method public unbind(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unbind(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$Builder;->boundTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
