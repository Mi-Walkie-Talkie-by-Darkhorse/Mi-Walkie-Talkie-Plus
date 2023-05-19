.class public Lcom/ifengyu/intercom/device/lite/d/s;
.super Ljava/lang/Object;
.source "LiteUpgradeManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "s"

.field private static b:Lcom/ifengyu/intercom/device/lite/d/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    invoke-direct {v1, p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v1, p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/lite/d/s$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/lite/d/s$a;-><init>(Lcom/ifengyu/intercom/device/lite/d/s;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    return-void
.end method

.method public static d()Lcom/ifengyu/intercom/device/lite/d/s;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/s;->b:Lcom/ifengyu/intercom/device/lite/d/s;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/lite/d/s;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/d/s;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/lite/d/s;->b:Lcom/ifengyu/intercom/device/lite/d/s;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/s;->b:Lcom/ifengyu/intercom/device/lite/d/s;

    return-object v0
.end method

.method private synthetic e(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/s;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check lite Version Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/device/lite/d/r;->d(Landroid/content/Context;)Lcom/ifengyu/intercom/device/lite/d/r;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/lite/d/r;->e(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/d/r;->b()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/ifengyu/intercom/p/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/ifengyu/library/utils/r;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "checkLiteVersion->lite latest firmware already exists, no need to download repeatedly"

    .line 7
    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->HAVE_NEW_UPDATE:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/library/utils/r;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "checkLiteVersion->lite source is null"

    .line 10
    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->isHasNewVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/s;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    const-string v1, "lite"

    const-string v2, "zh_cn"

    .line 2
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/ifengyu/intercom/n/a;->T(Ljava/lang/String;IILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/device/lite/d/a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/device/lite/d/a;-><init>(Lcom/ifengyu/intercom/device/lite/d/s;)V

    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/p;->a:Lcom/ifengyu/intercom/device/lite/d/p;

    .line 4
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic f(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/s;->e(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method
