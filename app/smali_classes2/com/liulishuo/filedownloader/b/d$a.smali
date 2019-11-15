.class public Lcom/liulishuo/filedownloader/b/d$a;
.super Ljava/lang/Object;
.source "SqliteDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/b/d;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/liulishuo/filedownloader/b/d$b;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
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
.method constructor <init>(Lcom/liulishuo/filedownloader/b/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/liulishuo/filedownloader/b/d$a;-><init>(Lcom/liulishuo/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method constructor <init>(Lcom/liulishuo/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/liulishuo/filedownloader/b/d$a;->e:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    const/4 v11, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->c:Lcom/liulishuo/filedownloader/b/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->c:Lcom/liulishuo/filedownloader/b/d$b;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/b/d$b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v5}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "filedownloader"

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v5}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "filedownloader"

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->p()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->n()I

    move-result v5

    if-le v5, v11, :cond_2

    iget-object v5, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v5, v1}, Lcom/liulishuo/filedownloader/b/d;->c(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_3

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v6}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "filedownloaderConnection"

    const-string v8, "id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/liulishuo/filedownloader/model/a;->a(I)V

    iget-object v6, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v6}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "filedownloaderConnection"

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/a;->f()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v6, v7, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v1}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_6

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/b/d;->c(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/liulishuo/filedownloader/b/d$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method

.method public a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/liulishuo/filedownloader/b/d$b;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/b/d$b;-><init>(Lcom/liulishuo/filedownloader/b/d;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->c:Lcom/liulishuo/filedownloader/b/d$b;

    return-object v0
.end method
