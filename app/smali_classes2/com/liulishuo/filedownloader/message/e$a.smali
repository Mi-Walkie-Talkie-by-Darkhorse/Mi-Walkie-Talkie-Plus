.class public Lcom/liulishuo/filedownloader/message/e$a;
.super Ljava/lang/Object;
.source "MessageSnapshotThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/message/e;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/message/e;I)V
    .locals 3

    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/e$a;->a:Lcom/liulishuo/filedownloader/message/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/message/e$a;->b:Ljava/util/List;

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flow-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/message/e$a;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/message/e$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/e$a;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/e$a;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/e$a;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/liulishuo/filedownloader/message/e$a$1;

    invoke-direct {v1, p0, p1}, Lcom/liulishuo/filedownloader/message/e$a$1;-><init>(Lcom/liulishuo/filedownloader/message/e$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
