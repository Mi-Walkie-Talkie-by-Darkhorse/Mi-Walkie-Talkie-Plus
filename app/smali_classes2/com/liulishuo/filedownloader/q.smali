.class Lcom/liulishuo/filedownloader/q;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/q$c;,
        Lcom/liulishuo/filedownloader/q$b;,
        Lcom/liulishuo/filedownloader/q$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/q$b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/liulishuo/filedownloader/q$b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/q$b;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/q;->a:Lcom/liulishuo/filedownloader/q$b;

    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/q;
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/q$a;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Lcom/liulishuo/filedownloader/x$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->a:Lcom/liulishuo/filedownloader/q$b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/q$b;->a(Lcom/liulishuo/filedownloader/x$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
