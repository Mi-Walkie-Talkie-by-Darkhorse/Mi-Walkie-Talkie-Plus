.class public final Lcom/google/protobuf/micro/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/protobuf/micro/a;


# instance fields
.field private final b:[B

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/micro/a;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/micro/a;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/micro/a;->c:I

    iput-object p1, p0, Lcom/google/protobuf/micro/a;->b:[B

    return-void
.end method

.method public static a([B)Lcom/google/protobuf/micro/a;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/micro/a;->a([BII)Lcom/google/protobuf/micro/a;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/google/protobuf/micro/a;
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/google/protobuf/micro/a;

    invoke-direct {v1, v0}, Lcom/google/protobuf/micro/a;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/micro/a;->b:[B

    array-length v0, v0

    return v0
.end method

.method public b()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/protobuf/micro/a;->b:[B

    array-length v0, v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/google/protobuf/micro/a;->b:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/micro/a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/protobuf/micro/a;

    iget-object v2, p0, Lcom/google/protobuf/micro/a;->b:[B

    array-length v3, v2

    iget-object v2, p1, Lcom/google/protobuf/micro/a;->b:[B

    array-length v2, v2

    if-eq v3, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/google/protobuf/micro/a;->b:[B

    iget-object v5, p1, Lcom/google/protobuf/micro/a;->b:[B

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    if-eq v6, v7, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/micro/a;->c:I

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/google/protobuf/micro/a;->b:[B

    iget-object v0, p0, Lcom/google/protobuf/micro/a;->b:[B

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, p0, Lcom/google/protobuf/micro/a;->c:I

    :cond_2
    return v0
.end method
