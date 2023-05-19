.class public Lcom/huawei/hms/framework/common/CheckParamUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckParamUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static checkNumParam(IIIILjava/lang/String;)I
    .locals 0

    if-gt p0, p2, :cond_1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CheckParamUtils"

    invoke-static {p1, p4}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return p0

    :cond_1
    :goto_0
    return p3
.end method

.method public static checkNumParam(JJJJLjava/lang/String;)J
    .locals 1

    cmp-long v0, p0, p4

    if-gtz v0, :cond_1

    cmp-long p4, p0, p2

    if-gez p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "CheckParamUtils"

    invoke-static {p2, p8}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-wide p0

    :cond_1
    :goto_0
    return-wide p6
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 5

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long/2addr p0, p2

    cmp-long p2, p0, p4

    if-ltz p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method
