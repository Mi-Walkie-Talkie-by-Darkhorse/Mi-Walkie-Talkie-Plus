.class public Lcom/bumptech/glide/request/e;
.super Ljava/lang/Object;
.source "RequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:F

.field private c:Lcom/bumptech/glide/load/engine/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/Priority;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Lcom/bumptech/glide/load/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:I

.field private q:Lcom/bumptech/glide/load/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/bumptech/glide/request/e;->b:F

    .line 3
    sget-object v0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/h;

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/load/engine/h;

    .line 4
    sget-object v0, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->d:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->i:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/bumptech/glide/request/e;->j:I

    .line 7
    iput v1, p0, Lcom/bumptech/glide/request/e;->k:I

    .line 8
    invoke-static {}, Lcom/bumptech/glide/l/a;->a()Lcom/bumptech/glide/l/a;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/c;

    .line 9
    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->n:Z

    .line 10
    new-instance v1, Lcom/bumptech/glide/load/e;

    invoke-direct {v1}, Lcom/bumptech/glide/load/e;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/e;->q:Lcom/bumptech/glide/load/e;

    .line 11
    new-instance v1, Lcom/bumptech/glide/util/b;

    invoke-direct {v1}, Lcom/bumptech/glide/util/b;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    .line 12
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/request/e;->s:Ljava/lang/Class;

    .line 13
    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->y:Z

    return-void
.end method

.method private F()Lcom/bumptech/glide/request/e;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->t:Z

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/h<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>(Lcom/bumptech/glide/load/h;Z)V

    .line 55
    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1, p2}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;

    .line 56
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;

    .line 57
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/l;->a()Lcom/bumptech/glide/load/h;

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;

    .line 58
    const-class v0, Lcom/bumptech/glide/load/k/f/c;

    new-instance v1, Lcom/bumptech/glide/load/k/f/f;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/k/f/f;-><init>(Lcom/bumptech/glide/load/h;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;

    .line 59
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/h<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/e;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p1, Lcom/bumptech/glide/request/e;->y:Z

    return-object p1
.end method

.method private a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;Z)",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    .line 60
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget p1, p0, Lcom/bumptech/glide/request/e;->a:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    const/4 p2, 0x1

    .line 66
    iput-boolean p2, p0, Lcom/bumptech/glide/request/e;->n:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 67
    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->y:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 69
    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 70
    iput-boolean p2, p0, Lcom/bumptech/glide/request/e;->m:Z

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method private a(I)Z
    .locals 1

    .line 141
    iget v0, p0, Lcom/bumptech/glide/request/e;->a:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result p1

    return p1
.end method

.method public static b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Class;)Lcom/bumptech/glide/request/e;

    move-result-object p0

    return-object p0
.end method

.method private static b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/h<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/e;->k:I

    iget v1, p0, Lcom/bumptech/glide/request/e;->j:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/j;->b(II)Z

    move-result v0

    return v0
.end method

.method public B()Lcom/bumptech/glide/request/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->t:Z

    return-object p0
.end method

.method public C()Lcom/bumptech/glide/request/e;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    return-object v0
.end method

.method public D()Lcom/bumptech/glide/request/e;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->c:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/e;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/bumptech/glide/request/e;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/n;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/n;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/e;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/bumptech/glide/request/e;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    .line 140
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->B()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public a(F)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/e;->a(F)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 3
    iput p1, p0, Lcom/bumptech/glide/request/e;->b:F

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/e;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)Lcom/bumptech/glide/request/e;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 22
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/e;->a(II)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/e;->k:I

    .line 25
    iput p2, p0, Lcom/bumptech/glide/request/e;->j:I

    .line 26
    iget p1, p0, Lcom/bumptech/glide/request/e;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 27
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 12
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lcom/bumptech/glide/request/e;->d:Lcom/bumptech/glide/Priority;

    .line 15
    iget p1, p0, Lcom/bumptech/glide/request/e;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 16
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/c;

    iput-object p1, p0, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/c;

    .line 31
    iget p1, p0, Lcom/bumptech/glide/request/e;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 32
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/d<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    .line 33
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->q:Lcom/bumptech/glide/load/e;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/load/e;

    .line 38
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/engine/h;

    iput-object p1, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/load/engine/h;

    .line 10
    iget p1, p0, Lcom/bumptech/glide/request/e;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/h<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 44
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->f:Lcom/bumptech/glide/load/d;

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/h<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/e;

    const/4 p1, 0x0

    .line 48
    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/h;Z)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/e;
    .locals 4
    .param p1    # Lcom/bumptech/glide/request/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 72
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget v0, p1, Lcom/bumptech/glide/request/e;->b:F

    iput v0, p0, Lcom/bumptech/glide/request/e;->b:F

    .line 76
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-boolean v0, p1, Lcom/bumptech/glide/request/e;->w:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->w:Z

    .line 78
    :cond_2
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-boolean v0, p1, Lcom/bumptech/glide/request/e;->z:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->z:Z

    .line 80
    :cond_3
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p1, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/load/engine/h;

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/load/engine/h;

    .line 82
    :cond_4
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    iget-object v0, p1, Lcom/bumptech/glide/request/e;->d:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->d:Lcom/bumptech/glide/Priority;

    .line 84
    :cond_5
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 85
    iget-object v0, p1, Lcom/bumptech/glide/request/e;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->e:Landroid/graphics/drawable/Drawable;

    .line 86
    iput v1, p0, Lcom/bumptech/glide/request/e;->f:I

    .line 87
    iget v0, p0, Lcom/bumptech/glide/request/e;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 88
    :cond_6
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 89
    iget v0, p1, Lcom/bumptech/glide/request/e;->f:I

    iput v0, p0, Lcom/bumptech/glide/request/e;->f:I

    .line 90
    iput-object v2, p0, Lcom/bumptech/glide/request/e;->e:Landroid/graphics/drawable/Drawable;

    .line 91
    iget v0, p0, Lcom/bumptech/glide/request/e;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 92
    :cond_7
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p1, Lcom/bumptech/glide/request/e;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->g:Landroid/graphics/drawable/Drawable;

    .line 94
    iput v1, p0, Lcom/bumptech/glide/request/e;->h:I

    .line 95
    iget v0, p0, Lcom/bumptech/glide/request/e;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 96
    :cond_8
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 97
    iget v0, p1, Lcom/bumptech/glide/request/e;->h:I

    iput v0, p0, Lcom/bumptech/glide/request/e;->h:I

    .line 98
    iput-object v2, p0, Lcom/bumptech/glide/request/e;->g:Landroid/graphics/drawable/Drawable;

    .line 99
    iget v0, p0, Lcom/bumptech/glide/request/e;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 100
    :cond_9
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    iget-boolean v0, p1, Lcom/bumptech/glide/request/e;->i:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->i:Z

    .line 102
    :cond_a
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 103
    iget v0, p1, Lcom/bumptech/glide/request/e;->k:I

    iput v0, p0, Lcom/bumptech/glide/request/e;->k:I

    .line 104
    iget v0, p1, Lcom/bumptech/glide/request/e;->j:I

    iput v0, p0, Lcom/bumptech/glide/request/e;->j:I

    .line 105
    :cond_b
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 106
    iget-object v0, p1, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/c;

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/c;

    .line 107
    :cond_c
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 108
    iget-object v0, p1, Lcom/bumptech/glide/request/e;->s:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->s:Ljava/lang/Class;

    .line 109
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 110
    iget-object v0, p1, Lcom/bumptech/glide/request/e;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->o:Landroid/graphics/drawable/Drawable;

    .line 111
    iput v1, p0, Lcom/bumptech/glide/request/e;->p:I

    .line 112
    iget v0, p0, Lcom/bumptech/glide/request/e;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 113
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 114
    iget v0, p1, Lcom/bumptech/glide/request/e;->p:I

    iput v0, p0, Lcom/bumptech/glide/request/e;->p:I

    .line 115
    iput-object v2, p0, Lcom/bumptech/glide/request/e;->o:Landroid/graphics/drawable/Drawable;

    .line 116
    iget v0, p0, Lcom/bumptech/glide/request/e;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 117
    :cond_f
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 118
    iget-object v0, p1, Lcom/bumptech/glide/request/e;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/e;->u:Landroid/content/res/Resources$Theme;

    .line 119
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 120
    iget-boolean v0, p1, Lcom/bumptech/glide/request/e;->n:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->n:Z

    .line 121
    :cond_11
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 122
    iget-boolean v0, p1, Lcom/bumptech/glide/request/e;->m:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->m:Z

    .line 123
    :cond_12
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 125
    iget-boolean v0, p1, Lcom/bumptech/glide/request/e;->y:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->y:Z

    .line 126
    :cond_13
    iget v0, p1, Lcom/bumptech/glide/request/e;->a:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 127
    iget-boolean v0, p1, Lcom/bumptech/glide/request/e;->x:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->x:Z

    .line 128
    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->n:Z

    if-nez v0, :cond_15

    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    iget v0, p0, Lcom/bumptech/glide/request/e;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 131
    iput-boolean v1, p0, Lcom/bumptech/glide/request/e;->m:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    .line 132
    iput v0, p0, Lcom/bumptech/glide/request/e;->a:I

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->y:Z

    .line 134
    :cond_15
    iget v0, p0, Lcom/bumptech/glide/request/e;->a:I

    iget v1, p1, Lcom/bumptech/glide/request/e;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->q:Lcom/bumptech/glide/load/e;

    iget-object p1, p1, Lcom/bumptech/glide/request/e;->q:Lcom/bumptech/glide/load/e;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/e;)V

    .line 136
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    .line 39
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Class;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/request/e;->s:Ljava/lang/Class;

    .line 42
    iget p1, p0, Lcom/bumptech/glide/request/e;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 43
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/request/e;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/e;->a(Z)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 19
    iput-boolean p1, p0, Lcom/bumptech/glide/request/e;->i:Z

    .line 20
    iget p1, p0, Lcom/bumptech/glide/request/e;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 21
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public final b()Lcom/bumptech/glide/load/engine/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/load/engine/h;

    return-object v0
.end method

.method final b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/h<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    .line 9
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/e;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/e;

    .line 12
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lcom/bumptech/glide/request/e;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->v:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/e;->b(Z)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/e;->z:Z

    .line 7
    iget p1, p0, Lcom/bumptech/glide/request/e;->a:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/e;->a:I

    .line 8
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->F()Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public final c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bumptech/glide/request/e;->f:I

    return v0
.end method

.method public clone()Lcom/bumptech/glide/request/e;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/e;

    .line 3
    new-instance v1, Lcom/bumptech/glide/load/e;

    invoke-direct {v1}, Lcom/bumptech/glide/load/e;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/e;->q:Lcom/bumptech/glide/load/e;

    .line 4
    iget-object v2, p0, Lcom/bumptech/glide/request/e;->q:Lcom/bumptech/glide/load/e;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/e;)V

    .line 5
    new-instance v1, Lcom/bumptech/glide/util/b;

    invoke-direct {v1}, Lcom/bumptech/glide/util/b;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/bumptech/glide/request/e;->t:Z

    .line 8
    iput-boolean v1, v0, Lcom/bumptech/glide/request/e;->v:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/request/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/bumptech/glide/request/e;

    .line 3
    iget v0, p1, Lcom/bumptech/glide/request/e;->b:F

    iget v2, p0, Lcom/bumptech/glide/request/e;->b:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/e;->f:I

    iget v2, p1, Lcom/bumptech/glide/request/e;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/e;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/e;->h:I

    iget v2, p1, Lcom/bumptech/glide/request/e;->h:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/e;->g:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/e;->p:I

    iget v2, p1, Lcom/bumptech/glide/request/e;->p:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/e;->o:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->i:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/e;->i:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/e;->j:I

    iget v2, p1, Lcom/bumptech/glide/request/e;->j:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/e;->k:I

    iget v2, p1, Lcom/bumptech/glide/request/e;->k:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->m:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/e;->m:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->n:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/e;->n:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->w:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/e;->w:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->x:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/e;->x:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/load/engine/h;

    iget-object v2, p1, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/load/engine/h;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->d:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/e;->d:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->q:Lcom/bumptech/glide/load/e;

    iget-object v2, p1, Lcom/bumptech/glide/request/e;->q:Lcom/bumptech/glide/load/e;

    .line 8
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->s:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/e;->s:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/c;

    iget-object v2, p1, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/c;

    .line 11
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->u:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/request/e;->u:Landroid/content/res/Resources$Theme;

    .line 12
    invoke-static {v0, p1}, Lcom/bumptech/glide/util/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/e;->p:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->x:Z

    return v0
.end method

.method public final h()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->q:Lcom/bumptech/glide/load/e;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/e;->b:F

    invoke-static {v0}, Lcom/bumptech/glide/util/j;->a(F)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/bumptech/glide/request/e;->f:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/bumptech/glide/request/e;->h:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/bumptech/glide/request/e;->p:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(II)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 8
    iget-boolean v1, p0, Lcom/bumptech/glide/request/e;->i:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(ZI)I

    move-result v0

    .line 9
    iget v1, p0, Lcom/bumptech/glide/request/e;->j:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(II)I

    move-result v0

    .line 10
    iget v1, p0, Lcom/bumptech/glide/request/e;->k:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(II)I

    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/bumptech/glide/request/e;->m:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(ZI)I

    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/bumptech/glide/request/e;->n:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(ZI)I

    move-result v0

    .line 13
    iget-boolean v1, p0, Lcom/bumptech/glide/request/e;->w:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(ZI)I

    move-result v0

    .line 14
    iget-boolean v1, p0, Lcom/bumptech/glide/request/e;->x:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(ZI)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->c:Lcom/bumptech/glide/load/engine/h;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->d:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->q:Lcom/bumptech/glide/load/e;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->s:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/c;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->u:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/j;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/e;->j:I

    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/e;->k:I

    return v0
.end method

.method public final k()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/e;->h:I

    return v0
.end method

.method public final m()Lcom/bumptech/glide/Priority;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->d:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final n()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->s:Ljava/lang/Class;

    return-object v0
.end method

.method public final o()Lcom/bumptech/glide/load/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->l:Lcom/bumptech/glide/load/c;

    return-object v0
.end method

.method public final p()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/e;->b:F

    return v0
.end method

.method public final q()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->u:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final r()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/h<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->r:Ljava/util/Map;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->z:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->w:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->i:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/e;->a(I)Z

    move-result v0

    return v0
.end method

.method w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->y:Z

    return v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->n:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->m:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/e;->a(I)Z

    move-result v0

    return v0
.end method
