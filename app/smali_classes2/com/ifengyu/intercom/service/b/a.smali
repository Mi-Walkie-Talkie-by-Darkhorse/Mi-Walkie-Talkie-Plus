.class public Lcom/ifengyu/intercom/service/b/a;
.super Ljava/lang/Object;
.source "ApkDownloadManager.java"


# static fields
.field private static final b:Ljava/lang/String; = "a"

.field public static volatile c:Lcom/ifengyu/intercom/service/b/a;


# instance fields
.field public a:Z


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
    sget-object v0, Lcom/ifengyu/intercom/service/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Lcom/ifengyu/intercom/service/b/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/service/b/a;->c:Lcom/ifengyu/intercom/service/b/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ifengyu/intercom/service/b/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/service/b/a;->c:Lcom/ifengyu/intercom/service/b/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/service/b/a;

    invoke-direct {v1}, Lcom/ifengyu/intercom/service/b/a;-><init>()V

    sput-object v1, Lcom/ifengyu/intercom/service/b/a;->c:Lcom/ifengyu/intercom/service/b/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/service/b/a;->c:Lcom/ifengyu/intercom/service/b/a;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object p2

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    invoke-direct {v0, p1, p2}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object p1

    const-string p2, "intercom.apk"

    .line 4
    invoke-virtual {p1, p2}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setFilename(Ljava/lang/String;)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object p1

    const/16 p2, 0x3e8

    .line 5
    invoke-virtual {p1, p2}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setMinIntervalMillisCallbackProcess(I)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/service/b/a$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/service/b/a$a;-><init>(Lcom/ifengyu/intercom/service/b/a;)V

    .line 7
    invoke-virtual {p1, p2}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    return-void
.end method
