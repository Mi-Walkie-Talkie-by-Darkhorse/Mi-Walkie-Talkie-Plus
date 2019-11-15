.class Lcom/liulishuo/filedownloader/download/a$a;
.super Ljava/lang/Object;
.source "ConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private e:Lcom/liulishuo/filedownloader/download/b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/liulishuo/filedownloader/download/a$a;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/a$a;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/a$a;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a$a;->e:Lcom/liulishuo/filedownloader/download/b;

    return-object p0
.end method

.method public a(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/a$a;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a$a;->d:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/a$a;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method a()Lcom/liulishuo/filedownloader/download/a;
    .locals 7

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a$a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a$a;->e:Lcom/liulishuo/filedownloader/download/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a$a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lcom/liulishuo/filedownloader/download/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/a$a;->e:Lcom/liulishuo/filedownloader/download/b;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/a$a;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/a$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/a$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/a$a;->d:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/liulishuo/filedownloader/download/a;-><init>(Lcom/liulishuo/filedownloader/download/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/download/a$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/a$a;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a$a;->c:Ljava/lang/String;

    return-object p0
.end method
