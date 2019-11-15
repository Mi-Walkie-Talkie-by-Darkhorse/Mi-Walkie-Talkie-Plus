.class public final Lcom/github/mikephil/charting/g/b;
.super Lcom/github/mikephil/charting/g/f$a;
.source "FSize.java"


# static fields
.field private static c:Lcom/github/mikephil/charting/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/g/f",
            "<",
            "Lcom/github/mikephil/charting/g/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:F

.field public b:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x100

    new-instance v1, Lcom/github/mikephil/charting/g/b;

    invoke-direct {v1, v2, v2}, Lcom/github/mikephil/charting/g/b;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/f;->a(ILcom/github/mikephil/charting/g/f$a;)Lcom/github/mikephil/charting/g/f;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/g/b;->c:Lcom/github/mikephil/charting/g/f;

    sget-object v0, Lcom/github/mikephil/charting/g/b;->c:Lcom/github/mikephil/charting/g/f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/f;->a(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/github/mikephil/charting/g/f$a;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/github/mikephil/charting/g/f$a;-><init>()V

    iput p1, p0, Lcom/github/mikephil/charting/g/b;->a:F

    iput p2, p0, Lcom/github/mikephil/charting/g/b;->b:F

    return-void
.end method

.method public static a(FF)Lcom/github/mikephil/charting/g/b;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/g/b;->c:Lcom/github/mikephil/charting/g/f;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/f;->a()Lcom/github/mikephil/charting/g/f$a;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/g/b;

    iput p0, v0, Lcom/github/mikephil/charting/g/b;->a:F

    iput p1, v0, Lcom/github/mikephil/charting/g/b;->b:F

    return-object v0
.end method

.method public static a(Lcom/github/mikephil/charting/g/b;)V
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/g/b;->c:Lcom/github/mikephil/charting/g/f;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/g/f;->a(Lcom/github/mikephil/charting/g/f$a;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/github/mikephil/charting/g/f$a;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/github/mikephil/charting/g/b;

    invoke-direct {v0, v1, v1}, Lcom/github/mikephil/charting/g/b;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/github/mikephil/charting/g/b;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/github/mikephil/charting/g/b;

    iget v2, p0, Lcom/github/mikephil/charting/g/b;->a:F

    iget v3, p1, Lcom/github/mikephil/charting/g/b;->a:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/github/mikephil/charting/g/b;->b:F

    iget v3, p1, Lcom/github/mikephil/charting/g/b;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/github/mikephil/charting/g/b;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/g/b;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/github/mikephil/charting/g/b;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/g/b;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
