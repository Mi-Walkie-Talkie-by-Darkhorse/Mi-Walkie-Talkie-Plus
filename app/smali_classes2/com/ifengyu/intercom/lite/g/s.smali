.class public Lcom/ifengyu/intercom/lite/g/s;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "s"

.field private static b:Lcom/ifengyu/intercom/lite/g/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/lite/g/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    invoke-direct {v1, p1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/g/s$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/g/s$a;-><init>(Lcom/ifengyu/intercom/lite/g/s;)V

    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/lite/g/s;->a:Ljava/lang/String;

    const-string v1, "checkLiteVersion"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static b()Lcom/ifengyu/intercom/lite/g/s;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/lite/g/s;->b:Lcom/ifengyu/intercom/lite/g/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/lite/g/s;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/g/s;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/lite/g/s;->b:Lcom/ifengyu/intercom/lite/g/s;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/lite/g/s;->b:Lcom/ifengyu/intercom/lite/g/s;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ifengyu/intercom/lite/d/e;->a()Lcom/ifengyu/intercom/lite/d/g/a;

    move-result-object v2

    sget-object v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->e:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v2 .. v7}, Lcom/ifengyu/intercom/lite/d/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/lite/d/f;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/g/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/g/c;-><init>(Lcom/ifengyu/intercom/lite/g/s;)V

    sget-object v1, Lcom/ifengyu/intercom/lite/g/b;->a:Lcom/ifengyu/intercom/lite/g/b;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/lite/g/s;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLiteVersion->wrapFirmwareInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;->getLite()Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/lite/g/s;->a:Ljava/lang/String;

    const-string v0, "checkLiteVersion->lite is null"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/g/r;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/g/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/g/r;->a(Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/a/l;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;->getMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/ifengyu/intercom/lite/g/s;->a:Ljava/lang/String;

    const-string v0, "checkLiteVersion->lite latest firmware already exists, no need to download repeatedly"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/a/l;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/ifengyu/intercom/lite/g/s;->a:Ljava/lang/String;

    const-string v0, "checkLiteVersion->lite source is null"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/g/s;->a(Ljava/lang/String;)V

    return-void
.end method
