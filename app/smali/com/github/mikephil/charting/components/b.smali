.class public abstract Lcom/github/mikephil/charting/components/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field protected b:F

.field protected c:F

.field protected d:Landroid/graphics/Typeface;

.field protected e:F

.field protected f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/b;->a:Z

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->b:F

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->c:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/b;->d:Landroid/graphics/Typeface;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->e:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/b;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/components/b;->f:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/b;->a:Z

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/b;->e:F

    return v0
.end method

.method public c()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/b;->d:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/b;->b:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/b;->c:F

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/b;->a:Z

    return v0
.end method
