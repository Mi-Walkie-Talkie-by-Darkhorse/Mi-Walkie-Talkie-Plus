.class public Lcom/liulishuo/okdownload/OkDownload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/OkDownload$Builder;
    }
.end annotation


# static fields
.field static volatile singleton:Lcom/liulishuo/okdownload/OkDownload;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;

.field private final callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

.field private final connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;

.field private final context:Landroid/content/Context;

.field private final downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

.field private final downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

.field monitor:Lcom/liulishuo/okdownload/DownloadMonitor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;

.field private final processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;Lcom/liulishuo/okdownload/core/download/DownloadStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    iput-object p3, p0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iput-object p4, p0, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;

    iput-object p5, p0, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;

    iput-object p6, p0, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;

    iput-object p7, p0, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    iput-object p8, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    invoke-static {p4}, Lcom/liulishuo/okdownload/core/Util;->createRemitDatabase(Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->setDownloadStore(Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)V

    return-void
.end method

.method public static setSingletonInstance(Lcom/liulishuo/okdownload/OkDownload;)V
    .locals 2
    .param p0    # Lcom/liulishuo/okdownload/OkDownload;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    if-nez v0, :cond_1

    const-class v0, Lcom/liulishuo/okdownload/OkDownload;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    if-nez v1, :cond_0

    sput-object p0, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OkDownload must be null."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "OkDownload must be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static with()Lcom/liulishuo/okdownload/OkDownload;
    .locals 3

    sget-object v0, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    if-nez v0, :cond_2

    const-class v0, Lcom/liulishuo/okdownload/OkDownload;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    if-nez v1, :cond_1

    sget-object v1, Lcom/liulishuo/okdownload/OkDownloadProvider;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/liulishuo/okdownload/OkDownload$Builder;

    sget-object v2, Lcom/liulishuo/okdownload/OkDownloadProvider;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/liulishuo/okdownload/OkDownload$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/OkDownload$Builder;->build()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    sput-object v1, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "context == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    sget-object v0, Lcom/liulishuo/okdownload/OkDownload;->singleton:Lcom/liulishuo/okdownload/OkDownload;

    return-object v0
.end method


# virtual methods
.method public breakpointStore()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;

    return-object v0
.end method

.method public callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    return-object v0
.end method

.method public connectionFactory()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;

    return-object v0
.end method

.method public context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    return-object v0
.end method

.method public downloadDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    return-object v0
.end method

.method public downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    return-object v0
.end method

.method public getMonitor()Lcom/liulishuo/okdownload/DownloadMonitor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->monitor:Lcom/liulishuo/okdownload/DownloadMonitor;

    return-object v0
.end method

.method public outputStreamFactory()Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;

    return-object v0
.end method

.method public processFileStrategy()Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    return-object v0
.end method

.method public setMonitor(Lcom/liulishuo/okdownload/DownloadMonitor;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadMonitor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/liulishuo/okdownload/OkDownload;->monitor:Lcom/liulishuo/okdownload/DownloadMonitor;

    return-void
.end method
