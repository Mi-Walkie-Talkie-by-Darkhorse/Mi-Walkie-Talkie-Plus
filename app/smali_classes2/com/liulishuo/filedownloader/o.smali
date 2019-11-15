.class Lcom/liulishuo/filedownloader/o;
.super Ljava/lang/Object;
.source "FileDownloadServiceSharedTransmit.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/e$a;
.implements Lcom/liulishuo/filedownloader/u;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/liulishuo/filedownloader/services/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;

    sput-object v0, Lcom/liulishuo/filedownloader/o;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/o;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/o;->c:Lcom/liulishuo/filedownloader/services/e;

    invoke-static {}, Lcom/liulishuo/filedownloader/f;->a()Lcom/liulishuo/filedownloader/f;

    move-result-object v0

    new-instance v1, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;

    sget-object v2, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->b:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    sget-object v3, Lcom/liulishuo/filedownloader/o;->a:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/f;->b(Lcom/liulishuo/filedownloader/event/b;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/filedownloader/o;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/liulishuo/filedownloader/o;->a:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/services/e;)V
    .locals 4

    iput-object p1, p0, Lcom/liulishuo/filedownloader/o;->c:Lcom/liulishuo/filedownloader/services/e;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/f;->a()Lcom/liulishuo/filedownloader/f;

    move-result-object v0

    new-instance v1, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;

    sget-object v2, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->a:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    sget-object v3, Lcom/liulishuo/filedownloader/o;->a:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;-><init>(Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/f;->b(Lcom/liulishuo/filedownloader/event/b;)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/liulishuo/filedownloader/e/a;->a(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/o;->c:Lcom/liulishuo/filedownloader/services/e;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/e;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 10

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/liulishuo/filedownloader/e/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/o;->c:Lcom/liulishuo/filedownloader/services/e;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/liulishuo/filedownloader/services/e;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(I)B
    .locals 1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/liulishuo/filedownloader/e/a;->b(I)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/o;->c:Lcom/liulishuo/filedownloader/services/e;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/e;->e(I)B

    move-result v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/o;->c:Lcom/liulishuo/filedownloader/services/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
