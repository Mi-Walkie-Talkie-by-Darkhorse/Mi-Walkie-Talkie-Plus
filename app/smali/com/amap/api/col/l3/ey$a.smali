.class public final Lcom/amap/api/col/l3/ey$a;
.super Landroid/view/ViewGroup$LayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/autonavi/amap/mapcore/FPoint;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IILcom/autonavi/amap/mapcore/FPoint;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3/ey$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3/ey$a;->b:I

    iput p1, p0, Lcom/amap/api/col/l3/ey$a;->c:I

    const/16 p1, 0x33

    iput p1, p0, Lcom/amap/api/col/l3/ey$a;->d:I

    iput-object p3, p0, Lcom/amap/api/col/l3/ey$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iput p4, p0, Lcom/amap/api/col/l3/ey$a;->b:I

    iput p5, p0, Lcom/amap/api/col/l3/ey$a;->c:I

    iput p6, p0, Lcom/amap/api/col/l3/ey$a;->d:I

    return-void
.end method
