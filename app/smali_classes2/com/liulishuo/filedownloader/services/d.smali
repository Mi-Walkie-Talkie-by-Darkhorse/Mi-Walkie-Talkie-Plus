.class public Lcom/liulishuo/filedownloader/services/d;
.super Lcom/liulishuo/filedownloader/c/b$a;
.source "FDServiceSeparateHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/c$b;
.implements Lcom/liulishuo/filedownloader/services/i;


# instance fields
.field private final a:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/liulishuo/filedownloader/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/liulishuo/filedownloader/services/g;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;",
            "Lcom/liulishuo/filedownloader/services/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c/b$a;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-static {}, Lcom/liulishuo/filedownloader/message/c;->a()Lcom/liulishuo/filedownloader/message/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/message/c;->a(Lcom/liulishuo/filedownloader/message/c$b;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)I
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/c/a;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/c/a;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "callback error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v3}, Lcom/liulishuo/filedownloader/e/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->a()V

    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .locals 0

    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/d;->b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/liulishuo/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->b(I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/liulishuo/filedownloader/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->b()Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->f(I)Z

    move-result v0

    return v0
.end method

.method public c(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->c()V

    return-void
.end method

.method public d(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/liulishuo/filedownloader/message/c;->a()Lcom/liulishuo/filedownloader/message/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/message/c;->a(Lcom/liulishuo/filedownloader/message/c$b;)V

    return-void
.end method

.method public e(I)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->e(I)B

    move-result v0

    return v0
.end method

.method public f(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->g(I)Z

    move-result v0

    return v0
.end method
