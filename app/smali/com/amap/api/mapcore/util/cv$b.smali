.class Lcom/amap/api/mapcore/util/cv$b;
.super Lcom/amap/api/mapcore/util/dj;
.source "TileOverlayDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/cv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/dj",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/amap/api/mapcore/util/cv$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/mapcore/util/l;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cv$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/mapcore/util/v;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/mapcore/util/eg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/amap/api/mapcore/util/l;IIILjava/util/List;ZLcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amap/api/mapcore/util/l;",
            "III",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cv$a;",
            ">;Z",
            "Lcom/amap/api/mapcore/util/v;",
            "Lcom/amap/api/mapcore/util/eg;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x100

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dj;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore/util/cv$b;->f:I

    iput v0, p0, Lcom/amap/api/mapcore/util/cv$b;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/cv$b;->h:I

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/cv$b;->e:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv$b;->i:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/amap/api/mapcore/util/cv$b;->f:I

    iput p4, p0, Lcom/amap/api/mapcore/util/cv$b;->g:I

    iput p5, p0, Lcom/amap/api/mapcore/util/cv$b;->h:I

    iput-object p6, p0, Lcom/amap/api/mapcore/util/cv$b;->j:Ljava/util/List;

    iput-boolean p7, p0, Lcom/amap/api/mapcore/util/cv$b;->k:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv$b;->l:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cv$b;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cv$b;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cv$a;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/l;

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapHeight()I

    move-result v2

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->g()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/amap/api/mapcore/util/cv$b;->d:I

    if-lez v1, :cond_1

    if-gtz v2, :cond_2

    :cond_1
    move-object v0, v7

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/amap/api/mapcore/util/cv$b;->d:I

    iget v2, p0, Lcom/amap/api/mapcore/util/cv$b;->f:I

    iget v3, p0, Lcom/amap/api/mapcore/util/cv$b;->g:I

    iget v4, p0, Lcom/amap/api/mapcore/util/cv$b;->h:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/cv$b;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/mapcore/util/v;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/cv$b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/mapcore/util/eg;

    invoke-static/range {v0 .. v6}, Lcom/amap/api/mapcore/util/cv;->a(Lcom/amap/api/mapcore/util/l;IIIILcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cv$b;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cv$a;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cv$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/l;

    iget v2, p0, Lcom/amap/api/mapcore/util/cv$b;->d:I

    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/cv$b;->e:Z

    iget-object v4, p0, Lcom/amap/api/mapcore/util/cv$b;->j:Ljava/util/List;

    iget-boolean v5, p0, Lcom/amap/api/mapcore/util/cv$b;->k:Z

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cv$b;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/mapcore/util/v;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cv$b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/mapcore/util/eg;

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/cv;->a(Lcom/amap/api/mapcore/util/l;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/mapcore/util/v;Lcom/amap/api/mapcore/util/eg;)Z

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
