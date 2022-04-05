.class Lcom/liulishuo/okdownload/DownloadContext$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/okdownload/DownloadContext;->callbackQueueEndOnSerialLoop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liulishuo/okdownload/DownloadContext;


# direct methods
.method constructor <init>(Lcom/liulishuo/okdownload/DownloadContext;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext$2;->this$0:Lcom/liulishuo/okdownload/DownloadContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$2;->this$0:Lcom/liulishuo/okdownload/DownloadContext;

    iget-object v1, v0, Lcom/liulishuo/okdownload/DownloadContext;->contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;

    invoke-interface {v1, v0}, Lcom/liulishuo/okdownload/DownloadContextListener;->queueEnd(Lcom/liulishuo/okdownload/DownloadContext;)V

    return-void
.end method
