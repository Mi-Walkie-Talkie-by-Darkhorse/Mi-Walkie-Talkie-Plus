.class final Lcom/huawei/hms/scankit/p/Dd;
.super Lcom/huawei/hms/scankit/p/Kd;
.source "DataMatrixSymbolInfo144.java"


# direct methods
.method constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/16 v2, 0x616

    const/16 v3, 0x26c

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/16 v6, 0x24

    const/4 v7, -0x1

    const/16 v8, 0x3e

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/p/Kd;-><init>(ZIIIIIII)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    const/16 p1, 0x9c

    goto :goto_0

    :cond_0
    const/16 p1, 0x9b

    :goto_0
    return p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
