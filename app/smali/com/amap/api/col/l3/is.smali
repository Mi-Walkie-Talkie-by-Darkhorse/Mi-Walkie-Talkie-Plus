.class public final Lcom/amap/api/col/l3/is;
.super Lcom/amap/api/col/l3/iu;
.source "StatisticsHeaderDataStrategy.java"


# static fields
.field public static a:I = 0xd

.field public static b:I = 0x6


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/iu;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/amap/api/col/l3/iu;-><init>(Lcom/amap/api/col/l3/iu;)V

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/is;->e:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;)[B
    .locals 5

    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 6
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1.2."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/amap/api/col/l3/is;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/amap/api/col/l3/is;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string v3, "Android"

    .line 7
    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 11
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 12
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 13
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 16
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amap/api/col/l3/gi;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [B

    aput-byte v1, p0, v1

    .line 18
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    const-string v1, "sm"

    const-string v3, "gh"

    .line 22
    invoke-static {p0, v1, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 23
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    return-object v2

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :goto_1
    throw p0
.end method


# virtual methods
.method protected final a([B)[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/is;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/is;->a(Landroid/content/Context;)[B

    move-result-object v0

    .line 2
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
