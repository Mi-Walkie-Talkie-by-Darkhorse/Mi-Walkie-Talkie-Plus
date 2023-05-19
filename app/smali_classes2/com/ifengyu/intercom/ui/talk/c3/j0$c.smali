.class Lcom/ifengyu/intercom/ui/talk/c3/j0$c;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener2;
.source "TalkPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/talk/c3/j0;->M(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

.field final synthetic b:Lcom/ifengyu/intercom/ui/talk/c3/j0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0$c;->b:Lcom/ifengyu/intercom/ui/talk/c3/j0;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0$c;->a:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

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
    invoke-static {}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->v()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskEnd->task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object p3, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0$c;->b:Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->A(Lcom/ifengyu/intercom/ui/talk/c3/j0;)Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->v1()V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0$c;->b:Lcom/ifengyu/intercom/ui/talk/c3/j0;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0$c;->a:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->y0(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0$c;->b:Lcom/ifengyu/intercom/ui/talk/c3/j0;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->B(Lcom/ifengyu/intercom/ui/talk/c3/j0;)Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->b0()V

    :goto_0
    return-void
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 3
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->v()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskStart->task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
