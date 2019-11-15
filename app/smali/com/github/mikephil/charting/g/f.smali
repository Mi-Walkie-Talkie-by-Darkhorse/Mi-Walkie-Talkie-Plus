.class public Lcom/github/mikephil/charting/g/f;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/g/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/g/f$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:I

.field private d:[Ljava/lang/Object;

.field private e:I

.field private f:Lcom/github/mikephil/charting/g/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/github/mikephil/charting/g/f;->a:I

    return-void
.end method

.method private constructor <init>(ILcom/github/mikephil/charting/g/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object Pool must be instantiated with a capacity greater than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/g/f;->c:I

    iget v0, p0, Lcom/github/mikephil/charting/g/f;->c:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/github/mikephil/charting/g/f;->d:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/g/f;->e:I

    iput-object p2, p0, Lcom/github/mikephil/charting/g/f;->f:Lcom/github/mikephil/charting/g/f$a;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/g/f;->g:F

    invoke-direct {p0}, Lcom/github/mikephil/charting/g/f;->b()V

    return-void
.end method

.method public static declared-synchronized a(ILcom/github/mikephil/charting/g/f$a;)Lcom/github/mikephil/charting/g/f;
    .locals 3

    const-class v1, Lcom/github/mikephil/charting/g/f;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/github/mikephil/charting/g/f;

    invoke-direct {v0, p0, p1}, Lcom/github/mikephil/charting/g/f;-><init>(ILcom/github/mikephil/charting/g/f$a;)V

    sget v2, Lcom/github/mikephil/charting/g/f;->a:I

    iput v2, v0, Lcom/github/mikephil/charting/g/f;->b:I

    sget v2, Lcom/github/mikephil/charting/g/f;->a:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/github/mikephil/charting/g/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/g/f;->g:F

    invoke-direct {p0, v0}, Lcom/github/mikephil/charting/g/f;->b(F)V

    return-void
.end method

.method private b(F)V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/github/mikephil/charting/g/f;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    if-ge v1, v0, :cond_0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/g/f;->d:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/mikephil/charting/g/f;->f:Lcom/github/mikephil/charting/g/f$a;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/f$a;->a()Lcom/github/mikephil/charting/g/f$a;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/g/f;->c:I

    if-le v1, v0, :cond_2

    iget v0, p0, Lcom/github/mikephil/charting/g/f;->c:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/g/f;->e:I

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 4

    iget v1, p0, Lcom/github/mikephil/charting/g/f;->c:I

    iget v0, p0, Lcom/github/mikephil/charting/g/f;->c:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/github/mikephil/charting/g/f;->c:I

    iget v0, p0, Lcom/github/mikephil/charting/g/f;->c:I

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/g/f;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/github/mikephil/charting/g/f;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/github/mikephil/charting/g/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/github/mikephil/charting/g/f;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/g/f;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/github/mikephil/charting/g/f;->b()V

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/g/f;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/github/mikephil/charting/g/f;->e:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/github/mikephil/charting/g/f$a;

    sget v1, Lcom/github/mikephil/charting/g/f$a;->d:I

    iput v1, v0, Lcom/github/mikephil/charting/g/f$a;->e:I

    iget v1, p0, Lcom/github/mikephil/charting/g/f;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/mikephil/charting/g/f;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/github/mikephil/charting/g/f;->g:F

    return-void

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/github/mikephil/charting/g/f$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/github/mikephil/charting/g/f$a;->e:I

    sget v1, Lcom/github/mikephil/charting/g/f$a;->d:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/github/mikephil/charting/g/f$a;->e:I

    iget v1, p0, Lcom/github/mikephil/charting/g/f;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The object passed is already stored in this pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The object to recycle already belongs to poolId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/github/mikephil/charting/g/f$a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Object cannot belong to two different pool instances simultaneously!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/g/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/g/f;->e:I

    iget v0, p0, Lcom/github/mikephil/charting/g/f;->e:I

    iget-object v1, p0, Lcom/github/mikephil/charting/g/f;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/github/mikephil/charting/g/f;->c()V

    :cond_2
    iget v0, p0, Lcom/github/mikephil/charting/g/f;->b:I

    iput v0, p1, Lcom/github/mikephil/charting/g/f$a;->e:I

    iget-object v0, p0, Lcom/github/mikephil/charting/g/f;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/github/mikephil/charting/g/f;->e:I

    aput-object p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
