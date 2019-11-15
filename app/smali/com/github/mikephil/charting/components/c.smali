.class public Lcom/github/mikephil/charting/components/c;
.super Lcom/github/mikephil/charting/components/b;
.source "Description.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/github/mikephil/charting/g/e;

.field private c:Landroid/graphics/Paint$Align;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/b;-><init>()V

    const-string v0, "Description Label"

    iput-object v0, p0, Lcom/github/mikephil/charting/components/c;->a:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/c;->c:Landroid/graphics/Paint$Align;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/c;->z:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/github/mikephil/charting/g/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/c;->b:Lcom/github/mikephil/charting/g/e;

    return-object v0
.end method

.method public c()Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/c;->c:Landroid/graphics/Paint$Align;

    return-object v0
.end method
