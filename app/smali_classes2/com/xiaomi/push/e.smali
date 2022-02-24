.class public abstract Lcom/xiaomi/push/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/e;
.end method

.method public a([B)Lcom/xiaomi/push/e;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/push/e;->a([BII)Lcom/xiaomi/push/e;

    move-result-object p1

    return-object p1
.end method

.method public a([BII)Lcom/xiaomi/push/e;
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/xiaomi/push/b;->a([BII)Lcom/xiaomi/push/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/e;->a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/b;->a(I)V
    :try_end_0
    .catch Lcom/xiaomi/push/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    throw p1
.end method

.method public abstract a(Lcom/xiaomi/push/c;)V
.end method

.method public a([BII)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/xiaomi/push/c;->a([BII)Lcom/xiaomi/push/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/e;->a(Lcom/xiaomi/push/c;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/c;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Lcom/xiaomi/push/b;I)Z
    .locals 0

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/b;->a(I)Z

    move-result p1

    return p1
.end method

.method public a()[B
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/e;->b()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaomi/push/e;->a([BII)V

    return-object v1
.end method

.method public abstract b()I
.end method
