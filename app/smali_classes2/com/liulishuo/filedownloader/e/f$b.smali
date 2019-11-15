.class Lcom/liulishuo/filedownloader/e/f$b;
.super Ljava/lang/Object;
.source "FileDownloadSerialQueue.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/e/f;


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/e/f$b;->a:Lcom/liulishuo/filedownloader/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/e/f;Lcom/liulishuo/filedownloader/e/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/e/f$b;-><init>(Lcom/liulishuo/filedownloader/e/f;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f$b;->a:Lcom/liulishuo/filedownloader/e/f;

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/e/f;->c:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/e/f$b;->a:Lcom/liulishuo/filedownloader/e/f;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f$b;->a:Lcom/liulishuo/filedownloader/e/f;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/f;->a(Lcom/liulishuo/filedownloader/e/f;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/a;

    iput-object v0, v1, Lcom/liulishuo/filedownloader/e/f;->a:Lcom/liulishuo/filedownloader/a;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f$b;->a:Lcom/liulishuo/filedownloader/e/f;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/e/f;->a:Lcom/liulishuo/filedownloader/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/e/f$b;->a:Lcom/liulishuo/filedownloader/e/f;

    iget-object v1, v1, Lcom/liulishuo/filedownloader/e/f;->b:Lcom/liulishuo/filedownloader/e/f$a;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/a;->a(Lcom/liulishuo/filedownloader/a$a;)Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->c()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
