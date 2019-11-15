.class Lcom/liulishuo/filedownloader/q$b;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/q$b;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/q$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/liulishuo/filedownloader/q$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v2, "LauncherTask"

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/e/b;->a(ILjava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/q$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/x$b;)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/q$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/liulishuo/filedownloader/q$c;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/q$c;-><init>(Lcom/liulishuo/filedownloader/x$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
