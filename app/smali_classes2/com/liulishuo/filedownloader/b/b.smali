.class public Lcom/liulishuo/filedownloader/b/b;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/b/b$b;,
        Lcom/liulishuo/filedownloader/b/b$a;
    }
.end annotation


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(IIJ)V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->b()I

    move-result v2

    if-ne v2, p2, :cond_2

    invoke-virtual {v0, p3, p4}, Lcom/liulishuo/filedownloader/model/a;->b(J)V

    goto :goto_0
.end method

.method public a(IJ)V
    .locals 0

    return-void
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/String;JJI)V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/Throwable;J)V
    .locals 0

    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "update but model == null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/b/b;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/b/b;->b(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    goto :goto_0
.end method

.method public a(Lcom/liulishuo/filedownloader/model/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->a()I

    move-result v1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lcom/liulishuo/filedownloader/b/a$a;
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/b/b$a;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/b/b$a;-><init>(Lcom/liulishuo/filedownloader/b/b;)V

    return-object v0
.end method

.method public b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    return-object v0
.end method

.method public b(IJ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/b/b;->e(I)Z

    return-void
.end method

.method public b(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public c(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1
.end method

.method public c(IJ)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public e(I)Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public f(I)V
    .locals 0

    return-void
.end method
