.class public final Lcom/xiaomi/push/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/xiaomi/push/a;


# instance fields
.field private volatile a:I

.field private final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/push/a;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/xiaomi/push/a;-><init>([B)V

    sput-object v0, Lcom/xiaomi/push/a;->a:Lcom/xiaomi/push/a;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/a;->a:I

    iput-object p1, p0, Lcom/xiaomi/push/a;->a:[B

    return-void
.end method

.method public static a([B)Lcom/xiaomi/push/a;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/xiaomi/push/a;->a([BII)Lcom/xiaomi/push/a;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/xiaomi/push/a;
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/xiaomi/push/a;

    invoke-direct {p0, v0}, Lcom/xiaomi/push/a;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a;->a:[B

    array-length v0, v0

    return v0
.end method

.method public a()[B
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/a;->a:[B

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/xiaomi/push/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/xiaomi/push/a;

    iget-object v1, p0, Lcom/xiaomi/push/a;->a:[B

    array-length v3, v1

    iget-object p1, p1, Lcom/xiaomi/push/a;->a:[B

    array-length v4, p1

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-byte v5, v1, v4

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/xiaomi/push/a;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/a;->a:[B

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    aget-byte v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput v0, p0, Lcom/xiaomi/push/a;->a:I

    :cond_2
    return v0
.end method
