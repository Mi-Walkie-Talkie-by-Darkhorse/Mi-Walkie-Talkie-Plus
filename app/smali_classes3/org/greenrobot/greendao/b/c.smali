.class public final Lorg/greenrobot/greendao/b/c;
.super Ljava/lang/Object;
.source "LongHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[Lorg/greenrobot/greendao/b/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/greenrobot/greendao/b/c$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/b/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/greenrobot/greendao/b/c;->b:I

    mul-int/lit8 v0, p1, 0x4

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/greenrobot/greendao/b/c;->c:I

    new-array v0, p1, [Lorg/greenrobot/greendao/b/c$a;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/c;->a:[Lorg/greenrobot/greendao/b/c$a;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    xor-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/greenrobot/greendao/b/c;->b:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lorg/greenrobot/greendao/b/c;->a:[Lorg/greenrobot/greendao/b/c$a;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lorg/greenrobot/greendao/b/c$a;->a:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/greenrobot/greendao/b/c$a;->b:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/greenrobot/greendao/b/c$a;->c:Lorg/greenrobot/greendao/b/c$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)TT;"
        }
    .end annotation

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    xor-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/greenrobot/greendao/b/c;->b:I

    rem-int v2, v0, v1

    iget-object v0, p0, Lorg/greenrobot/greendao/b/c;->a:[Lorg/greenrobot/greendao/b/c$a;

    aget-object v0, v0, v2

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-wide v4, v1, Lorg/greenrobot/greendao/b/c$a;->a:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    iget-object v0, v1, Lorg/greenrobot/greendao/b/c$a;->b:Ljava/lang/Object;

    iput-object p3, v1, Lorg/greenrobot/greendao/b/c$a;->b:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, v1, Lorg/greenrobot/greendao/b/c$a;->c:Lorg/greenrobot/greendao/b/c$a;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/greenrobot/greendao/b/c;->a:[Lorg/greenrobot/greendao/b/c$a;

    new-instance v3, Lorg/greenrobot/greendao/b/c$a;

    invoke-direct {v3, p1, p2, p3, v0}, Lorg/greenrobot/greendao/b/c$a;-><init>(JLjava/lang/Object;Lorg/greenrobot/greendao/b/c$a;)V

    aput-object v3, v1, v2

    iget v0, p0, Lorg/greenrobot/greendao/b/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/greenrobot/greendao/b/c;->d:I

    iget v0, p0, Lorg/greenrobot/greendao/b/c;->d:I

    iget v1, p0, Lorg/greenrobot/greendao/b/c;->c:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/greenrobot/greendao/b/c;->b:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/b/c;->a(I)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/greenrobot/greendao/b/c;->d:I

    iget-object v0, p0, Lorg/greenrobot/greendao/b/c;->a:[Lorg/greenrobot/greendao/b/c$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 10

    new-array v3, p1, [Lorg/greenrobot/greendao/b/c$a;

    iget-object v0, p0, Lorg/greenrobot/greendao/b/c;->a:[Lorg/greenrobot/greendao/b/c$a;

    array-length v4, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/b/c;->a:[Lorg/greenrobot/greendao/b/c$a;

    aget-object v0, v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-wide v6, v0, Lorg/greenrobot/greendao/b/c$a;->a:J

    const/16 v1, 0x20

    ushr-long v8, v6, v1

    long-to-int v1, v8

    long-to-int v5, v6

    xor-int/2addr v1, v5

    const v5, 0x7fffffff

    and-int/2addr v1, v5

    rem-int v5, v1, p1

    iget-object v1, v0, Lorg/greenrobot/greendao/b/c$a;->c:Lorg/greenrobot/greendao/b/c$a;

    aget-object v6, v3, v5

    iput-object v6, v0, Lorg/greenrobot/greendao/b/c$a;->c:Lorg/greenrobot/greendao/b/c$a;

    aput-object v0, v3, v5

    move-object v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lorg/greenrobot/greendao/b/c;->a:[Lorg/greenrobot/greendao/b/c$a;

    iput p1, p0, Lorg/greenrobot/greendao/b/c;->b:I

    mul-int/lit8 v0, p1, 0x4

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/greenrobot/greendao/b/c;->c:I

    return-void
.end method

.method public b(J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    long-to-int v2, p1

    xor-int/2addr v1, v2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iget v2, p0, Lorg/greenrobot/greendao/b/c;->b:I

    rem-int v4, v1, v2

    iget-object v1, p0, Lorg/greenrobot/greendao/b/c;->a:[Lorg/greenrobot/greendao/b/c$a;

    aget-object v1, v1, v4

    move-object v3, v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/greenrobot/greendao/b/c$a;->c:Lorg/greenrobot/greendao/b/c$a;

    iget-wide v6, v1, Lorg/greenrobot/greendao/b/c$a;->a:J

    cmp-long v5, v6, p1

    if-nez v5, :cond_2

    if-nez v3, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/b/c;->a:[Lorg/greenrobot/greendao/b/c$a;

    aput-object v2, v0, v4

    :goto_1
    iget v0, p0, Lorg/greenrobot/greendao/b/c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/greenrobot/greendao/b/c;->d:I

    iget-object v0, v1, Lorg/greenrobot/greendao/b/c$a;->b:Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    iput-object v2, v3, Lorg/greenrobot/greendao/b/c$a;->c:Lorg/greenrobot/greendao/b/c$a;

    goto :goto_1

    :cond_2
    move-object v3, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    mul-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/b/c;->a(I)V

    return-void
.end method
