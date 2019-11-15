.class public Lcom/liulishuo/filedownloader/download/a;
.super Ljava/lang/Object;
.source "ConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/a$a;
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private d:Lcom/liulishuo/filedownloader/download/b;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/download/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/liulishuo/filedownloader/download/a;->a:I

    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/liulishuo/filedownloader/download/a;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/liulishuo/filedownloader/download/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/download/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/download/a$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/liulishuo/filedownloader/download/a;-><init>(Lcom/liulishuo/filedownloader/download/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)V

    return-void
.end method

.method private a(Lcom/liulishuo/filedownloader/a/b;)V
    .locals 5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "%d add outside header: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/liulishuo/filedownloader/download/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Lcom/liulishuo/filedownloader/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    iget-wide v2, v1, Lcom/liulishuo/filedownloader/download/b;->a:J

    invoke-interface {p1, v0, v2, v3}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "If-Match"

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/b;->a(Lcom/liulishuo/filedownloader/a/b;)V

    goto :goto_0
.end method

.method private c(Lcom/liulishuo/filedownloader/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->a()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "User-Agent"

    invoke-static {}, Lcom/liulishuo/filedownloader/e/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method a()Lcom/liulishuo/filedownloader/a/b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/c;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/a;->a(Lcom/liulishuo/filedownloader/a/b;)V

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/a;->b(Lcom/liulishuo/filedownloader/a/b;)V

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/a;->c(Lcom/liulishuo/filedownloader/a/b;)V

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a/b;->b()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->f:Ljava/util/Map;

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "<---- %s request header %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/liulishuo/filedownloader/download/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/a;->f:Ljava/util/Map;

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a/b;->d()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/a;->g:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/liulishuo/filedownloader/a/d;->a(Ljava/util/Map;Lcom/liulishuo/filedownloader/a/b;Ljava/util/List;)Lcom/liulishuo/filedownloader/a/b;

    move-result-object v0

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "----> %s response header %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/liulishuo/filedownloader/download/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a/b;->c()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method a(J)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/b;->b:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-string v0, "no data download, no need to update"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/b;->d:J

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    iget-wide v2, v2, Lcom/liulishuo/filedownloader/download/b;->b:J

    sub-long v2, p1, v2

    sub-long v6, v0, v2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/b;->a:J

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    iget-wide v4, v2, Lcom/liulishuo/filedownloader/download/b;->c:J

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/liulishuo/filedownloader/download/b$a;->a(JJJJ)Lcom/liulishuo/filedownloader/download/b;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "after update profile:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    aput-object v2, v1, v8

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method b()Z
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->f:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/liulishuo/filedownloader/download/b;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/a;->d:Lcom/liulishuo/filedownloader/download/b;

    return-object v0
.end method
