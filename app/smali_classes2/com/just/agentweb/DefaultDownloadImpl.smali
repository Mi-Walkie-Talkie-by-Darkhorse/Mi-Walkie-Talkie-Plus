.class public Lcom/just/agentweb/DefaultDownloadImpl;
.super Ljava/lang/Object;
.source "DefaultDownloadImpl.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private isInstallDownloader:Z

.field protected mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mAgentWebUIController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/AbsAgentWebUIController;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/download/library/ResourceRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected mPermissionListener:Lcom/just/agentweb/PermissionInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/just/agentweb/DefaultDownloadImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/just/agentweb/DefaultDownloadImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/just/agentweb/PermissionInterceptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mPermissionListener:Lcom/just/agentweb/PermissionInterceptor;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p3, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mPermissionListener:Lcom/just/agentweb/PermissionInterceptor;

    .line 8
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lcom/just/agentweb/AgentWebUtils;->getAgentWebUIControllerByWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/AbsAgentWebUIController;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    .line 9
    :try_start_0
    invoke-static {}, Lcom/download/library/DownloadImpl;->getInstance()Lcom/download/library/DownloadImpl;

    move-result-object p1

    iget-object p2, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/download/library/DownloadImpl;->with(Landroid/content/Context;)Lcom/download/library/ResourceRequest;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->isInstallDownloader:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    sget-object p2, Lcom/just/agentweb/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    const-string p3, "implementation \'com.download.library:Downloader:x.x.x\'"

    invoke-static {p2, p3}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->isInstallDownloader:Z

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/just/agentweb/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/just/agentweb/PermissionInterceptor;)Lcom/just/agentweb/DefaultDownloadImpl;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/just/agentweb/PermissionInterceptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/just/agentweb/DefaultDownloadImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/just/agentweb/DefaultDownloadImpl;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/just/agentweb/PermissionInterceptor;)V

    return-object v0
.end method


# virtual methods
.method protected checkNeedPermission()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/just/agentweb/AgentWebPermissions;->STORAGE:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/just/agentweb/AgentWebUtils;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/just/agentweb/AgentWebPermissions;->STORAGE:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method protected createCallback(Ljava/lang/String;)Landroid/os/Handler$Callback;
    .locals 1

    .line 1
    new-instance v0, Lcom/just/agentweb/DefaultDownloadImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl$3;-><init>(Lcom/just/agentweb/DefaultDownloadImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createResourceRequest(Ljava/lang/String;)Lcom/download/library/ResourceRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/download/library/DownloadImpl;->getInstance()Lcom/download/library/DownloadImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/download/library/DownloadImpl;->with(Ljava/lang/String;)Lcom/download/library/ResourceRequest;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/download/library/ResourceRequest;->setEnableIndicator(Z)Lcom/download/library/ResourceRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/download/library/ResourceRequest;->autoOpenIgnoreMD5()Lcom/download/library/ResourceRequest;

    move-result-object p1

    return-object p1
.end method

.method protected forceDownload(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/download/library/ResourceRequest;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/download/library/ResourceRequest;->setForceDownload(Z)Lcom/download/library/ResourceRequest;

    .line 3
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->performDownload(Ljava/lang/String;)V

    return-void
.end method

.method protected getPermissionListener(Ljava/lang/String;)Lcom/just/agentweb/ActionActivity$PermissionListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/just/agentweb/DefaultDownloadImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl$2;-><init>(Lcom/just/agentweb/DefaultDownloadImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method protected isForceRequest(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/download/library/ResourceRequest;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/download/library/ResourceRequest;->getDownloadTask()Lcom/download/library/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/download/library/DownloadTask;->isForceDownload()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11

    move-object v8, p0

    .line 1
    iget-boolean v0, v8, Lcom/just/agentweb/DefaultDownloadImpl;->isInstallDownloader:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/just/agentweb/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable start download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; implementation \'com.download.library:Downloader:x.x.x\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v2, p1

    .line 3
    sget-object v9, Lcom/just/agentweb/DefaultDownloadImpl;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/just/agentweb/DefaultDownloadImpl$1;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/just/agentweb/DefaultDownloadImpl$1;-><init>(Lcom/just/agentweb/DefaultDownloadImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDownloadStartInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mPermissionListener:Lcom/just/agentweb/PermissionInterceptor;

    if-eqz p2, :cond_1

    .line 3
    sget-object p3, Lcom/just/agentweb/AgentWebPermissions;->STORAGE:[Ljava/lang/String;

    const-string p4, "download"

    invoke-interface {p2, p1, p3, p4}, Lcom/just/agentweb/PermissionInterceptor;->intercept(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->createResourceRequest(Ljava/lang/String;)Lcom/download/library/ResourceRequest;

    move-result-object p2

    .line 5
    iget-object p3, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/just/agentweb/DefaultDownloadImpl;->checkNeedPermission()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->preDownload(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    .line 9
    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lcom/just/agentweb/Action;->createPermissionsAction([Ljava/lang/String;)Lcom/just/agentweb/Action;

    move-result-object p2

    .line 10
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->getPermissionListener(Ljava/lang/String;)Lcom/just/agentweb/ActionActivity$PermissionListener;

    move-result-object p1

    invoke-static {p1}, Lcom/just/agentweb/ActionActivity;->setPermissionListener(Lcom/just/agentweb/ActionActivity$PermissionListener;)V

    .line 11
    iget-object p1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/just/agentweb/ActionActivity;->start(Landroid/app/Activity;Lcom/just/agentweb/Action;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->preDownload(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected performDownload(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/just/agentweb/DefaultDownloadImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/download/library/DownloadImpl;->getInstance()Lcom/download/library/DownloadImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/download/library/DownloadImpl;->exist(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/download/library/DownloadImpl;->getInstance()Lcom/download/library/DownloadImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/download/library/DownloadImpl;->exist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/just/agentweb/AbsAgentWebUIController;

    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/just/agentweb/R$string;->agentweb_download_task_has_been_exist:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preDownload"

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/just/agentweb/AbsAgentWebUIController;->onShowMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mDownloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/download/library/ResourceRequest;

    const-string v1, "Cookie"

    .line 9
    invoke-static {p1}, Lcom/just/agentweb/AgentWebConfig;->getCookiesByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/download/library/ResourceRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/download/library/ResourceRequest;

    .line 10
    invoke-virtual {p0, v0}, Lcom/just/agentweb/DefaultDownloadImpl;->taskEnqueue(Lcom/download/library/ResourceRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected preDownload(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->isForceRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/just/agentweb/AgentWebUtils;->checkNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->showDialog(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->performDownload(Ljava/lang/String;)V

    return-void
.end method

.method protected showDialog(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/AbsAgentWebUIController;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/just/agentweb/DefaultDownloadImpl;->createCallback(Ljava/lang/String;)Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/just/agentweb/AbsAgentWebUIController;->onForceDownloadAlert(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected taskEnqueue(Lcom/download/library/ResourceRequest;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/just/agentweb/DefaultDownloadImpl$4;

    invoke-direct {v0, p0}, Lcom/just/agentweb/DefaultDownloadImpl$4;-><init>(Lcom/just/agentweb/DefaultDownloadImpl;)V

    invoke-virtual {p1, v0}, Lcom/download/library/ResourceRequest;->enqueue(Lcom/download/library/DownloadListenerAdapter;)V

    return-void
.end method
