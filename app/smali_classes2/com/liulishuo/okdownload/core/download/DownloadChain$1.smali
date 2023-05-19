.class Lcom/liulishuo/okdownload/core/download/DownloadChain$1;
.super Ljava/lang/Object;
.source "DownloadChain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/download/DownloadChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liulishuo/okdownload/core/download/DownloadChain;


# direct methods
.method constructor <init>(Lcom/liulishuo/okdownload/core/download/DownloadChain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain$1;->this$0:Lcom/liulishuo/okdownload/core/download/DownloadChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain$1;->this$0:Lcom/liulishuo/okdownload/core/download/DownloadChain;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnection()V

    return-void
.end method
