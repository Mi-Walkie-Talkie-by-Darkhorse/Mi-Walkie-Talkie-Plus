.class public Lcom/bumptech/glide/request/d;
.super Ljava/lang/Object;
.source "RequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:F

.field private c:Lcom/bumptech/glide/load/engine/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/Priority;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Lcom/bumptech/glide/load/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private p:I

.field private q:Lcom/bumptech/glide/load/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/h",
            "<*>;>;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Landroid/content/res/Resources$Theme;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bumptech/glide/request/d;->b:F

    sget-object v0, Lcom/bumptech/glide/load/engine/g;->e:Lcom/bumptech/glide/load/engine/g;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->c:Lcom/bumptech/glide/load/engine/g;

    sget-object v0, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->d:Lcom/bumptech/glide/Priority;

    iput-boolean v1, p0, Lcom/bumptech/glide/request/d;->i:Z

    iput v2, p0, Lcom/bumptech/glide/request/d;->j:I

    iput v2, p0, Lcom/bumptech/glide/request/d;->k:I

    invoke-static {}, Lcom/bumptech/glide/d/a;->a()Lcom/bumptech/glide/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->l:Lcom/bumptech/glide/load/c;

    iput-boolean v1, p0, Lcom/bumptech/glide/request/d;->n:Z

    new-instance v0, Lcom/bumptech/glide/load/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->s:Ljava/lang/Class;

    iput-boolean v1, p0, Lcom/bumptech/glide/request/d;->y:Z

    return-void
.end method

.method private F()Lcom/bumptech/glide/request/d;
    .locals 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->t:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/d;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/d;

    invoke-direct {v0}, Lcom/bumptech/glide/request/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/bumptech/glide/load/engine/g;)Lcom/bumptech/glide/request/d;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/d;

    invoke-direct {v0}, Lcom/bumptech/glide/request/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/engine/g;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/h",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/d;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/request/d;->y:Z

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Lcom/bumptech/glide/request/d;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/bumptech/glide/request/d;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/d;

    invoke-direct {v0}, Lcom/bumptech/glide/request/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/d;->b(Ljava/lang/Class;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method private static b(II)Z
    .locals 1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/h",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/d;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Z
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/d;->j:I

    return v0
.end method

.method public final B()F
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/d;->b:F

    return v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->y:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->w:Z

    return v0
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->x:Z

    return v0
.end method

.method public a()Lcom/bumptech/glide/request/d;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/d;

    new-instance v1, Lcom/bumptech/glide/load/e;

    invoke-direct {v1}, Lcom/bumptech/glide/load/e;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    iget-object v1, v0, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    iget-object v2, p0, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/e;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    iget-object v1, v0, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    iget-object v2, p0, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/request/d;->t:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/request/d;->v:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(F)Lcom/bumptech/glide/request/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->a(F)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/bumptech/glide/request/d;->b:F

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Lcom/bumptech/glide/request/d;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->a(I)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/d;->h:I

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(II)Lcom/bumptech/glide/request/d;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/d;->a(II)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/d;->k:I

    iput p2, p0, Lcom/bumptech/glide/request/d;->j:I

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/d;
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->d:Lcom/bumptech/glide/Priority;

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/d;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/d",
            "<TT;>;TT;)",
            "Lcom/bumptech/glide/request/d;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/load/e;

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/h",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/d;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->m:Z

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/d;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->b:Lcom/bumptech/glide/load/d;

    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/h",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/d;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/d;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/bumptech/glide/request/d;->b:F

    iput v0, p0, Lcom/bumptech/glide/request/d;->b:F

    :cond_1
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/bumptech/glide/request/d;->w:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->w:Z

    :cond_2
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/bumptech/glide/request/d;->c:Lcom/bumptech/glide/load/engine/g;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->c:Lcom/bumptech/glide/load/engine/g;

    :cond_3
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/bumptech/glide/request/d;->d:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->d:Lcom/bumptech/glide/Priority;

    :cond_4
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/bumptech/glide/request/d;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->e:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/bumptech/glide/request/d;->f:I

    iput v0, p0, Lcom/bumptech/glide/request/d;->f:I

    :cond_6
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/bumptech/glide/request/d;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->g:Landroid/graphics/drawable/Drawable;

    :cond_7
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p1, Lcom/bumptech/glide/request/d;->h:I

    iput v0, p0, Lcom/bumptech/glide/request/d;->h:I

    :cond_8
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/bumptech/glide/request/d;->i:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->i:Z

    :cond_9
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/bumptech/glide/request/d;->k:I

    iput v0, p0, Lcom/bumptech/glide/request/d;->k:I

    iget v0, p1, Lcom/bumptech/glide/request/d;->j:I

    iput v0, p0, Lcom/bumptech/glide/request/d;->j:I

    :cond_a
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/bumptech/glide/request/d;->l:Lcom/bumptech/glide/load/c;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->l:Lcom/bumptech/glide/load/c;

    :cond_b
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/bumptech/glide/request/d;->s:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->s:Ljava/lang/Class;

    :cond_c
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/bumptech/glide/request/d;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->o:Landroid/graphics/drawable/Drawable;

    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p1, Lcom/bumptech/glide/request/d;->p:I

    iput v0, p0, Lcom/bumptech/glide/request/d;->p:I

    :cond_e
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const v1, 0x8000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/bumptech/glide/request/d;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->u:Landroid/content/res/Resources$Theme;

    :cond_f
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lcom/bumptech/glide/request/d;->n:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->n:Z

    :cond_10
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lcom/bumptech/glide/request/d;->m:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->m:Z

    :cond_11
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lcom/bumptech/glide/request/d;->y:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->y:Z

    :cond_12
    iget v0, p1, Lcom/bumptech/glide/request/d;->a:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p1, Lcom/bumptech/glide/request/d;->x:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->x:Z

    :cond_13
    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->n:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->m:Z

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->y:Z

    :cond_14
    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    iget v1, p1, Lcom/bumptech/glide/request/d;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    iget-object v1, p1, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/e;)V

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/bumptech/glide/load/h",
            "<TT;>;)",
            "Lcom/bumptech/glide/request/d;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/d;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->n:Z

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->y:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)Lcom/bumptech/glide/request/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/d;->a(Z)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->i:Z

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(I)Lcom/bumptech/glide/request/d;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->b(I)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/d;->f:I

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/d;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->l:Lcom/bumptech/glide/load/c;

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/engine/g;)Lcom/bumptech/glide/request/d;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/engine/g;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/g;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->c:Lcom/bumptech/glide/load/engine/g;

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/h",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/d;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/d;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Lcom/bumptech/glide/load/h;)V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/d;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    const-class v0, Lcom/bumptech/glide/load/resource/d/c;

    new-instance v1, Lcom/bumptech/glide/load/resource/d/f;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/d/f;-><init>(Lcom/bumptech/glide/load/h;)V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/d;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method final b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/h",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/d;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/d;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;)Lcom/bumptech/glide/request/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/bumptech/glide/request/d;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->b(Ljava/lang/Class;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/d;->s:Ljava/lang/Class;

    iget v0, p0, Lcom/bumptech/glide/request/d;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/bumptech/glide/request/d;->a:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/d;->F()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->n:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/d;->c(I)Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/request/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/bumptech/glide/request/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/d;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/bumptech/glide/request/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/bumptech/glide/request/d;

    iget v1, p1, Lcom/bumptech/glide/request/d;->b:F

    iget v2, p0, Lcom/bumptech/glide/request/d;->b:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/bumptech/glide/request/d;->f:I

    iget v2, p1, Lcom/bumptech/glide/request/d;->f:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/d;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bumptech/glide/request/d;->h:I

    iget v2, p1, Lcom/bumptech/glide/request/d;->h:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bumptech/glide/request/d;->p:I

    iget v2, p1, Lcom/bumptech/glide/request/d;->p:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/d;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->i:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/d;->i:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/request/d;->j:I

    iget v2, p1, Lcom/bumptech/glide/request/d;->j:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/request/d;->k:I

    iget v2, p1, Lcom/bumptech/glide/request/d;->k:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->m:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/d;->m:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->n:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/d;->n:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->w:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/d;->w:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->x:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/d;->x:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->c:Lcom/bumptech/glide/load/engine/g;

    iget-object v2, p1, Lcom/bumptech/glide/request/d;->c:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->d:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/d;->d:Lcom/bumptech/glide/Priority;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    iget-object v2, p1, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->s:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/d;->s:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->l:Lcom/bumptech/glide/load/c;

    iget-object v2, p1, Lcom/bumptech/glide/request/d;->l:Lcom/bumptech/glide/load/c;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->u:Landroid/content/res/Resources$Theme;

    iget-object v2, p1, Lcom/bumptech/glide/request/d;->u:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public f()Lcom/bumptech/glide/request/d;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->e:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/d;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/request/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->t:Z

    return-object p0
.end method

.method public h()Lcom/bumptech/glide/request/d;
    .locals 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/d;->v:Z

    invoke-virtual {p0}, Lcom/bumptech/glide/request/d;->g()Lcom/bumptech/glide/request/d;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/request/d;->b:F

    invoke-static {v0}, Lcom/bumptech/glide/util/i;->a(F)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/d;->f:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->b(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/d;->h:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->b(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/d;->p:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->b(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->i:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(ZI)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/d;->j:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->b(II)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/d;->k:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->b(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->m:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->n:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->w:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/d;->x:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(ZI)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->c:Lcom/bumptech/glide/load/engine/g;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->d:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->s:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->l:Lcom/bumptech/glide/load/c;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/d;->u:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/h",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->r:Ljava/util/Map;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->m:Z

    return v0
.end method

.method public final k()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->q:Lcom/bumptech/glide/load/e;

    return-object v0
.end method

.method public final l()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->s:Ljava/lang/Class;

    return-object v0
.end method

.method public final m()Lcom/bumptech/glide/load/engine/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->c:Lcom/bumptech/glide/load/engine/g;

    return-object v0
.end method

.method public final n()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/d;->f:I

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/d;->h:I

    return v0
.end method

.method public final q()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/d;->p:I

    return v0
.end method

.method public final s()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final t()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->u:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/d;->i:Z

    return v0
.end method

.method public final v()Lcom/bumptech/glide/load/c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->l:Lcom/bumptech/glide/load/c;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/d;->c(I)Z

    move-result v0

    return v0
.end method

.method public final x()Lcom/bumptech/glide/Priority;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/d;->d:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/d;->k:I

    return v0
.end method

.method public final z()Z
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/request/d;->k:I

    iget v1, p0, Lcom/bumptech/glide/request/d;->j:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(II)Z

    move-result v0

    return v0
.end method
