.class public final Lcom/huawei/hms/scankit/p/_b;
.super Lcom/huawei/hms/scankit/aiscan/common/z;
.source "AlignmentPattern.java"


# instance fields
.field private final e:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    .line 2
    iput p3, p0, Lcom/huawei/hms/scankit/p/_b;->e:F

    return-void
.end method


# virtual methods
.method a(FFF)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result p2

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_1

    .line 2
    iget p2, p0, Lcom/huawei/hms/scankit/p/_b;->e:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-lez p2, :cond_0

    .line 3
    iget p2, p0, Lcom/huawei/hms/scankit/p/_b;->e:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method b(FFF)Lcom/huawei/hms/scankit/p/_b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    add-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    add-float/2addr v1, p1

    div-float/2addr v1, p2

    .line 3
    iget p1, p0, Lcom/huawei/hms/scankit/p/_b;->e:F

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    .line 4
    new-instance p2, Lcom/huawei/hms/scankit/p/_b;

    invoke-direct {p2, v0, v1, p1}, Lcom/huawei/hms/scankit/p/_b;-><init>(FFF)V

    return-object p2
.end method
