.class public Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;
.super Ljava/io/IOException;
.source "FileDownloadOutOfSpaceException.java"


# instance fields
.field private a:J

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 5

    const-string v0, "The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p6}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;->a(JJJ)V

    return-void
.end method

.method public constructor <init>(JJJLjava/lang/Throwable;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const-string v0, "The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p6}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;->a(JJJ)V

    return-void
.end method

.method private a(JJJ)V
    .locals 1

    iput-wide p1, p0, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;->a:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;->b:J

    iput-wide p5, p0, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;->c:J

    return-void
.end method
