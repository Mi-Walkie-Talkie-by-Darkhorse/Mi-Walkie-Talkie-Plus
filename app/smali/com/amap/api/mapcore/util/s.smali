.class public Lcom/amap/api/mapcore/util/s;
.super Ljava/lang/Object;
.source "OverlayTextureItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore/util/s;->d:F

    iput v0, p0, Lcom/amap/api/mapcore/util/s;->e:F

    iput v1, p0, Lcom/amap/api/mapcore/util/s;->f:F

    iput v1, p0, Lcom/amap/api/mapcore/util/s;->g:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/s;->h:I

    iput-object p1, p0, Lcom/amap/api/mapcore/util/s;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput p2, p0, Lcom/amap/api/mapcore/util/s;->c:I

    invoke-static {}, Lcom/amap/api/mapcore/util/dx;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/s;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/s;->e:F

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/s;->e:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/s;->c:I

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/s;->d:F

    return v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/s;->d:F

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/s;->f:F

    return v0
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/s;->f:F

    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/s;->g:F

    return v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/s;->g:F

    return-void
.end method

.method public e()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/s;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/s;->c:I

    return v0
.end method

.method public g()V
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/s;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/s;->h:I

    return-void
.end method

.method public h()V
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/s;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/s;->h:I

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/s;->h:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/s;->a:Ljava/lang/String;

    return-object v0
.end method
