.class public final Lcom/amap/api/col/l3/eq$a;
.super Lcom/amap/api/col/l3/ds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3/ds<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/amap/api/col/l3/eq;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3/de$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/eq;Lcom/amap/api/col/l3/de$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-direct {p0}, Lcom/amap/api/col/l3/ds;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/eq$a;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private varargs a([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/amap/api/col/l3/eq$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/de$a;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/amap/api/col/l3/de$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/amap/api/col/l3/de$a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/amap/api/col/l3/de$a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {v3}, Lcom/amap/api/col/l3/eq;->a(Lcom/amap/api/col/l3/eq;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    iget-boolean v4, v4, Lcom/amap/api/col/l3/eq;->c:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ds;->c()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {v4}, Lcom/amap/api/col/l3/eq;->a(Lcom/amap/api/col/l3/eq;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {v3}, Lcom/amap/api/col/l3/eq;->b(Lcom/amap/api/col/l3/eq;)Lcom/amap/api/col/l3/en;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ds;->c()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/l3/eq$a;->e()Lcom/amap/api/col/l3/de$a;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {v3}, Lcom/amap/api/col/l3/eq;->c(Lcom/amap/api/col/l3/eq;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {v3}, Lcom/amap/api/col/l3/eq;->b(Lcom/amap/api/col/l3/eq;)Lcom/amap/api/col/l3/en;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3/en;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz p1, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ds;->c()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/l3/eq$a;->e()Lcom/amap/api/col/l3/de$a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {p1}, Lcom/amap/api/col/l3/eq;->c(Lcom/amap/api/col/l3/eq;)Z

    move-result p1

    if-nez p1, :cond_3

    const-class p1, Lcom/amap/api/col/l3/eq;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-virtual {v3, v0}, Lcom/amap/api/col/l3/eq;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1

    throw v0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {p1}, Lcom/amap/api/col/l3/eq;->b(Lcom/amap/api/col/l3/eq;)Lcom/amap/api/col/l3/en;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {p1}, Lcom/amap/api/col/l3/eq;->b(Lcom/amap/api/col/l3/eq;)Lcom/amap/api/col/l3/en;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/amap/api/col/l3/en;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_4
    return-object v3

    :catchall_1
    move-exception p1

    monitor-exit v3

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method private e()Lcom/amap/api/col/l3/de$a;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/eq$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/de$a;

    invoke-static {v0}, Lcom/amap/api/col/l3/eq;->b(Lcom/amap/api/col/l3/de$a;)Lcom/amap/api/col/l3/eq$a;

    move-result-object v1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/eq$a;->a([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ds;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {v0}, Lcom/amap/api/col/l3/eq;->c(Lcom/amap/api/col/l3/eq;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/eq$a;->e()Lcom/amap/api/col/l3/de$a;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/de$a;->a(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {p1}, Lcom/amap/api/col/l3/eq;->d(Lcom/amap/api/col/l3/eq;)Lcom/amap/api/col/l3/eq$c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {p1}, Lcom/amap/api/col/l3/eq;->d(Lcom/amap/api/col/l3/eq;)Lcom/amap/api/col/l3/eq$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/col/l3/eq$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Lcom/amap/api/col/l3/ds;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {p1}, Lcom/amap/api/col/l3/eq;->a(Lcom/amap/api/col/l3/eq;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/eq$a;->d:Lcom/amap/api/col/l3/eq;

    invoke-static {v0}, Lcom/amap/api/col/l3/eq;->a(Lcom/amap/api/col/l3/eq;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method
