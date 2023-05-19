.class public final Lcom/huawei/hms/scankit/p/_d;
.super Ljava/lang/Object;
.source "BarcodeMatrix.java"


# instance fields
.field private final a:[Lcom/huawei/hms/scankit/p/ae;

.field private b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p1, [Lcom/huawei/hms/scankit/p/ae;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/_d;->a:[Lcom/huawei/hms/scankit/p/ae;

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/_d;->a:[Lcom/huawei/hms/scankit/p/ae;

    new-instance v3, Lcom/huawei/hms/scankit/p/ae;

    add-int/lit8 v4, p2, 0x4

    mul-int/lit8 v4, v4, 0x11

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/huawei/hms/scankit/p/ae;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x11

    .line 5
    iput p2, p0, Lcom/huawei/hms/scankit/p/_d;->d:I

    .line 6
    iput p1, p0, Lcom/huawei/hms/scankit/p/_d;->c:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/huawei/hms/scankit/p/_d;->b:I

    return-void
.end method


# virtual methods
.method a()Lcom/huawei/hms/scankit/p/ae;
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/huawei/hms/scankit/p/_d;->b:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/_d;->a:[Lcom/huawei/hms/scankit/p/ae;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v0, v1, v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 4
    throw v0
.end method

.method public a(II)[[B
    .locals 7

    .line 5
    iget v0, p0, Lcom/huawei/hms/scankit/p/_d;->c:I

    mul-int v0, v0, p2

    iget v1, p0, Lcom/huawei/hms/scankit/p/_d;->d:I

    mul-int v1, v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v4, B

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    :goto_0
    if-ge v1, v0, :cond_0

    sub-int v4, v0, v1

    sub-int/2addr v4, v3

    .line 6
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/_d;->a:[Lcom/huawei/hms/scankit/p/ae;

    div-int v6, v1, p2

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Lcom/huawei/hms/scankit/p/ae;->a(I)[B

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method b()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/_d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/hms/scankit/p/_d;->b:I

    return-void
.end method
