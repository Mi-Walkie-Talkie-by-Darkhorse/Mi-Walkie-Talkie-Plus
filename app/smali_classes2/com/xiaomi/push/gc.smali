.class public Lcom/xiaomi/push/gc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/gc$b;,
        Lcom/xiaomi/push/gc$a;,
        Lcom/xiaomi/push/gc$d;,
        Lcom/xiaomi/push/gc$c;
    }
.end annotation


# static fields
.field public static final a:[B


# instance fields
.field private a:B

.field private a:I

.field private a:S

.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/push/gc;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x55t
        0x53t
        0x48t
    .end array-data
.end method

.method protected constructor <init>(BI[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/xiaomi/push/gc;-><init>(SBI[B)V

    return-void
.end method

.method protected constructor <init>(SBI[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/xiaomi/push/gc;->a:S

    iput-short p1, p0, Lcom/xiaomi/push/gc;->a:S

    iput-byte p2, p0, Lcom/xiaomi/push/gc;->a:B

    iput p3, p0, Lcom/xiaomi/push/gc;->a:I

    iput-object p4, p0, Lcom/xiaomi/push/gc;->b:[B

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/gc;)B
    .locals 0

    iget-byte p0, p0, Lcom/xiaomi/push/gc;->a:B

    return p0
.end method

.method static synthetic a(Lcom/xiaomi/push/gc;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/push/gc;->a:I

    return p0
.end method

.method public static a(BI[B)Lcom/xiaomi/push/gc;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/gc;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/push/gc;-><init>(BI[B)V

    return-object v0
.end method

.method public static a(SBI[B)Lcom/xiaomi/push/gc;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/gc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/push/gc;-><init>(SBI[B)V

    return-object v0
.end method

.method public static a([B)Lcom/xiaomi/push/gc;
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/push/gc;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/gc;->a(SBI[B)Lcom/xiaomi/push/gc;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1, p0}, Lcom/xiaomi/push/gc;->a(BI[B)Lcom/xiaomi/push/gc;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Z
    .locals 2

    sget-object v0, Lcom/xiaomi/push/gc;->a:[B

    array-length v1, v0

    invoke-static {v0, p0, v1}, Lcom/xiaomi/push/gc;->a([B[BI)Z

    move-result p0

    return p0
.end method

.method public static a([B[BI)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_3

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method static synthetic a(Lcom/xiaomi/push/gc;)[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/gc;->b:[B

    return-object p0
.end method
