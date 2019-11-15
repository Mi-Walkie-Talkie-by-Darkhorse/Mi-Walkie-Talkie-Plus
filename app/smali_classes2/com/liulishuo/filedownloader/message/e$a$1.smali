.class Lcom/liulishuo/filedownloader/message/e$a$1;
.super Ljava/lang/Object;
.source "MessageSnapshotThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/filedownloader/message/e$a;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

.field final synthetic b:Lcom/liulishuo/filedownloader/message/e$a;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/message/e$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/e$a$1;->b:Lcom/liulishuo/filedownloader/message/e$a;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/message/e$a$1;->a:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/e$a$1;->b:Lcom/liulishuo/filedownloader/message/e$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/message/e$a;->a:Lcom/liulishuo/filedownloader/message/e;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/message/e;->a(Lcom/liulishuo/filedownloader/message/e;)Lcom/liulishuo/filedownloader/message/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/message/e$a$1;->a:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/message/c$b;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/e$a$1;->b:Lcom/liulishuo/filedownloader/message/e$a;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/message/e$a;->a(Lcom/liulishuo/filedownloader/message/e$a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/message/e$a$1;->a:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
