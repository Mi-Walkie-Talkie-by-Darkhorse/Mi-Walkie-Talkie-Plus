.class public final Lcom/amap/api/col/l3/ab;
.super Ljava/lang/Object;


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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/ab;->d:F

    iput v0, p0, Lcom/amap/api/col/l3/ab;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/l3/ab;->f:F

    iput v0, p0, Lcom/amap/api/col/l3/ab;->g:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3/ab;->h:I

    iput-object p1, p0, Lcom/amap/api/col/l3/ab;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput p2, p0, Lcom/amap/api/col/l3/ab;->c:I

    invoke-static {}, Lcom/amap/api/col/l3/ef;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/ab;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/ab;->e:F

    return v0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3/ab;->e:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3/ab;->c:I

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/ab;->d:F

    return v0
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3/ab;->d:F

    return-void
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/ab;->f:F

    return v0
.end method

.method public final c(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3/ab;->f:F

    return-void
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/ab;->g:F

    return v0
.end method

.method public final d(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3/ab;->g:F

    return-void
.end method

.method public final e()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/ab;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/ab;->c:I

    return v0
.end method

.method public final g()V
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/ab;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3/ab;->h:I

    return-void
.end method

.method public final h()V
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/ab;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amap/api/col/l3/ab;->h:I

    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/ab;->h:I

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/ab;->a:Ljava/lang/String;

    return-object v0
.end method
