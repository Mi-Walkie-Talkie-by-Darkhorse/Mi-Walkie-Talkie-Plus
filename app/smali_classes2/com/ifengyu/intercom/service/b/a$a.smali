.class Lcom/ifengyu/intercom/service/b/a$a;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener2;
.source "ApkDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/service/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/ifengyu/intercom/service/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/service/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener2;-><init>()V

    return-void
.end method

.method private a(JJ)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    cmp-long v3, p1, p3

    if-ltz v3, :cond_0

    const/16 p1, 0x64

    return p1

    :cond_0
    if-lez v2, :cond_1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-double p1, p1

    double-to-int p1, p1

    return p1
.end method


# virtual methods
.method public fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-wide p1, p0, Lcom/ifengyu/intercom/service/b/a$a;->b:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/ifengyu/intercom/service/b/a$a;->b:J

    .line 2
    iget-wide p3, p0, Lcom/ifengyu/intercom/service/b/a$a;->a:J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/service/b/a$a;->a(JJ)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/service/b/a$a;->c:Lcom/ifengyu/intercom/service/b/b;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/service/b/b;->e(I)V

    return-void
.end method

.method public fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getInfo()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ifengyu/intercom/service/b/a$a;->a:J

    :cond_0
    return-void
.end method

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
    invoke-static {}, Lcom/ifengyu/intercom/service/b/a;->a()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskEnd->cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/service/b/a;->c()Lcom/ifengyu/intercom/service/b/a;

    move-result-object p3

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/ifengyu/intercom/service/b/a;->a:Z

    .line 3
    sget-object p3, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    const p1, 0x7f110415

    .line 6
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/service/b/a$a;->c:Lcom/ifengyu/intercom/service/b/b;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/service/b/b;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const p1, 0x7f11040e

    .line 8
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 3
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/service/b/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskStart->task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/service/b/a;->c()Lcom/ifengyu/intercom/service/b/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ifengyu/intercom/service/b/a;->a:Z

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/service/b/b;

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/service/b/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/service/b/a$a;->c:Lcom/ifengyu/intercom/service/b/b;

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/service/b/b;->f()V

    const p1, 0x7f110411

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void
.end method
