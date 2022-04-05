.class Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity$a;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;

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

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->b(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)Ljava/lang/String;

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

    invoke-static {p3, v0}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->c(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V

    sget-object p3, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->a(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110387

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->d(I)V

    :goto_0
    return-void
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->a(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V

    return-void
.end method
