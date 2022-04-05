.class public Landroidx/constraintlayout/solver/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/constraintlayout/solver/b$a;


# static fields
.field private static l:F = 0.001f


# instance fields
.field a:I

.field private final b:Landroidx/constraintlayout/solver/b;

.field protected final c:Landroidx/constraintlayout/solver/c;

.field private d:I

.field private e:Landroidx/constraintlayout/solver/SolverVariable;

.field private f:[I

.field private g:[I

.field private h:[F

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/solver/b;Landroidx/constraintlayout/solver/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/a;->a:I

    const/16 v1, 0x8

    iput v1, p0, Landroidx/constraintlayout/solver/a;->d:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/solver/a;->e:Landroidx/constraintlayout/solver/SolverVariable;

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/solver/a;->h:[F

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/a;->i:I

    iput v1, p0, Landroidx/constraintlayout/solver/a;->j:I

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/a;->k:Z

    iput-object p1, p0, Landroidx/constraintlayout/solver/a;->b:Landroidx/constraintlayout/solver/b;

    iput-object p2, p0, Landroidx/constraintlayout/solver/a;->c:Landroidx/constraintlayout/solver/c;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/SolverVariable;)F
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aget v2, v2, v0

    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    if-ne v2, v3, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aget p1, p1, v0

    return p1

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/solver/a;->e:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/a;->e:Landroidx/constraintlayout/solver/SolverVariable;

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-eq v0, v2, :cond_6

    iget v5, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aget v5, v5, v0

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    if-ne v5, v6, :cond_5

    iget v1, p0, Landroidx/constraintlayout/solver/a;->i:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/a;->i:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v3, v1, v0

    aput v3, v1, v4

    :goto_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->b:Landroidx/constraintlayout/solver/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->b(Landroidx/constraintlayout/solver/b;)V

    :cond_3
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    iget p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    iget-object p1, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aput v2, p1, v0

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/a;->k:Z

    if-eqz p1, :cond_4

    iput v0, p0, Landroidx/constraintlayout/solver/a;->j:I

    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aget p1, p1, v0

    return p1

    :cond_5
    iget-object v4, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_0

    :cond_6
    return v1
.end method

.method public a(Landroidx/constraintlayout/solver/b;Z)F
    .locals 5

    iget-object v0, p1, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v0

    iget-object v1, p1, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/solver/a;->a(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    iget-object p1, p1, Landroidx/constraintlayout/solver/b;->e:Landroidx/constraintlayout/solver/b$a;

    invoke-interface {p1}, Landroidx/constraintlayout/solver/b$a;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Landroidx/constraintlayout/solver/b$a;->a(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    invoke-interface {p1, v3}, Landroidx/constraintlayout/solver/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v4

    mul-float v4, v4, v0

    invoke-virtual {p0, v3, v4, p2}, Landroidx/constraintlayout/solver/a;->a(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/a;->a:I

    return v0
.end method

.method public a(I)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/a;->c:Landroidx/constraintlayout/solver/c;

    iget-object p1, p1, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aget v0, v1, v0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(F)V
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/a;->a(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    return-void

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/a;->i:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    iput v2, p0, Landroidx/constraintlayout/solver/a;->i:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aput p2, v1, v2

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    aput v1, p2, v2

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aput v3, p2, v2

    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    add-int/2addr p2, v0

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->b:Landroidx/constraintlayout/solver/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->a(Landroidx/constraintlayout/solver/b;)V

    iget p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/a;->k:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length v1, p2

    if-lt p1, v1, :cond_1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/a;->k:Z

    array-length p1, p2

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    if-eq v1, v3, :cond_5

    iget v6, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aget v7, v6, v1

    iget v8, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    if-ne v7, v8, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aput p2, p1, v1

    return-void

    :cond_3
    aget v6, v6, v1

    if-ge v6, v8, :cond_4

    move v5, v1

    :cond_4
    iget-object v6, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v1, v6, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget v1, p0, Landroidx/constraintlayout/solver/a;->j:I

    add-int/lit8 v4, v1, 0x1

    iget-boolean v6, p0, Landroidx/constraintlayout/solver/a;->k:Z

    if-eqz v6, :cond_7

    iget-object v4, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aget v6, v4, v1

    if-ne v6, v3, :cond_6

    goto :goto_1

    :cond_6
    array-length v1, v4

    goto :goto_1

    :cond_7
    move v1, v4

    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length v6, v4

    if-lt v1, v6, :cond_9

    iget v6, p0, Landroidx/constraintlayout/solver/a;->a:I

    array-length v4, v4

    if-ge v6, v4, :cond_9

    const/4 v4, 0x0

    :goto_2
    iget-object v6, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length v7, v6

    if-ge v4, v7, :cond_9

    aget v6, v6, v4

    if-ne v6, v3, :cond_8

    move v1, v4

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v4, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length v6, v4

    if-lt v1, v6, :cond_a

    array-length v1, v4

    iget v4, p0, Landroidx/constraintlayout/solver/a;->d:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroidx/constraintlayout/solver/a;->d:I

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/a;->k:Z

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/a;->j:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->h:[F

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/a;->h:[F

    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    iget v4, p0, Landroidx/constraintlayout/solver/a;->d:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    iget v4, p0, Landroidx/constraintlayout/solver/a;->d:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    :cond_a
    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    aput v4, v2, v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aput p2, v2, v1

    if-eq v5, v3, :cond_b

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v2, p2, v5

    aput v2, p2, v1

    aput v1, p2, v5

    goto :goto_4

    :cond_b
    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    iget v2, p0, Landroidx/constraintlayout/solver/a;->i:I

    aput v2, p2, v1

    iput v1, p0, Landroidx/constraintlayout/solver/a;->i:I

    :goto_4
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    add-int/2addr p2, v0

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->b:Landroidx/constraintlayout/solver/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->a(Landroidx/constraintlayout/solver/b;)V

    iget p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/a;->k:Z

    if-nez p1, :cond_c

    iget p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    :cond_c
    iget p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length p2, p2

    if-lt p1, p2, :cond_d

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/a;->k:Z

    :cond_d
    iget p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length v1, p2

    if-lt p1, v1, :cond_e

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/a;->k:Z

    array-length p1, p2

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    :cond_e
    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .locals 9

    sget v0, Landroidx/constraintlayout/solver/a;->l:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iput v1, p0, Landroidx/constraintlayout/solver/a;->i:I

    iget-object p3, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aput p2, p3, v1

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    iget p3, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    aput p3, p2, v1

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aput v2, p2, v1

    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    add-int/2addr p2, v3

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->b:Landroidx/constraintlayout/solver/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->a(Landroidx/constraintlayout/solver/b;)V

    iget p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/a;->k:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length p3, p2

    if-lt p1, p3, :cond_1

    iput-boolean v3, p0, Landroidx/constraintlayout/solver/a;->k:Z

    array-length p1, p2

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    if-eq v0, v2, :cond_a

    iget v6, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v4, v6, :cond_a

    iget-object v6, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aget v7, v6, v0

    iget v8, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    if-ne v7, v8, :cond_8

    iget-object v1, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aget v1, v1, v0

    add-float/2addr v1, p2

    sget p2, Landroidx/constraintlayout/solver/a;->l:F

    neg-float v2, p2

    const/4 v4, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    cmpg-float p2, v1, p2

    if-gez p2, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aput v1, p2, v0

    cmpl-float p2, v1, v4

    if-nez p2, :cond_7

    iget p2, p0, Landroidx/constraintlayout/solver/a;->i:I

    if-ne v0, p2, :cond_4

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget p2, p2, v0

    iput p2, p0, Landroidx/constraintlayout/solver/a;->i:I

    goto :goto_1

    :cond_4
    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v1, p2, v0

    aput v1, p2, v5

    :goto_1
    if-eqz p3, :cond_5

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->b:Landroidx/constraintlayout/solver/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->b(Landroidx/constraintlayout/solver/b;)V

    :cond_5
    iget-boolean p2, p0, Landroidx/constraintlayout/solver/a;->k:Z

    if-eqz p2, :cond_6

    iput v0, p0, Landroidx/constraintlayout/solver/a;->j:I

    :cond_6
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    sub-int/2addr p2, v3

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    iget p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    :cond_7
    return-void

    :cond_8
    aget v6, v6, v0

    if-ge v6, v8, :cond_9

    move v5, v0

    :cond_9
    iget-object v6, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    iget p3, p0, Landroidx/constraintlayout/solver/a;->j:I

    add-int/lit8 v0, p3, 0x1

    iget-boolean v4, p0, Landroidx/constraintlayout/solver/a;->k:Z

    if-eqz v4, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aget v4, v0, p3

    if-ne v4, v2, :cond_b

    goto :goto_2

    :cond_b
    array-length p3, v0

    goto :goto_2

    :cond_c
    move p3, v0

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length v4, v0

    if-lt p3, v4, :cond_e

    iget v4, p0, Landroidx/constraintlayout/solver/a;->a:I

    array-length v0, v0

    if-ge v4, v0, :cond_e

    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length v6, v4

    if-ge v0, v6, :cond_e

    aget v4, v4, v0

    if-ne v4, v2, :cond_d

    move p3, v0

    goto :goto_4

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length v4, v0

    if-lt p3, v4, :cond_f

    array-length p3, v0

    iget v0, p0, Landroidx/constraintlayout/solver/a;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/a;->d:I

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/a;->k:Z

    add-int/lit8 v1, p3, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/a;->j:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/a;->h:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/a;->h:[F

    iget-object v0, p0, Landroidx/constraintlayout/solver/a;->f:[I

    iget v1, p0, Landroidx/constraintlayout/solver/a;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/a;->f:[I

    iget-object v0, p0, Landroidx/constraintlayout/solver/a;->g:[I

    iget v1, p0, Landroidx/constraintlayout/solver/a;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/a;->g:[I

    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/solver/a;->f:[I

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    aput v1, v0, p3

    iget-object v0, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aput p2, v0, p3

    if-eq v5, v2, :cond_10

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v0, p2, v5

    aput v0, p2, p3

    aput p3, p2, v5

    goto :goto_5

    :cond_10
    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    aput v0, p2, p3

    iput p3, p0, Landroidx/constraintlayout/solver/a;->i:I

    :goto_5
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    add-int/2addr p2, v3

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->m:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->b:Landroidx/constraintlayout/solver/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->a(Landroidx/constraintlayout/solver/b;)V

    iget p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/a;->a:I

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/a;->k:Z

    if-nez p1, :cond_11

    iget p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    :cond_11
    iget p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/a;->f:[I

    array-length p3, p2

    if-lt p1, p3, :cond_12

    iput-boolean v3, p0, Landroidx/constraintlayout/solver/a;->k:Z

    array-length p1, p2

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/solver/a;->j:I

    :cond_12
    return-void
.end method

.method public b(I)F
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aget p1, p1, v0

    return p1

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    iget v4, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aget v4, v4, v0

    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    if-ne v4, v5, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final clear()V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v4, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v2, v4, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/solver/a;->c:Landroidx/constraintlayout/solver/c;

    iget-object v3, v3, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroidx/constraintlayout/solver/a;->b:Landroidx/constraintlayout/solver/b;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/SolverVariable;->b(Landroidx/constraintlayout/solver/b;)V

    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Landroidx/constraintlayout/solver/a;->i:I

    iput v3, p0, Landroidx/constraintlayout/solver/a;->j:I

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/a;->k:Z

    iput v1, p0, Landroidx/constraintlayout/solver/a;->a:I

    return-void
.end method

.method public invert()V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    aput v3, v2, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/a;->i:I

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/solver/a;->a:I

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/a;->h:[F

    aget v1, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/a;->c:Landroidx/constraintlayout/solver/c;

    iget-object v1, v1, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/a;->f:[I

    aget v4, v4, v0

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/a;->g:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
