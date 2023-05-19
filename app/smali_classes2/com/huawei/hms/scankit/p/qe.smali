.class public Lcom/huawei/hms/scankit/p/qe;
.super Ljava/lang/Object;
.source "Particle.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:I

.field private e:F

.field private f:F

.field private g:I

.field private h:J

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:J

.field private q:I

.field private r:Lcom/huawei/hms/scankit/p/te;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/huawei/hms/scankit/p/qe;->a:F

    const/16 v1, 0xff

    .line 3
    iput v1, p0, Lcom/huawei/hms/scankit/p/qe;->d:I

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lcom/huawei/hms/scankit/p/qe;->e:F

    .line 5
    iput v2, p0, Lcom/huawei/hms/scankit/p/qe;->f:F

    .line 6
    iput v1, p0, Lcom/huawei/hms/scankit/p/qe;->g:I

    .line 7
    iput v0, p0, Lcom/huawei/hms/scankit/p/qe;->k:F

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/huawei/hms/scankit/p/qe;->q:I

    .line 9
    iput v0, p0, Lcom/huawei/hms/scankit/p/qe;->k:F

    .line 10
    iput v1, p0, Lcom/huawei/hms/scankit/p/qe;->g:I

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huawei/hms/scankit/p/qe;->n:I

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/huawei/hms/scankit/p/qe;->o:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->g:I

    return v0
.end method

.method public a(F)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/huawei/hms/scankit/p/qe;->a:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/huawei/hms/scankit/p/qe;->g:I

    return-void
.end method

.method public a(JFFJLcom/huawei/hms/scankit/p/te;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->n:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iput p3, p0, Lcom/huawei/hms/scankit/p/qe;->l:F

    .line 2
    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->o:I

    int-to-float v0, v0

    sub-float/2addr p4, v0

    iput p4, p0, Lcom/huawei/hms/scankit/p/qe;->m:F

    .line 3
    iput p3, p0, Lcom/huawei/hms/scankit/p/qe;->i:F

    .line 4
    iput p4, p0, Lcom/huawei/hms/scankit/p/qe;->j:F

    .line 5
    iput-wide p1, p0, Lcom/huawei/hms/scankit/p/qe;->p:J

    .line 6
    iput-wide p5, p0, Lcom/huawei/hms/scankit/p/qe;->h:J

    .line 7
    iput-object p7, p0, Lcom/huawei/hms/scankit/p/qe;->r:Lcom/huawei/hms/scankit/p/te;

    return-void
.end method

.method public a(J)Z
    .locals 5

    .line 8
    iget-wide v0, p0, Lcom/huawei/hms/scankit/p/qe;->h:J

    sub-long/2addr p1, v0

    .line 9
    iget-wide v0, p0, Lcom/huawei/hms/scankit/p/qe;->p:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    mul-long v0, p1, p1

    .line 10
    iget v2, p0, Lcom/huawei/hms/scankit/p/qe;->l:F

    iget v3, p0, Lcom/huawei/hms/scankit/p/qe;->e:F

    long-to-float v4, p1

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/huawei/hms/scankit/p/qe;->b:F

    long-to-float v0, v0

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/huawei/hms/scankit/p/qe;->i:F

    .line 11
    iget v1, p0, Lcom/huawei/hms/scankit/p/qe;->m:F

    iget v2, p0, Lcom/huawei/hms/scankit/p/qe;->f:F

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/huawei/hms/scankit/p/qe;->c:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/huawei/hms/scankit/p/qe;->j:F

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/qe;->r:Lcom/huawei/hms/scankit/p/te;

    invoke-interface {v0, p0, p1, p2}, Lcom/huawei/hms/scankit/p/te;->a(Lcom/huawei/hms/scankit/p/qe;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->q:I

    return v0
.end method

.method public b(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/scankit/p/qe;->k:F

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/huawei/hms/scankit/p/qe;->q:I

    return-void
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->i:F

    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->j:F

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->d:I

    return v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->k:F

    return v0
.end method
