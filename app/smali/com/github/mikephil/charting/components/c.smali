.class public Lcom/github/mikephil/charting/components/c;
.super Lcom/github/mikephil/charting/components/b;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lb/a/a/a/g/e;

.field private i:Landroid/graphics/Paint$Align;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/b;-><init>()V

    const-string v0, "Description Label"

    iput-object v0, p0, Lcom/github/mikephil/charting/components/c;->g:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/c;->i:Landroid/graphics/Paint$Align;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->e:F

    return-void
.end method


# virtual methods
.method public g()Lb/a/a/a/g/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/c;->h:Lb/a/a/a/g/e;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/c;->i:Landroid/graphics/Paint$Align;

    return-object v0
.end method
