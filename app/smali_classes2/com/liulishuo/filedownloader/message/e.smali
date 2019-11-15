.class public Lcom/liulishuo/filedownloader/message/e;
.super Ljava/lang/Object;
.source "MessageSnapshotThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liulishuo/filedownloader/message/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/liulishuo/filedownloader/message/c$b;


# direct methods
.method constructor <init>(ILcom/liulishuo/filedownloader/message/c$b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/liulishuo/filedownloader/message/e;->b:Lcom/liulishuo/filedownloader/message/c$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/message/e;->a:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/message/e;->a:Ljava/util/List;

    new-instance v2, Lcom/liulishuo/filedownloader/message/e$a;

    invoke-direct {v2, p0, v0}, Lcom/liulishuo/filedownloader/message/e$a;-><init>(Lcom/liulishuo/filedownloader/message/e;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/message/e;)Lcom/liulishuo/filedownloader/message/c$b;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/e;->b:Lcom/liulishuo/filedownloader/message/c$b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/liulishuo/filedownloader/message/e;->a:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()I

    move-result v4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/e$a;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/message/e$a;->a(Lcom/liulishuo/filedownloader/message/e$a;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v0

    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/e$a;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/message/e$a;->a(Lcom/liulishuo/filedownloader/message/e$a;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_3

    move-object v2, v0

    :cond_2
    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/message/e$a;->a(I)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2, p1}, Lcom/liulishuo/filedownloader/message/e$a;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    :try_start_2
    invoke-static {v0}, Lcom/liulishuo/filedownloader/message/e$a;->a(Lcom/liulishuo/filedownloader/message/e$a;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v1, :cond_5

    :cond_4
    invoke-static {v0}, Lcom/liulishuo/filedownloader/message/e$a;->a(Lcom/liulishuo/filedownloader/message/e$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_1
    move-object v2, v1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v2, p1}, Lcom/liulishuo/filedownloader/message/e$a;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw v0

    :cond_5
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method
