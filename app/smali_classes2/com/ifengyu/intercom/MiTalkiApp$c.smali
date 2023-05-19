.class Lcom/ifengyu/intercom/MiTalkiApp$c;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener2;
.source "MiTalkiApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/MiTalkiApp;->f(Lcom/ifengyu/intercom/bean/AdModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/bean/AdModel;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/MiTalkiApp;Lcom/ifengyu/intercom/bean/AdModel;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/MiTalkiApp$c;->a:Lcom/ifengyu/intercom/bean/AdModel;

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener2;-><init>()V

    return-void
.end method


# virtual methods
.method public taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/cause/EndCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskEnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiTalkiApp"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :cond_0
    sget-object p3, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/MiTalkiApp$c;->a:Lcom/ifengyu/intercom/bean/AdModel;

    iput-object p1, p2, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    const/4 p3, 0x0

    .line 6
    iput-boolean p3, p2, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    .line 7
    invoke-static {p1}, Lcom/ifengyu/intercom/p/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    .line 8
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/p/k;->b(Ljava/io/File;)Lcom/ifengyu/intercom/p/k;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/ifengyu/intercom/MiTalkiApp$c;->a:Lcom/ifengyu/intercom/bean/AdModel;

    const-string p3, "admodel"

    invoke-virtual {p1, p3, p2}, Lcom/ifengyu/intercom/p/k;->g(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    return-void
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
