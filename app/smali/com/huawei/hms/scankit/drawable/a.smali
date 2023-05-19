.class public Lcom/huawei/hms/scankit/drawable/a;
.super Ljava/lang/Object;
.source "CubicBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final a:Ljava/math/BigDecimal;

.field private static final b:Ljava/math/BigDecimal;

.field private static final c:F


# instance fields
.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/scankit/drawable/a;->a:Ljava/math/BigDecimal;

    .line 2
    new-instance v1, Ljava/math/BigDecimal;

    const-wide/16 v2, 0xfa0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hms/scankit/drawable/a;->b:Ljava/math/BigDecimal;

    const/16 v2, 0x14

    const/4 v3, 0x4

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    sput v0, Lcom/huawei/hms/scankit/drawable/a;->c:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/huawei/hms/scankit/drawable/a;->d:F

    .line 3
    iput v0, p0, Lcom/huawei/hms/scankit/drawable/a;->e:F

    .line 4
    iput v0, p0, Lcom/huawei/hms/scankit/drawable/a;->f:F

    .line 5
    iput v0, p0, Lcom/huawei/hms/scankit/drawable/a;->g:F

    .line 6
    iput p1, p0, Lcom/huawei/hms/scankit/drawable/a;->d:F

    .line 7
    iput p2, p0, Lcom/huawei/hms/scankit/drawable/a;->e:F

    .line 8
    iput p3, p0, Lcom/huawei/hms/scankit/drawable/a;->f:F

    .line 9
    iput p4, p0, Lcom/huawei/hms/scankit/drawable/a;->g:F

    return-void
.end method

.method private a(F)J
    .locals 9

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xfa0

    :goto_0
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    add-long v4, v0, v2

    const/4 v6, 0x1

    ushr-long/2addr v4, v6

    .line 1
    sget v6, Lcom/huawei/hms/scankit/drawable/a;->c:F

    long-to-float v7, v4

    mul-float v6, v6, v7

    invoke-direct {p0, v6}, Lcom/huawei/hms/scankit/drawable/a;->b(F)F

    move-result v6

    const-wide/16 v7, 0x1

    cmpg-float v6, v6, p1

    if-gez v6, :cond_0

    add-long v0, v4, v7

    goto :goto_0

    :cond_0
    if-gtz v6, :cond_1

    return-wide v4

    :cond_1
    sub-long v2, v4, v7

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CubicBezierInterpolator"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  mControlPoint1x = "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/drawable/a;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mControlPoint1y = "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/drawable/a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mControlPoint2x = "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/drawable/a;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mControlPoint2y = "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/drawable/a;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, v0

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    .line 1
    iget v2, p0, Lcom/huawei/hms/scankit/drawable/a;->d:F

    mul-float v0, v0, v2

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    iget v2, p0, Lcom/huawei/hms/scankit/drawable/a;->f:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    mul-float v1, p1, p1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private c(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, v0

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    .line 1
    iget v2, p0, Lcom/huawei/hms/scankit/drawable/a;->e:F

    mul-float v0, v0, v2

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    iget v2, p0, Lcom/huawei/hms/scankit/drawable/a;->g:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    mul-float v1, p1, p1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 1
    sget v0, Lcom/huawei/hms/scankit/drawable/a;->c:F

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/drawable/a;->a(F)J

    move-result-wide v1

    long-to-float p1, v1

    mul-float v0, v0, p1

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/drawable/a;->c(F)F

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/drawable/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
