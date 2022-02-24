.class public Landroidx/constraintlayout/solver/d;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/d$a;,
        Landroidx/constraintlayout/solver/d$b;
    }
.end annotation


# static fields
.field private static q:I = 0x3e8

.field public static r:Landroidx/constraintlayout/solver/e; = null

.field public static s:Z = true

.field public static t:J

.field public static u:J


# instance fields
.field a:I

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/constraintlayout/solver/d$a;

.field private d:I

.field private e:I

.field f:[Landroidx/constraintlayout/solver/b;

.field public g:Z

.field public h:Z

.field private i:[Z

.field j:I

.field k:I

.field private l:I

.field final m:Landroidx/constraintlayout/solver/c;

.field private n:[Landroidx/constraintlayout/solver/SolverVariable;

.field private o:I

.field private p:Landroidx/constraintlayout/solver/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/solver/d;->a:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroidx/constraintlayout/solver/d;->b:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 4
    iput v2, p0, Landroidx/constraintlayout/solver/d;->d:I

    .line 5
    iput v2, p0, Landroidx/constraintlayout/solver/d;->e:I

    .line 6
    iput-object v1, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    .line 7
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/d;->g:Z

    .line 8
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/d;->h:Z

    new-array v1, v2, [Z

    .line 9
    iput-object v1, p0, Landroidx/constraintlayout/solver/d;->i:[Z

    const/4 v1, 0x1

    .line 10
    iput v1, p0, Landroidx/constraintlayout/solver/d;->j:I

    .line 11
    iput v0, p0, Landroidx/constraintlayout/solver/d;->k:I

    .line 12
    iput v2, p0, Landroidx/constraintlayout/solver/d;->l:I

    .line 13
    sget v1, Landroidx/constraintlayout/solver/d;->q:I

    new-array v1, v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, p0, Landroidx/constraintlayout/solver/d;->n:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 14
    iput v0, p0, Landroidx/constraintlayout/solver/d;->o:I

    new-array v0, v2, [Landroidx/constraintlayout/solver/b;

    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    .line 16
    invoke-direct {p0}, Landroidx/constraintlayout/solver/d;->j()V

    .line 17
    new-instance v0, Landroidx/constraintlayout/solver/c;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    .line 18
    new-instance v1, Landroidx/constraintlayout/solver/h;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/solver/h;-><init>(Landroidx/constraintlayout/solver/c;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/d;->c:Landroidx/constraintlayout/solver/d$a;

    .line 19
    sget-boolean v0, Landroidx/constraintlayout/solver/d;->s:Z

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Landroidx/constraintlayout/solver/d$b;

    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/solver/d$b;-><init>(Landroidx/constraintlayout/solver/d;Landroidx/constraintlayout/solver/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/d;->p:Landroidx/constraintlayout/solver/d$a;

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Landroidx/constraintlayout/solver/b;

    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/b;-><init>(Landroidx/constraintlayout/solver/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/d;->p:Landroidx/constraintlayout/solver/d$a;

    :goto_0
    return-void
.end method

.method private final a(Landroidx/constraintlayout/solver/d$a;Z)I
    .locals 12

    .line 81
    sget-object p2, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_0

    .line 82
    iget-wide v2, p2, Landroidx/constraintlayout/solver/e;->h:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Landroidx/constraintlayout/solver/e;->h:J

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 83
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/solver/d;->j:I

    if-ge v2, v3, :cond_1

    .line 84
    iget-object v3, p0, Landroidx/constraintlayout/solver/d;->i:[Z

    aput-boolean p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_e

    .line 85
    sget-object v4, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v4, :cond_3

    .line 86
    iget-wide v5, v4, Landroidx/constraintlayout/solver/e;->i:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroidx/constraintlayout/solver/e;->i:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 87
    iget v4, p0, Landroidx/constraintlayout/solver/d;->j:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_4

    return v3

    .line 88
    :cond_4
    invoke-interface {p1}, Landroidx/constraintlayout/solver/d$a;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 89
    iget-object v4, p0, Landroidx/constraintlayout/solver/d;->i:[Z

    invoke-interface {p1}, Landroidx/constraintlayout/solver/d$a;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    aput-boolean v5, v4, v6

    .line 90
    :cond_5
    iget-object v4, p0, Landroidx/constraintlayout/solver/d;->i:[Z

    invoke-interface {p1, p0, v4}, Landroidx/constraintlayout/solver/d$a;->a(Landroidx/constraintlayout/solver/d;[Z)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 91
    iget-object v6, p0, Landroidx/constraintlayout/solver/d;->i:[Z

    iget v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    aget-boolean v8, v6, v7

    if-eqz v8, :cond_6

    return v3

    .line 92
    :cond_6
    aput-boolean v5, v6, v7

    :cond_7
    if-eqz v4, :cond_d

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 93
    :goto_2
    iget v9, p0, Landroidx/constraintlayout/solver/d;->k:I

    if-ge v7, v9, :cond_b

    .line 94
    iget-object v9, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aget-object v9, v9, v7

    .line 95
    iget-object v10, v9, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 96
    iget-object v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v11, Landroidx/constraintlayout/solver/SolverVariable$Type;->a:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v10, v11, :cond_8

    goto :goto_3

    .line 97
    :cond_8
    iget-boolean v10, v9, Landroidx/constraintlayout/solver/b;->f:Z

    if-eqz v10, :cond_9

    goto :goto_3

    .line 98
    :cond_9
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/solver/b;->b(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 99
    iget-object v10, v9, Landroidx/constraintlayout/solver/b;->e:Landroidx/constraintlayout/solver/b$a;

    invoke-interface {v10, v4}, Landroidx/constraintlayout/solver/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_a

    .line 100
    iget v9, v9, Landroidx/constraintlayout/solver/b;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_a

    move v8, v7

    move v5, v9

    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    if-le v8, v6, :cond_2

    .line 101
    iget-object v5, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aget-object v5, v5, v8

    .line 102
    iget-object v7, v5, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v6, v7, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    .line 103
    sget-object v6, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v6, :cond_c

    .line 104
    iget-wide v9, v6, Landroidx/constraintlayout/solver/e;->j:J

    add-long/2addr v9, v0

    iput-wide v9, v6, Landroidx/constraintlayout/solver/e;->j:J

    .line 105
    :cond_c
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/solver/b;->d(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 106
    iget-object v4, v5, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v8, v4, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    .line 107
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/SolverVariable;->c(Landroidx/constraintlayout/solver/b;)V

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    return v3
.end method

.method private a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 2

    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v0, v0, Landroidx/constraintlayout/solver/c;->c:Landroidx/constraintlayout/solver/f;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/f;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->a()V

    .line 42
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 43
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/solver/d;->o:I

    sget p2, Landroidx/constraintlayout/solver/d;->q:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    .line 44
    sput p2, Landroidx/constraintlayout/solver/d;->q:I

    .line 45
    iget-object p1, p0, Landroidx/constraintlayout/solver/d;->n:[Landroidx/constraintlayout/solver/SolverVariable;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object p1, p0, Landroidx/constraintlayout/solver/d;->n:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 46
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/d;->n:[Landroidx/constraintlayout/solver/SolverVariable;

    iget p2, p0, Landroidx/constraintlayout/solver/d;->o:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/d;->o:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public static a(Landroidx/constraintlayout/solver/d;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/b;
    .locals 0

    .line 141
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object p0

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/b;

    return-object p0
.end method

.method private b(Landroidx/constraintlayout/solver/d$a;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 22
    :goto_0
    iget v3, v0, Landroidx/constraintlayout/solver/d;->k:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 23
    iget-object v3, v0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aget-object v6, v3, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 24
    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->a:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    aget-object v3, v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_11

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-nez v2, :cond_10

    .line 26
    sget-object v6, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_3

    .line 27
    iget-wide v9, v6, Landroidx/constraintlayout/solver/e;->k:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Landroidx/constraintlayout/solver/e;->k:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 28
    :goto_4
    iget v14, v0, Landroidx/constraintlayout/solver/d;->k:I

    if-ge v10, v14, :cond_c

    .line 29
    iget-object v14, v0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aget-object v14, v14, v10

    .line 30
    iget-object v15, v14, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 31
    iget-object v15, v15, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->a:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v15, v1, :cond_4

    goto :goto_8

    .line 32
    :cond_4
    iget-boolean v1, v14, Landroidx/constraintlayout/solver/b;->f:Z

    if-eqz v1, :cond_5

    goto :goto_8

    .line 33
    :cond_5
    iget v1, v14, Landroidx/constraintlayout/solver/b;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_b

    const/4 v1, 0x1

    .line 34
    :goto_5
    iget v15, v0, Landroidx/constraintlayout/solver/d;->j:I

    if-ge v1, v15, :cond_b

    .line 35
    iget-object v15, v0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v15, v15, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v15, v15, v1

    .line 36
    iget-object v5, v14, Landroidx/constraintlayout/solver/b;->e:Landroidx/constraintlayout/solver/b$a;

    invoke-interface {v5, v15}, Landroidx/constraintlayout/solver/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v5

    cmpg-float v16, v5, v4

    if-gtz v16, :cond_6

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    :goto_6
    const/16 v7, 0x9

    if-ge v4, v7, :cond_a

    .line 37
    iget-object v7, v15, Landroidx/constraintlayout/solver/SolverVariable;->h:[F

    aget v7, v7, v4

    div-float/2addr v7, v5

    cmpg-float v8, v7, v6

    if-gez v8, :cond_7

    if-eq v4, v13, :cond_8

    :cond_7
    if-le v4, v13, :cond_9

    :cond_8
    move v12, v1

    move v13, v4

    move v6, v7

    move v11, v10

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x1

    goto :goto_5

    :cond_b
    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x1

    goto :goto_4

    :cond_c
    if-eq v11, v9, :cond_e

    .line 38
    iget-object v1, v0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aget-object v1, v1, v11

    .line 39
    iget-object v4, v1, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v9, v4, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    .line 40
    sget-object v4, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v4, :cond_d

    .line 41
    iget-wide v5, v4, Landroidx/constraintlayout/solver/e;->j:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroidx/constraintlayout/solver/e;->j:J

    .line 42
    :cond_d
    iget-object v4, v0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v4, v4, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v4, v12

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/b;->d(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 43
    iget-object v4, v1, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v11, v4, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    .line 44
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/solver/SolverVariable;->c(Landroidx/constraintlayout/solver/b;)V

    goto :goto_9

    :cond_e
    const/4 v2, 0x1

    .line 45
    :goto_9
    iget v1, v0, Landroidx/constraintlayout/solver/d;->j:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_f

    const/4 v2, 0x1

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_10
    move v1, v3

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method private final b(Landroidx/constraintlayout/solver/b;)V
    .locals 3

    .line 13
    sget-boolean v0, Landroidx/constraintlayout/solver/d;->s:Z

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    iget v1, p0, Landroidx/constraintlayout/solver/d;->k:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 15
    iget-object v2, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v2, v2, Landroidx/constraintlayout/solver/c;->a:Landroidx/constraintlayout/solver/f;

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, Landroidx/constraintlayout/solver/f;->release(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    iget v1, p0, Landroidx/constraintlayout/solver/d;->k:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 17
    iget-object v2, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v2, v2, Landroidx/constraintlayout/solver/c;->b:Landroidx/constraintlayout/solver/f;

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, Landroidx/constraintlayout/solver/f;->release(Ljava/lang/Object;)Z

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    iget v1, p0, Landroidx/constraintlayout/solver/d;->k:I

    aput-object p1, v0, v1

    .line 19
    iget-object v0, p1, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    add-int/lit8 v1, v1, 0x1

    .line 20
    iput v1, p0, Landroidx/constraintlayout/solver/d;->k:I

    .line 21
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->c(Landroidx/constraintlayout/solver/b;)V

    return-void
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/d;->k:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aget-object v1, v1, v0

    .line 3
    iget-object v2, v1, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/solver/b;->b:F

    iput v1, v2, Landroidx/constraintlayout/solver/SolverVariable;->f:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static h()Landroidx/constraintlayout/solver/e;
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    return-object v0
.end method

.method private i()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/d;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/d;->d:I

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/b;

    iput-object v0, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v1, v0, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/d;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, v0, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 4
    iget v0, p0, Landroidx/constraintlayout/solver/d;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/solver/d;->i:[Z

    .line 5
    iput v0, p0, Landroidx/constraintlayout/solver/d;->e:I

    .line 6
    iput v0, p0, Landroidx/constraintlayout/solver/d;->l:I

    .line 7
    sget-object v1, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v1, :cond_0

    .line 8
    iget-wide v2, v1, Landroidx/constraintlayout/solver/e;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/constraintlayout/solver/e;->d:J

    .line 9
    iget-wide v2, v1, Landroidx/constraintlayout/solver/e;->o:J

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/constraintlayout/solver/e;->o:J

    .line 10
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/e;->o:J

    iput-wide v1, v0, Landroidx/constraintlayout/solver/e;->x:J

    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/solver/d;->s:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 3
    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 4
    iget-object v3, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v3, v3, Landroidx/constraintlayout/solver/c;->a:Landroidx/constraintlayout/solver/f;

    invoke-interface {v3, v0}, Landroidx/constraintlayout/solver/f;->release(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 7
    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 8
    iget-object v3, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v3, v3, Landroidx/constraintlayout/solver/c;->b:Landroidx/constraintlayout/solver/f;

    invoke-interface {v3, v0}, Landroidx/constraintlayout/solver/f;->release(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    .line 16
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v0, :cond_0

    .line 17
    iget-wide v1, v0, Landroidx/constraintlayout/solver/e;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/e;->n:J

    .line 18
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/d;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/d;->e:I

    if-lt v0, v1, :cond_1

    .line 19
    invoke-direct {p0}, Landroidx/constraintlayout/solver/d;->i()V

    .line 20
    :cond_1
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->c:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 21
    iget v1, p0, Landroidx/constraintlayout/solver/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/d;->a:I

    .line 22
    iget v2, p0, Landroidx/constraintlayout/solver/d;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/d;->j:I

    .line 23
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 24
    iget-object v2, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v2, v2, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public a(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    .line 27
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v0, :cond_0

    .line 28
    iget-wide v1, v0, Landroidx/constraintlayout/solver/e;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/e;->l:J

    .line 29
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/d;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/d;->e:I

    if-lt v0, v1, :cond_1

    .line 30
    invoke-direct {p0}, Landroidx/constraintlayout/solver/d;->i()V

    .line 31
    :cond_1
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->d:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/d;->a:I

    .line 33
    iget v1, p0, Landroidx/constraintlayout/solver/d;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/d;->j:I

    .line 34
    iput v0, p2, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 35
    iput p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object p1, p1, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object p2, p1, v0

    .line 37
    iget-object p1, p0, Landroidx/constraintlayout/solver/d;->c:Landroidx/constraintlayout/solver/d$a;

    invoke-interface {p1, p2}, Landroidx/constraintlayout/solver/d$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/d;->j:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/solver/d;->e:I

    if-lt v1, v2, :cond_1

    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/solver/d;->i()V

    .line 4
    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5

    .line 5
    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/c;)V

    .line 7
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    move-object v0, p1

    .line 8
    :cond_2
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, Landroidx/constraintlayout/solver/d;->a:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v2, v2, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object p1, v2, p1

    if-nez p1, :cond_5

    .line 9
    :cond_3
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    if-eq p1, v1, :cond_4

    .line 10
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->a()V

    .line 11
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/solver/d;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/solver/d;->a:I

    .line 12
    iget v1, p0, Landroidx/constraintlayout/solver/d;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/d;->j:I

    .line 13
    iput p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 14
    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->a:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->j:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v1, v1, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;
    .locals 3

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    .line 121
    iget-boolean v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->g:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 122
    iget p2, p2, Landroidx/constraintlayout/solver/SolverVariable;->f:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/SolverVariable;->a(Landroidx/constraintlayout/solver/d;F)V

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object v1

    .line 124
    invoke-virtual {v1, p1, p2, p3}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/b;

    if-eq p4, v0, :cond_1

    .line 125
    invoke-virtual {v1, p0, p4}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/d;I)Landroidx/constraintlayout/solver/b;

    .line 126
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    return-object v1
.end method

.method public a(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 2

    .line 127
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-float p2, p2

    .line 128
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/SolverVariable;->a(Landroidx/constraintlayout/solver/d;F)V

    return-void

    :cond_0
    if-eq v0, v1, :cond_3

    .line 129
    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aget-object v0, v1, v0

    .line 130
    iget-boolean v1, v0, Landroidx/constraintlayout/solver/b;->f:Z

    if-eqz v1, :cond_1

    int-to-float p1, p2

    .line 131
    iput p1, v0, Landroidx/constraintlayout/solver/b;->b:F

    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, v0, Landroidx/constraintlayout/solver/b;->e:Landroidx/constraintlayout/solver/b$a;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/b$a;->a()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, v0, Landroidx/constraintlayout/solver/b;->f:Z

    int-to-float p1, p2

    .line 134
    iput p1, v0, Landroidx/constraintlayout/solver/b;->b:F

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/b;->c(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/b;

    .line 137
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/b;->b(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/b;

    .line 140
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    :goto_0
    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    .line 113
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 114
    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/b;

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 115
    invoke-virtual {v10, p0, v1}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/d;I)Landroidx/constraintlayout/solver/b;

    .line 116
    :cond_0
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    .locals 2

    .line 108
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object p4

    .line 109
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->c()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    .line 111
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/b;

    .line 112
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    .locals 7

    .line 117
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 118
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    .line 119
    invoke-virtual {v6, p0, p6}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/d;I)Landroidx/constraintlayout/solver/b;

    .line 120
    :cond_0
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/b;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 55
    iget-wide v3, v0, Landroidx/constraintlayout/solver/e;->f:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/e;->f:J

    .line 56
    iget-boolean v3, p1, Landroidx/constraintlayout/solver/b;->f:Z

    if-eqz v3, :cond_1

    .line 57
    iget-wide v3, v0, Landroidx/constraintlayout/solver/e;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/e;->g:J

    .line 58
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/solver/d;->k:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/solver/d;->l:I

    if-ge v0, v4, :cond_2

    iget v0, p0, Landroidx/constraintlayout/solver/d;->j:I

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/solver/d;->e:I

    if-lt v0, v4, :cond_3

    .line 59
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/solver/d;->i()V

    :cond_3
    const/4 v0, 0x0

    .line 60
    iget-boolean v4, p1, Landroidx/constraintlayout/solver/b;->f:Z

    if-nez v4, :cond_b

    .line 61
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/b;->c(Landroidx/constraintlayout/solver/d;)V

    .line 62
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/b;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 63
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/b;->a()V

    .line 64
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/d;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 65
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->a()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 66
    iput-object v0, p1, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 67
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/d;->b(Landroidx/constraintlayout/solver/b;)V

    .line 68
    iget-object v4, p0, Landroidx/constraintlayout/solver/d;->p:Landroidx/constraintlayout/solver/d$a;

    invoke-interface {v4, p1}, Landroidx/constraintlayout/solver/d$a;->a(Landroidx/constraintlayout/solver/d$a;)V

    .line 69
    iget-object v4, p0, Landroidx/constraintlayout/solver/d;->p:Landroidx/constraintlayout/solver/d$a;

    invoke-direct {p0, v4, v3}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/d$a;Z)I

    .line 70
    iget v4, v0, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    .line 71
    iget-object v4, p1, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v4, v0, :cond_6

    .line 72
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/b;->c(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 73
    sget-object v4, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v4, :cond_5

    .line 74
    iget-wide v5, v4, Landroidx/constraintlayout/solver/e;->j:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Landroidx/constraintlayout/solver/e;->j:J

    .line 75
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/b;->d(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 76
    :cond_6
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/b;->f:Z

    if-nez v0, :cond_7

    .line 77
    iget-object v0, p1, Landroidx/constraintlayout/solver/b;->a:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->c(Landroidx/constraintlayout/solver/b;)V

    .line 78
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/solver/d;->k:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/solver/d;->k:I

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    .line 79
    :cond_9
    :goto_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/b;->b()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    move v0, v3

    :cond_b
    if-nez v0, :cond_c

    .line 80
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/d;->b(Landroidx/constraintlayout/solver/b;)V

    :cond_c
    return-void
.end method

.method a(Landroidx/constraintlayout/solver/b;II)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/solver/d;->a(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p3

    .line 26
    invoke-virtual {p1, p3, p2}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/b;

    return-void
.end method

.method a(Landroidx/constraintlayout/solver/d$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v0, :cond_0

    .line 48
    iget-wide v1, v0, Landroidx/constraintlayout/solver/e;->t:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/e;->t:J

    .line 49
    iget-wide v1, v0, Landroidx/constraintlayout/solver/e;->u:J

    iget v3, p0, Landroidx/constraintlayout/solver/d;->j:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/e;->u:J

    .line 50
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/e;->v:J

    iget v3, p0, Landroidx/constraintlayout/solver/d;->k:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/e;->v:J

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/d;->b(Landroidx/constraintlayout/solver/d$a;)I

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/d$a;Z)I

    .line 53
    invoke-direct {p0}, Landroidx/constraintlayout/solver/d;->g()V

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/e;)V
    .locals 0

    .line 1
    sput-object p1, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 143
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    .line 144
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    .line 145
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 146
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 147
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 148
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    .line 149
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v12

    .line 150
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v13, v4

    .line 152
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v4, p4

    move-object/from16 v17, v3

    int-to-double v3, v4

    move-object/from16 p1, v12

    mul-double v11, v15, v3

    double-to-float v11, v11

    move-object v6, v2

    .line 153
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/solver/b;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/b;

    .line 154
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object v2

    .line 156
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v3

    double-to-float v9, v6

    move-object v4, v2

    move-object/from16 v6, v17

    move-object v7, v1

    move-object/from16 v8, p1

    .line 157
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/b;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/b;

    .line 158
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 11
    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->f:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroidx/constraintlayout/solver/b;
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/solver/d;->s:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v0, v0, Landroidx/constraintlayout/solver/c;->a:Landroidx/constraintlayout/solver/f;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/f;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/constraintlayout/solver/d$b;

    iget-object v3, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    invoke-direct {v0, p0, v3}, Landroidx/constraintlayout/solver/d$b;-><init>(Landroidx/constraintlayout/solver/d;Landroidx/constraintlayout/solver/c;)V

    .line 4
    sget-wide v3, Landroidx/constraintlayout/solver/d;->u:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/solver/d;->u:J

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/b;->d()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v0, v0, Landroidx/constraintlayout/solver/c;->b:Landroidx/constraintlayout/solver/f;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/f;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/b;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Landroidx/constraintlayout/solver/b;

    iget-object v3, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    invoke-direct {v0, v3}, Landroidx/constraintlayout/solver/b;-><init>(Landroidx/constraintlayout/solver/c;)V

    .line 8
    sget-wide v3, Landroidx/constraintlayout/solver/d;->t:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/solver/d;->t:J

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/b;->d()V

    .line 10
    :goto_0
    invoke-static {}, Landroidx/constraintlayout/solver/SolverVariable;->b()V

    return-object v0
.end method

.method public b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 3

    .line 46
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->c()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 48
    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    .line 49
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/b;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 50
    iget-object p1, v0, Landroidx/constraintlayout/solver/b;->e:Landroidx/constraintlayout/solver/b$a;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/solver/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 51
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;II)V

    .line 52
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    return-void
.end method

.method public b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object p4

    .line 54
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->c()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    .line 56
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/solver/b;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/b;

    .line 57
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    return-void
.end method

.method public c()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, v0, Landroidx/constraintlayout/solver/e;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/e;->m:J

    .line 3
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/d;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/d;->e:I

    if-lt v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Landroidx/constraintlayout/solver/d;->i()V

    .line 5
    :cond_1
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->c:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 6
    iget v1, p0, Landroidx/constraintlayout/solver/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/d;->a:I

    .line 7
    iget v2, p0, Landroidx/constraintlayout/solver/d;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/d;->j:I

    .line 8
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->c:I

    .line 9
    iget-object v2, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v2, v2, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 3

    .line 10
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->b()Landroidx/constraintlayout/solver/b;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/d;->c()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->e:I

    .line 13
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/b;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 14
    iget-object p1, v0, Landroidx/constraintlayout/solver/b;->e:Landroidx/constraintlayout/solver/b$a;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/solver/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 15
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;II)V

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/b;)V

    return-void
.end method

.method public d()Landroidx/constraintlayout/solver/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    return-object v0
.end method

.method public e()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-wide v3, v0, Landroidx/constraintlayout/solver/e;->e:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/e;->e:J

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/d;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/d;->h:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->c:Landroidx/constraintlayout/solver/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/d$a;)V

    goto :goto_3

    .line 5
    :cond_2
    :goto_0
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v0, :cond_3

    .line 6
    iget-wide v3, v0, Landroidx/constraintlayout/solver/e;->q:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/e;->q:J

    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_1
    iget v4, p0, Landroidx/constraintlayout/solver/d;->k:I

    if-ge v3, v4, :cond_5

    .line 8
    iget-object v4, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aget-object v4, v4, v3

    .line 9
    iget-boolean v4, v4, Landroidx/constraintlayout/solver/b;->f:Z

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_6

    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/solver/d;->c:Landroidx/constraintlayout/solver/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/d;->a(Landroidx/constraintlayout/solver/d$a;)V

    goto :goto_3

    .line 11
    :cond_6
    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v0, :cond_7

    .line 12
    iget-wide v3, v0, Landroidx/constraintlayout/solver/e;->p:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/e;->p:J

    .line 13
    :cond_7
    invoke-direct {p0}, Landroidx/constraintlayout/solver/d;->g()V

    :goto_3
    return-void
.end method

.method public f()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v3, v2, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 2
    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/SolverVariable;->a()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v2, Landroidx/constraintlayout/solver/c;->c:Landroidx/constraintlayout/solver/f;

    iget-object v2, p0, Landroidx/constraintlayout/solver/d;->n:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, p0, Landroidx/constraintlayout/solver/d;->o:I

    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/solver/f;->a([Ljava/lang/Object;I)V

    .line 5
    iput v0, p0, Landroidx/constraintlayout/solver/d;->o:I

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    iget-object v1, v1, Landroidx/constraintlayout/solver/c;->d:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/solver/d;->a:I

    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->c:Landroidx/constraintlayout/solver/d$a;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/d$a;->clear()V

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Landroidx/constraintlayout/solver/d;->j:I

    const/4 v1, 0x0

    .line 12
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/d;->k:I

    if-ge v1, v2, :cond_3

    .line 13
    iget-object v2, p0, Landroidx/constraintlayout/solver/d;->f:[Landroidx/constraintlayout/solver/b;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroidx/constraintlayout/solver/b;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/solver/d;->j()V

    .line 15
    iput v0, p0, Landroidx/constraintlayout/solver/d;->k:I

    .line 16
    sget-boolean v0, Landroidx/constraintlayout/solver/d;->s:Z

    if-eqz v0, :cond_4

    .line 17
    new-instance v0, Landroidx/constraintlayout/solver/d$b;

    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/solver/d$b;-><init>(Landroidx/constraintlayout/solver/d;Landroidx/constraintlayout/solver/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/d;->p:Landroidx/constraintlayout/solver/d$a;

    goto :goto_2

    .line 18
    :cond_4
    new-instance v0, Landroidx/constraintlayout/solver/b;

    iget-object v1, p0, Landroidx/constraintlayout/solver/d;->m:Landroidx/constraintlayout/solver/c;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/b;-><init>(Landroidx/constraintlayout/solver/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/d;->p:Landroidx/constraintlayout/solver/d$a;

    :goto_2
    return-void
.end method
