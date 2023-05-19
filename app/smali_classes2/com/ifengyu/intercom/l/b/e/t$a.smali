.class Lcom/ifengyu/intercom/l/b/e/t$a;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener2;
.source "Mi3UpgradeViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/t;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/l/b/e/t;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/l/b/e/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$a;->a:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener2;-><init>()V

    return-void
.end method


# virtual methods
.method public taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 3
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
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/t;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskEnd->task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    const/4 v1, 0x4

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne p2, v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/ifengyu/intercom/p/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/ifengyu/library/utils/r;->b(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/ifengyu/intercom/l/b/e/t$a;->a:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-static {p3}, Lcom/ifengyu/intercom/l/b/e/t;->d(Lcom/ifengyu/intercom/l/b/e/t;)Landroidx/lifecycle/o;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/ifengyu/intercom/l/b/e/t$a;->a:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-static {p3}, Lcom/ifengyu/intercom/l/b/e/t;->d(Lcom/ifengyu/intercom/l/b/e/t;)Landroidx/lifecycle/o;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMd5()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/e/t$a;->a:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-static {p2}, Lcom/ifengyu/intercom/l/b/e/t;->d(Lcom/ifengyu/intercom/l/b/e/t;)Landroidx/lifecycle/o;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->setLocalPath(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$a;->a:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$a;->a:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/t;->e(Lcom/ifengyu/intercom/l/b/e/t;)V

    goto :goto_2

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$a;->a:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/t;->c()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "taskEnd->realCause: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_3
    const-string p3, ""

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$a;->a:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 3
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/t;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskStart->task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
