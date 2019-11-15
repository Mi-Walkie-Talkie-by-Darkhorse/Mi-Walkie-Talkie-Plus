.class public Lcom/liulishuo/filedownloader/services/c$a;
.super Ljava/lang/Object;
.source "DownloadMgrInitialParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/services/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/liulishuo/filedownloader/e/c$c;

.field b:Ljava/lang/Integer;

.field c:Lcom/liulishuo/filedownloader/e/c$e;

.field d:Lcom/liulishuo/filedownloader/e/c$b;

.field e:Lcom/liulishuo/filedownloader/e/c$a;

.field f:Lcom/liulishuo/filedownloader/e/c$d;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "component: database[%s], maxNetworkCount[%s], outputStream[%s], connection[%s], connectionCountAdapter[%s]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/c$a;->a:Lcom/liulishuo/filedownloader/e/c$c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/c$a;->b:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/c$a;->c:Lcom/liulishuo/filedownloader/e/c$e;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/c$a;->d:Lcom/liulishuo/filedownloader/e/c$b;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/c$a;->e:Lcom/liulishuo/filedownloader/e/c$a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
