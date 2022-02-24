.class public abstract Landroidx/dynamicanimation/a/b;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/a/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/a/b$q;,
        Landroidx/dynamicanimation/a/b$p;,
        Landroidx/dynamicanimation/a/b$o;,
        Landroidx/dynamicanimation/a/b$r;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/dynamicanimation/a/b<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroidx/dynamicanimation/a/a$b;"
    }
.end annotation


# static fields
.field public static final m:Landroidx/dynamicanimation/a/b$r;

.field public static final n:Landroidx/dynamicanimation/a/b$r;

.field public static final o:Landroidx/dynamicanimation/a/b$r;

.field public static final p:Landroidx/dynamicanimation/a/b$r;

.field public static final q:Landroidx/dynamicanimation/a/b$r;

.field public static final r:Landroidx/dynamicanimation/a/b$r;


# instance fields
.field a:F

.field b:F

.field c:Z

.field final d:Ljava/lang/Object;

.field final e:Landroidx/dynamicanimation/a/c;

.field f:Z

.field g:F

.field h:F

.field private i:J

.field private j:F

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/a/b$p;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/a/b$q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/dynamicanimation/a/b$f;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$f;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/dynamicanimation/a/b$g;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$g;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroidx/dynamicanimation/a/b$h;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$h;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroidx/dynamicanimation/a/b$i;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$i;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/b;->m:Landroidx/dynamicanimation/a/b$r;

    .line 5
    new-instance v0, Landroidx/dynamicanimation/a/b$j;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$j;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/b;->n:Landroidx/dynamicanimation/a/b$r;

    .line 6
    new-instance v0, Landroidx/dynamicanimation/a/b$k;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$k;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/b;->o:Landroidx/dynamicanimation/a/b$r;

    .line 7
    new-instance v0, Landroidx/dynamicanimation/a/b$l;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$l;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/b;->p:Landroidx/dynamicanimation/a/b$r;

    .line 8
    new-instance v0, Landroidx/dynamicanimation/a/b$m;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$m;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/b;->q:Landroidx/dynamicanimation/a/b$r;

    .line 9
    new-instance v0, Landroidx/dynamicanimation/a/b$n;

    const-string v1, "x"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$n;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroidx/dynamicanimation/a/b$a;

    const-string v1, "y"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$a;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroidx/dynamicanimation/a/b$b;

    const-string v1, "z"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$b;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v0, Landroidx/dynamicanimation/a/b$c;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/b;->r:Landroidx/dynamicanimation/a/b$r;

    .line 13
    new-instance v0, Landroidx/dynamicanimation/a/b$d;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$d;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v0, Landroidx/dynamicanimation/a/b$e;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/b$e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/a/c<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/dynamicanimation/a/b;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput v0, p0, Landroidx/dynamicanimation/a/b;->b:F

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/dynamicanimation/a/b;->c:Z

    .line 5
    iput-boolean v1, p0, Landroidx/dynamicanimation/a/b;->f:Z

    .line 6
    iput v0, p0, Landroidx/dynamicanimation/a/b;->g:F

    neg-float v0, v0

    .line 7
    iput v0, p0, Landroidx/dynamicanimation/a/b;->h:F

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Landroidx/dynamicanimation/a/b;->i:J

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/a/b;->k:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/a/b;->l:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Landroidx/dynamicanimation/a/b;->d:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Landroidx/dynamicanimation/a/b;->e:Landroidx/dynamicanimation/a/c;

    .line 13
    sget-object p1, Landroidx/dynamicanimation/a/b;->o:Landroidx/dynamicanimation/a/b$r;

    if-eq p2, p1, :cond_4

    sget-object p1, Landroidx/dynamicanimation/a/b;->p:Landroidx/dynamicanimation/a/b$r;

    if-eq p2, p1, :cond_4

    sget-object p1, Landroidx/dynamicanimation/a/b;->q:Landroidx/dynamicanimation/a/b$r;

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    sget-object p1, Landroidx/dynamicanimation/a/b;->r:Landroidx/dynamicanimation/a/b$r;

    const/high16 v0, 0x3b800000    # 0.00390625f

    if-ne p2, p1, :cond_1

    .line 15
    iput v0, p0, Landroidx/dynamicanimation/a/b;->j:F

    goto :goto_2

    .line 16
    :cond_1
    sget-object p1, Landroidx/dynamicanimation/a/b;->m:Landroidx/dynamicanimation/a/b$r;

    if-eq p2, p1, :cond_3

    sget-object p1, Landroidx/dynamicanimation/a/b;->n:Landroidx/dynamicanimation/a/b$r;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    iput p1, p0, Landroidx/dynamicanimation/a/b;->j:F

    goto :goto_2

    .line 18
    :cond_3
    :goto_0
    iput v0, p0, Landroidx/dynamicanimation/a/b;->j:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 19
    iput p1, p0, Landroidx/dynamicanimation/a/b;->j:F

    :goto_2
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/dynamicanimation/a/b;->f:Z

    .line 20
    invoke-static {}, Landroidx/dynamicanimation/a/a;->c()Landroidx/dynamicanimation/a/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/a/a;->a(Landroidx/dynamicanimation/a/a$b;)V

    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, p0, Landroidx/dynamicanimation/a/b;->i:J

    .line 22
    iput-boolean v0, p0, Landroidx/dynamicanimation/a/b;->c:Z

    .line 23
    :goto_0
    iget-object v1, p0, Landroidx/dynamicanimation/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 24
    iget-object v1, p0, Landroidx/dynamicanimation/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Landroidx/dynamicanimation/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/a/b$p;

    iget v2, p0, Landroidx/dynamicanimation/a/b;->b:F

    iget v3, p0, Landroidx/dynamicanimation/a/b;->a:F

    invoke-interface {v1, p0, p1, v2, v3}, Landroidx/dynamicanimation/a/b$p;->a(Landroidx/dynamicanimation/a/b;ZFF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Landroidx/dynamicanimation/a/b;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/dynamicanimation/a/b;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private e()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->e:Landroidx/dynamicanimation/a/c;

    iget-object v1, p0, Landroidx/dynamicanimation/a/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/a/c;->getValue(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method private f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/dynamicanimation/a/b;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/dynamicanimation/a/b;->f:Z

    .line 3
    iget-boolean v0, p0, Landroidx/dynamicanimation/a/b;->c:Z

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Landroidx/dynamicanimation/a/b;->e()F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/a/b;->b:F

    .line 5
    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/a/b;->b:F

    iget v1, p0, Landroidx/dynamicanimation/a/b;->g:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Landroidx/dynamicanimation/a/b;->h:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 6
    invoke-static {}, Landroidx/dynamicanimation/a/a;->c()Landroidx/dynamicanimation/a/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/dynamicanimation/a/a;->a(Landroidx/dynamicanimation/a/a$b;J)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 7
    iget-boolean v0, p0, Landroidx/dynamicanimation/a/b;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Landroidx/dynamicanimation/a/b;->a(Z)V

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(F)V
    .locals 3

    .line 27
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->e:Landroidx/dynamicanimation/a/c;

    iget-object v1, p0, Landroidx/dynamicanimation/a/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/a/c;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    .line 28
    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 29
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/a/b$q;

    iget v1, p0, Landroidx/dynamicanimation/a/b;->b:F

    iget v2, p0, Landroidx/dynamicanimation/a/b;->a:F

    invoke-interface {v0, p0, v1, v2}, Landroidx/dynamicanimation/a/b$q;->a(Landroidx/dynamicanimation/a/b;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Landroidx/dynamicanimation/a/b;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/dynamicanimation/a/b;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(J)Z
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->a:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 10
    iget-wide v0, p0, Landroidx/dynamicanimation/a/b;->i:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 11
    iput-wide p1, p0, Landroidx/dynamicanimation/a/b;->i:J

    .line 12
    iget p1, p0, Landroidx/dynamicanimation/a/b;->b:F

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/a/b;->a(F)V

    return v2

    :cond_0
    sub-long v0, p1, v0

    .line 13
    iput-wide p1, p0, Landroidx/dynamicanimation/a/b;->i:J

    .line 14
    invoke-virtual {p0, v0, v1}, Landroidx/dynamicanimation/a/b;->b(J)Z

    move-result p1

    .line 15
    iget p2, p0, Landroidx/dynamicanimation/a/b;->b:F

    iget v0, p0, Landroidx/dynamicanimation/a/b;->g:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroidx/dynamicanimation/a/b;->b:F

    .line 16
    iget v0, p0, Landroidx/dynamicanimation/a/b;->h:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroidx/dynamicanimation/a/b;->b:F

    .line 17
    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/a/b;->a(F)V

    if-eqz p1, :cond_1

    .line 18
    invoke-direct {p0, v2}, Landroidx/dynamicanimation/a/b;->a(Z)V

    :cond_1
    return p1
.end method

.method b()F
    .locals 2

    .line 3
    iget v0, p0, Landroidx/dynamicanimation/a/b;->j:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    return v0
.end method

.method public b(F)Landroidx/dynamicanimation/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/dynamicanimation/a/b;->b:F

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/dynamicanimation/a/b;->c:Z

    return-object p0
.end method

.method abstract b(J)Z
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/dynamicanimation/a/b;->f:Z

    return v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Landroidx/dynamicanimation/a/b;->f:Z

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/dynamicanimation/a/b;->f()V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeEndListener(Landroidx/dynamicanimation/a/b$p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->k:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroidx/dynamicanimation/a/b;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeUpdateListener(Landroidx/dynamicanimation/a/b$q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->l:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroidx/dynamicanimation/a/b;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method
