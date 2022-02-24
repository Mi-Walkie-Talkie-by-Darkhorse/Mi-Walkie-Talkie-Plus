.class public Lcom/liulishuo/okdownload/DownloadContext$AlterContext;
.super Ljava/lang/Object;
.source "DownloadContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/DownloadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlterContext"
.end annotation


# instance fields
.field private final context:Lcom/liulishuo/okdownload/DownloadContext;


# direct methods
.method constructor <init>(Lcom/liulishuo/okdownload/DownloadContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext$AlterContext;->context:Lcom/liulishuo/okdownload/DownloadContext;

    return-void
.end method


# virtual methods
.method public replaceTask(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/DownloadTask;)Lcom/liulishuo/okdownload/DownloadContext$AlterContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$AlterContext;->context:Lcom/liulishuo/okdownload/DownloadContext;

    invoke-static {v0}, Lcom/liulishuo/okdownload/DownloadContext;->access$1200(Lcom/liulishuo/okdownload/DownloadContext;)[Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_0

    .line 4
    aput-object p2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
