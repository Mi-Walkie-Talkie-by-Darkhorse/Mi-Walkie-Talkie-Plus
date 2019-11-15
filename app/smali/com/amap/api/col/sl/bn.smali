.class public final Lcom/amap/api/col/sl/bn;
.super Ljava/lang/Object;
.source "AESMD5Util.java"


# static fields
.field private static a:[B

.field private static b:[B

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/co;->a:[B

    sput-object v0, Lcom/amap/api/col/sl/bn;->a:[B

    sget-object v0, Lcom/amap/api/col/sl/co;->b:[B

    sput-object v0, Lcom/amap/api/col/sl/bn;->b:[B

    const/4 v0, 0x6

    sput v0, Lcom/amap/api/col/sl/bn;->c:I

    return-void
.end method

.method public static a([B)[B
    .locals 2

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/bn;->a:[B

    sget-object v1, Lcom/amap/api/col/sl/bn;->b:[B

    invoke-static {v0, p0, v1}, Lcom/amap/api/col/sl/bv;->b([B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 2

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/bn;->a:[B

    sget-object v1, Lcom/amap/api/col/sl/bn;->b:[B

    invoke-static {v0, p0, v1}, Lcom/amap/api/col/sl/bv;->a([B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method
