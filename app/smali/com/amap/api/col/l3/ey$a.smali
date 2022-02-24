.class public final Lcom/amap/api/col/l3/ey$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapOverlayViewGroup.java"


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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/ey$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/amap/api/col/l3/ey$a;->b:I

    .line 4
    iput p1, p0, Lcom/amap/api/col/l3/ey$a;->c:I

    const/16 p1, 0x33

    .line 5
    iput p1, p0, Lcom/amap/api/col/l3/ey$a;->d:I

    .line 6
    iput-object p3, p0, Lcom/amap/api/col/l3/ey$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 7
    iput p4, p0, Lcom/amap/api/col/l3/ey$a;->b:I

    .line 8
    iput p5, p0, Lcom/amap/api/col/l3/ey$a;->c:I

    .line 9
    iput p6, p0, Lcom/amap/api/col/l3/ey$a;->d:I

    return-void
.end method
