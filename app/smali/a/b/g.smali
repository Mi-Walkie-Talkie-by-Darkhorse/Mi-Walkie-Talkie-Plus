.class public La/b/g;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static d:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field static e:I

.field static f:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field static g:I


# instance fields
.field a:[I

.field b:[Ljava/lang/Object;

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, La/b/c;->a:[I

    iput-object v0, p0, La/b/g;->a:[I

    .line 3
    sget-object v0, La/b/c;->c:[Ljava/lang/Object;

    iput-object v0, p0, La/b/g;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, La/b/g;->c:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 6
    sget-object p1, La/b/c;->a:[I

    iput-object p1, p0, La/b/g;->a:[I

    .line 7
    sget-object p1, La/b/c;->c:[Ljava/lang/Object;

    iput-object p1, p0, La/b/g;->b:[Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, La/b/g;->e(I)V

    :goto_0
    const/4 p1, 0x0

    .line 9
    iput p1, p0, La/b/g;->c:I

    return-void
.end method

.method public constructor <init>(La/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/g<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, La/b/g;-><init>()V

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, La/b/g;->a(La/b/g;)V

    :cond_0
    return-void
.end method

.method private static a([III)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, La/b/c;->a([III)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 8

    .line 17
    const-class v0, La/b/g;

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v1, v7, :cond_2

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    sget v1, La/b/g;->g:I

    if-ge v1, v5, :cond_1

    .line 20
    sget-object v1, La/b/g;->f:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 21
    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_0
    if-lt p0, v3, :cond_0

    .line 22
    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 23
    :cond_0
    sput-object p1, La/b/g;->f:[Ljava/lang/Object;

    .line 24
    sget p0, La/b/g;->g:I

    add-int/2addr p0, v6

    sput p0, La/b/g;->g:I

    .line 25
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 26
    :cond_2
    array-length v1, p0

    const/4 v7, 0x4

    if-ne v1, v7, :cond_5

    .line 27
    monitor-enter v0

    .line 28
    :try_start_1
    sget v1, La/b/g;->e:I

    if-ge v1, v5, :cond_4

    .line 29
    sget-object v1, La/b/g;->d:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 30
    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_1
    if-lt p0, v3, :cond_3

    .line 31
    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 32
    :cond_3
    sput-object p1, La/b/g;->d:[Ljava/lang/Object;

    .line 33
    sget p0, La/b/g;->e:I

    add-int/2addr p0, v6

    sput p0, La/b/g;->e:I

    .line 34
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method private e(I)V
    .locals 5

    .line 1
    const-class v0, La/b/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v4, La/b/g;->f:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 4
    sget-object p1, La/b/g;->f:[Ljava/lang/Object;

    .line 5
    iput-object p1, p0, La/b/g;->b:[Ljava/lang/Object;

    .line 6
    aget-object v4, p1, v2

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, La/b/g;->f:[Ljava/lang/Object;

    .line 7
    aget-object v4, p1, v3

    check-cast v4, [I

    iput-object v4, p0, La/b/g;->a:[I

    .line 8
    aput-object v1, p1, v3

    aput-object v1, p1, v2

    .line 9
    sget p1, La/b/g;->g:I

    sub-int/2addr p1, v3

    sput p1, La/b/g;->g:I

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_3

    .line 12
    monitor-enter v0

    .line 13
    :try_start_1
    sget-object v4, La/b/g;->d:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 14
    sget-object p1, La/b/g;->d:[Ljava/lang/Object;

    .line 15
    iput-object p1, p0, La/b/g;->b:[Ljava/lang/Object;

    .line 16
    aget-object v4, p1, v2

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, La/b/g;->d:[Ljava/lang/Object;

    .line 17
    aget-object v4, p1, v3

    check-cast v4, [I

    iput-object v4, p0, La/b/g;->a:[I

    .line 18
    aput-object v1, p1, v3

    aput-object v1, p1, v2

    .line 19
    sget p1, La/b/g;->e:I

    sub-int/2addr p1, v3

    sput p1, La/b/g;->e:I

    .line 20
    monitor-exit v0

    return-void

    .line 21
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 22
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, La/b/g;->a:[I

    shl-int/2addr p1, v3

    .line 23
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, La/b/g;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()I
    .locals 5

    .line 10
    iget v0, p0, La/b/g;->c:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 11
    :cond_0
    iget-object v1, p0, La/b/g;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, La/b/g;->a([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    .line 12
    :cond_1
    iget-object v2, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 13
    iget-object v3, p0, La/b/g;->a:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 14
    iget-object v3, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    .line 15
    iget-object v0, p0, La/b/g;->a:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int v0, v2

    return v0
.end method

.method public a(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, La/b/g;->a()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, La/b/g;->a(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    return p1
.end method

.method a(Ljava/lang/Object;I)I
    .locals 5

    .line 3
    iget v0, p0, La/b/g;->c:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    iget-object v1, p0, La/b/g;->a:[I

    invoke-static {v1, v0, p2}, La/b/g;->a([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v2, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 6
    iget-object v3, p0, La/b/g;->a:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 7
    iget-object v3, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    .line 8
    iget-object v0, p0, La/b/g;->a:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    .line 9
    iget-object v0, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p1, v2

    return p1
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 46
    iget-object v0, p0, La/b/g;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 47
    aput-object p2, v0, p1

    return-object v1
.end method

.method public a(I)V
    .locals 5

    .line 35
    iget v0, p0, La/b/g;->c:I

    .line 36
    iget-object v1, p0, La/b/g;->a:[I

    array-length v2, v1

    if-ge v2, p1, :cond_1

    .line 37
    iget-object v2, p0, La/b/g;->b:[Ljava/lang/Object;

    .line 38
    invoke-direct {p0, p1}, La/b/g;->e(I)V

    .line 39
    iget p1, p0, La/b/g;->c:I

    if-lez p1, :cond_0

    .line 40
    iget-object p1, p0, La/b/g;->a:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iget-object p1, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    :cond_0
    invoke-static {v1, v2, v0}, La/b/g;->a([I[Ljava/lang/Object;I)V

    .line 43
    :cond_1
    iget p1, p0, La/b/g;->c:I

    if-ne p1, v0, :cond_2

    return-void

    .line 44
    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public a(La/b/g;)V
    .locals 4
    .param p1    # La/b/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/g<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 48
    iget v0, p1, La/b/g;->c:I

    .line 49
    iget v1, p0, La/b/g;->c:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, La/b/g;->a(I)V

    .line 50
    iget v1, p0, La/b/g;->c:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    .line 51
    iget-object v1, p1, La/b/g;->a:[I

    iget-object v3, p0, La/b/g;->a:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object p1, p1, La/b/g;->b:[Ljava/lang/Object;

    iget-object v1, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iput v0, p0, La/b/g;->c:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 54
    invoke-virtual {p1, v2}, La/b/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method b(Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, La/b/g;->c:I

    mul-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, La/b/g;->b:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    if-ge p1, v0, :cond_3

    .line 3
    aget-object v3, v1, p1

    if-nez v3, :cond_0

    shr-int/2addr p1, v2

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 4
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    shr-int/lit8 p1, v3, 0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c(I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    .line 2
    iget v3, p0, La/b/g;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    .line 3
    iget-object p1, p0, La/b/g;->a:[I

    invoke-static {p1, v0, v3}, La/b/g;->a([I[Ljava/lang/Object;I)V

    .line 4
    sget-object p1, La/b/c;->a:[I

    iput-object p1, p0, La/b/g;->a:[I

    .line 5
    sget-object p1, La/b/c;->c:[Ljava/lang/Object;

    iput-object p1, p0, La/b/g;->b:[Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, -0x1

    .line 6
    iget-object v6, p0, La/b/g;->a:[I

    array-length v7, v6

    const/16 v8, 0x8

    if-le v7, v8, :cond_4

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v3, v6, :cond_4

    if-le v3, v8, :cond_1

    shr-int/lit8 v6, v3, 0x1

    add-int v8, v3, v6

    .line 7
    :cond_1
    iget-object v6, p0, La/b/g;->a:[I

    .line 8
    iget-object v7, p0, La/b/g;->b:[Ljava/lang/Object;

    .line 9
    invoke-direct {p0, v8}, La/b/g;->e(I)V

    .line 10
    iget v8, p0, La/b/g;->c:I

    if-ne v3, v8, :cond_3

    if-lez p1, :cond_2

    .line 11
    iget-object v8, p0, La/b/g;->a:[I

    invoke-static {v6, v4, v8, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v8, p0, La/b/g;->b:[Ljava/lang/Object;

    invoke-static {v7, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-ge p1, v0, :cond_6

    add-int/lit8 v4, p1, 0x1

    .line 13
    iget-object v8, p0, La/b/g;->a:[I

    sub-int v9, v0, p1

    invoke-static {v6, v4, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 p1, v4, 0x1

    .line 14
    iget-object v4, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v5, v9, 0x1

    invoke-static {v7, p1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 15
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_4
    if-ge p1, v0, :cond_5

    .line 16
    iget-object v4, p0, La/b/g;->a:[I

    add-int/lit8 v6, p1, 0x1

    sub-int v7, v0, p1

    invoke-static {v4, v6, v4, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object p1, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v6, 0x1

    shl-int/lit8 v6, v7, 0x1

    invoke-static {p1, v4, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    :cond_5
    iget-object p1, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v1, v0, 0x1

    const/4 v4, 0x0

    aput-object v4, p1, v1

    add-int/2addr v1, v5

    .line 19
    aput-object v4, p1, v1

    :cond_6
    :goto_0
    move v4, v0

    .line 20
    :goto_1
    iget p1, p0, La/b/g;->c:I

    if-ne v3, p1, :cond_7

    .line 21
    iput v4, p0, La/b/g;->c:I

    return-object v2

    .line 22
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 4

    .line 1
    iget v0, p0, La/b/g;->c:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, La/b/g;->a:[I

    .line 3
    iget-object v2, p0, La/b/g;->b:[Ljava/lang/Object;

    .line 4
    sget-object v3, La/b/c;->a:[I

    iput-object v3, p0, La/b/g;->a:[I

    .line 5
    sget-object v3, La/b/c;->c:[Ljava/lang/Object;

    iput-object v3, p0, La/b/g;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    iput v3, p0, La/b/g;->c:I

    .line 7
    invoke-static {v1, v2, v0}, La/b/g;->a([I[Ljava/lang/Object;I)V

    .line 8
    :cond_0
    iget v0, p0, La/b/g;->c:I

    if-gtz v0, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, La/b/g;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/b/g;->b(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, La/b/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    check-cast p1, La/b/g;

    .line 3
    invoke-virtual {p0}, La/b/g;->size()I

    move-result v1

    invoke-virtual {p1}, La/b/g;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    :try_start_0
    iget v3, p0, La/b/g;->c:I

    if-ge v1, v3, :cond_5

    .line 5
    invoke-virtual {p0, v1}, La/b/g;->b(I)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v1}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-virtual {p1, v3}, La/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    if-nez v5, :cond_2

    .line 8
    invoke-virtual {p1, v3}, La/b/g;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    return v2

    .line 9
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0

    :catch_0
    return v2

    .line 10
    :cond_6
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 11
    check-cast p1, Ljava/util/Map;

    .line 12
    invoke-virtual {p0}, La/b/g;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    const/4 v1, 0x0

    .line 13
    :goto_1
    :try_start_1
    iget v3, p0, La/b/g;->c:I

    if-ge v1, v3, :cond_b

    .line 14
    invoke-virtual {p0, v1}, La/b/g;->b(I)Ljava/lang/Object;

    move-result-object v3

    .line 15
    invoke-virtual {p0, v1}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v4

    .line 16
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_9

    if-nez v5, :cond_8

    .line 17
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    return v2

    .line 18
    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_a

    return v2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    return v0

    :catch_1
    :cond_c
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, La/b/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, La/b/g;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object p2, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p2, p2, p1

    :cond_0
    return-object p2
.end method

.method public hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, La/b/g;->a:[I

    .line 2
    iget-object v1, p0, La/b/g;->b:[Ljava/lang/Object;

    .line 3
    iget v2, p0, La/b/g;->c:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 4
    aget-object v7, v1, v3

    .line 5
    aget v8, v0, v5

    if-nez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return v6
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, La/b/g;->c:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    iget v0, p0, La/b/g;->c:I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, La/b/g;->a()I

    move-result v2

    const/4 v3, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 4
    invoke-virtual {p0, p1, v2}, La/b/g;->a(Ljava/lang/Object;I)I

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_0
    if-ltz v2, :cond_1

    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 5
    iget-object v0, p0, La/b/g;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 6
    aput-object p2, v0, p1

    return-object v1

    :cond_1
    not-int v2, v2

    .line 7
    iget-object v4, p0, La/b/g;->a:[I

    array-length v4, v4

    if-lt v0, v4, :cond_6

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v0, v5, :cond_2

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_1

    :cond_2
    if-lt v0, v4, :cond_3

    const/16 v4, 0x8

    .line 8
    :cond_3
    :goto_1
    iget-object v5, p0, La/b/g;->a:[I

    .line 9
    iget-object v6, p0, La/b/g;->b:[Ljava/lang/Object;

    .line 10
    invoke-direct {p0, v4}, La/b/g;->e(I)V

    .line 11
    iget v4, p0, La/b/g;->c:I

    if-ne v0, v4, :cond_5

    .line 12
    iget-object v4, p0, La/b/g;->a:[I

    array-length v7, v4

    if-lez v7, :cond_4

    .line 13
    array-length v7, v5

    invoke-static {v5, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v4, p0, La/b/g;->b:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :cond_4
    invoke-static {v5, v6, v0}, La/b/g;->a([I[Ljava/lang/Object;I)V

    goto :goto_2

    .line 16
    :cond_5
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-ge v2, v0, :cond_7

    .line 17
    iget-object v1, p0, La/b/g;->a:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v1, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, La/b/g;->c:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    :cond_7
    iget v1, p0, La/b/g;->c:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, La/b/g;->a:[I

    array-length v4, v0

    if-ge v2, v4, :cond_8

    .line 20
    aput v3, v0, v2

    .line 21
    iget-object v0, p0, La/b/g;->b:[Ljava/lang/Object;

    shl-int/lit8 v2, v2, 0x1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 22
    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    .line 23
    iput v1, p0, La/b/g;->c:I

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, La/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, La/b/g;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, La/b/g;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, La/b/g;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, La/b/g;->c(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, La/b/g;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, La/b/g;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, La/b/g;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p3}, La/b/g;->a(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, La/b/g;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, La/b/g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, La/b/g;->c:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, La/b/g;->c:I

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_1

    const-string v2, ", "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, La/b/g;->b(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-eq v2, p0, :cond_2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v2, 0x3d

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0, v1}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
