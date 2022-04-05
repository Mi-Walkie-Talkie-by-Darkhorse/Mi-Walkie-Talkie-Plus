.class public Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;
.super Lcom/liulishuo/okdownload/core/IdentifiedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockTaskForCompare"
.end annotation


# instance fields
.field final filename:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final id:I

.field final parentFile:Ljava/io/File;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final providedPathFile:Ljava/io/File;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final url:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;-><init>()V

    iput p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->id:I

    const-string p1, ""

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->url:Ljava/lang/String;

    sget-object p1, Lcom/liulishuo/okdownload/core/IdentifiedTask;->EMPTY_FILE:Ljava/io/File;

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->providedPathFile:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->filename:Ljava/lang/String;

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->parentFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(ILcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p2    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;-><init>()V

    iput p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->id:I

    invoke-static {p2}, Lcom/liulishuo/okdownload/DownloadTask;->access$000(Lcom/liulishuo/okdownload/DownloadTask;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->url:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->parentFile:Ljava/io/File;

    invoke-static {p2}, Lcom/liulishuo/okdownload/DownloadTask;->access$100(Lcom/liulishuo/okdownload/DownloadTask;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->providedPathFile:Ljava/io/File;

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->id:I

    return v0
.end method

.method public getParentFile()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->parentFile:Ljava/io/File;

    return-object v0
.end method

.method protected getProvidedPathFile()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->providedPathFile:Ljava/io/File;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->url:Ljava/lang/String;

    return-object v0
.end method
