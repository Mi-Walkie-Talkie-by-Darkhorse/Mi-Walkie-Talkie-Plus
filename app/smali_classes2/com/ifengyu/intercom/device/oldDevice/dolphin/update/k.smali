.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;
.super Ljava/lang/Object;
.source "DolphinUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k$a;
    }
.end annotation


# static fields
.field private static volatile g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/intercom/httpold/download/OnDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

.field private f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->c:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->e:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->a:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method public static f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    invoke-direct {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;-><init>()V

    sput-object v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    invoke-virtual {v1, v2}, Lcom/squareup/otto/b;->j(Ljava/lang/Object;)V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    return-object v0
.end method

.method private h()V
    .locals 2

    const-string v0, "UpdateManager"

    const-string v1, "onFailure"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;->i(Z)V

    :cond_0
    return-void
.end method

.method private i(Z)V
    .locals 3

    const-string v0, "UpdateManager"

    const-string v1, "onSuccess"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string p1, "paramUpdateEvent == null"

    .line 3
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    const-string v1, "hasNewVersion"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->e:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    if-eqz p1, :cond_4

    .line 6
    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;->i(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;->i(Z)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->e:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;->i(Z)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;->i(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic j(Lcom/ifengyu/intercom/http/entity/VersionInfo;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->isHasNewVersion()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hasNewVersion"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "md5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getLang()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    return-object p1
.end method

.method private synthetic l(ZLjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "UpdateManager"

    const-string v0, "check Dolphin Version success"

    .line 1
    invoke-static {p2, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->i(Z)V

    return-void
.end method

.method private synthetic n(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->h()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Lcom/ifengyu/intercom/httpold/download/OnDownloadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d(ZI)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->c:I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->i()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "versionHW"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "en_us"

    goto :goto_0

    :cond_0
    const-string v2, "zh_cn"

    :goto_0
    const-string v3, "mcu"

    invoke-interface {v1, v3, p2, v0, v2}, Lcom/ifengyu/intercom/n/a;->T(Ljava/lang/String;IILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)V

    .line 7
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;Z)V

    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)V

    .line 8
    invoke-virtual {p2, v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public e(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->d:Ljava/lang/String;

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    new-instance p1, Lcom/ifengyu/intercom/httpold/download/a;

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    const-string p3, "source"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/httpold/download/a;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->d:Ljava/lang/String;

    new-instance p3, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)V

    const-string v0, "mcu_bin.bin"

    invoke-virtual {p1, p2, v0, p3}, Lcom/ifengyu/intercom/httpold/download/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public g()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public synthetic k(Lcom/ifengyu/intercom/http/entity/VersionInfo;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->j(Lcom/ifengyu/intercom/http/entity/VersionInfo;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(ZLjava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->l(ZLjava/util/HashMap;)V

    return-void
.end method

.method public synthetic o(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->n(Ljava/lang/Throwable;)V

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->e:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    return-void
.end method

.method public r(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->e:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    return-void
.end method

.method public removeDownloadListener(Lcom/ifengyu/intercom/httpold/download/OnDownloadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public s(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;

    return-void
.end method
