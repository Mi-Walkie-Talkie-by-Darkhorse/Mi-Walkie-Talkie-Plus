.class public final Lcom/amap/api/col/l3/de$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/autonavi/amap/mapcore/IPoint;

.field public f:I

.field public g:Z

.field public h:Ljava/nio/FloatBuffer;

.field public i:Landroid/graphics/Bitmap;

.field public j:Lcom/amap/api/col/l3/eq$a;

.field public k:I

.field private final l:I

.field private m:Lcom/amap/api/col/l3/u;

.field private n:Lcom/amap/api/col/l3/ae;

.field private o:Lcom/amap/api/col/l3/eo;


# direct methods
.method public constructor <init>(IIIILcom/amap/api/col/l3/u;Lcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/de$a;->f:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3/de$a;->g:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->j:Lcom/amap/api/col/l3/eq$a;

    iput v0, p0, Lcom/amap/api/col/l3/de$a;->k:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/col/l3/de$a;->l:I

    iput p1, p0, Lcom/amap/api/col/l3/de$a;->a:I

    iput p2, p0, Lcom/amap/api/col/l3/de$a;->b:I

    iput p3, p0, Lcom/amap/api/col/l3/de$a;->c:I

    iput p4, p0, Lcom/amap/api/col/l3/de$a;->d:I

    iput-object p5, p0, Lcom/amap/api/col/l3/de$a;->m:Lcom/amap/api/col/l3/u;

    iput-object p6, p0, Lcom/amap/api/col/l3/de$a;->n:Lcom/amap/api/col/l3/ae;

    iput-object p7, p0, Lcom/amap/api/col/l3/de$a;->o:Lcom/amap/api/col/l3/eo;

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/col/l3/de$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/de$a;->f:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3/de$a;->g:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->j:Lcom/amap/api/col/l3/eq$a;

    iput v0, p0, Lcom/amap/api/col/l3/de$a;->k:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/amap/api/col/l3/de$a;->l:I

    iget v1, p1, Lcom/amap/api/col/l3/de$a;->a:I

    iput v1, p0, Lcom/amap/api/col/l3/de$a;->a:I

    iget v1, p1, Lcom/amap/api/col/l3/de$a;->b:I

    iput v1, p0, Lcom/amap/api/col/l3/de$a;->b:I

    iget v1, p1, Lcom/amap/api/col/l3/de$a;->c:I

    iput v1, p0, Lcom/amap/api/col/l3/de$a;->c:I

    iget v1, p1, Lcom/amap/api/col/l3/de$a;->d:I

    iput v1, p0, Lcom/amap/api/col/l3/de$a;->d:I

    iget-object v1, p1, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v1, p1, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    iput v0, p0, Lcom/amap/api/col/l3/de$a;->k:I

    iget-object v0, p1, Lcom/amap/api/col/l3/de$a;->n:Lcom/amap/api/col/l3/ae;

    iput-object v0, p0, Lcom/amap/api/col/l3/de$a;->n:Lcom/amap/api/col/l3/ae;

    iget-object v0, p1, Lcom/amap/api/col/l3/de$a;->m:Lcom/amap/api/col/l3/u;

    iput-object v0, p0, Lcom/amap/api/col/l3/de$a;->m:Lcom/amap/api/col/l3/u;

    iget-object p1, p1, Lcom/amap/api/col/l3/de$a;->o:Lcom/amap/api/col/l3/eo;

    iput-object p1, p0, Lcom/amap/api/col/l3/de$a;->o:Lcom/amap/api/col/l3/eo;

    return-void
.end method

.method private b()Lcom/amap/api/col/l3/de$a;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/de$a;

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->a:I

    iput v1, v0, Lcom/amap/api/col/l3/de$a;->a:I

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->b:I

    iput v1, v0, Lcom/amap/api/col/l3/de$a;->b:I

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->c:I

    iput v1, v0, Lcom/amap/api/col/l3/de$a;->c:I

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->d:I

    iput v1, v0, Lcom/amap/api/col/l3/de$a;->d:I

    iget-object v1, p0, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, v0, Lcom/amap/api/col/l3/de$a;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v1, p0, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->asReadOnlyBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/de$a;->k:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_0
    new-instance v0, Lcom/amap/api/col/l3/de$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/de$a;-><init>(Lcom/amap/api/col/l3/de$a;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/eq;->a(Lcom/amap/api/col/l3/de$a;)V

    iget-boolean v0, p0, Lcom/amap/api/col/l3/de$a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/de$a;->n:Lcom/amap/api/col/l3/ae;

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->f:I

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ae;->a(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/de$a;->g:Z

    iput v0, p0, Lcom/amap/api/col/l3/de$a;->f:I

    iget-object v1, p0, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->h:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/amap/api/col/l3/de$a;->j:Lcom/amap/api/col/l3/eq$a;

    iput v0, p0, Lcom/amap/api/col/l3/de$a;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/amap/api/col/l3/de$a;->j:Lcom/amap/api/col/l3/eq$a;

    iput-object p1, p0, Lcom/amap/api/col/l3/de$a;->i:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/amap/api/col/l3/de$a;->m:Lcom/amap/api/col/l3/u;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v2, "TileOverlayDelegateImp"

    const-string v3, "setBitmap"

    invoke-static {p1, v2, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget p1, p0, Lcom/amap/api/col/l3/de$a;->k:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/amap/api/col/l3/de$a;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amap/api/col/l3/de$a;->k:I

    iget-object p1, p0, Lcom/amap/api/col/l3/de$a;->o:Lcom/amap/api/col/l3/eo;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/de$a;->o:Lcom/amap/api/col/l3/eo;

    invoke-virtual {p1, v1, p0}, Lcom/amap/api/col/l3/eq;->a(ZLcom/amap/api/col/l3/de$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget p1, p0, Lcom/amap/api/col/l3/de$a;->k:I

    if-ge p1, v0, :cond_2

    iget p1, p0, Lcom/amap/api/col/l3/de$a;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amap/api/col/l3/de$a;->k:I

    iget-object p1, p0, Lcom/amap/api/col/l3/de$a;->o:Lcom/amap/api/col/l3/eo;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/de$a;->o:Lcom/amap/api/col/l3/eo;

    invoke-virtual {p1, v1, p0}, Lcom/amap/api/col/l3/eq;->a(ZLcom/amap/api/col/l3/de$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/col/l3/de$a;->b()Lcom/amap/api/col/l3/de$a;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/amap/api/col/l3/de$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amap/api/col/l3/de$a;

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->a:I

    iget v3, p1, Lcom/amap/api/col/l3/de$a;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->b:I

    iget v3, p1, Lcom/amap/api/col/l3/de$a;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->c:I

    iget v3, p1, Lcom/amap/api/col/l3/de$a;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->d:I

    iget p1, p1, Lcom/amap/api/col/l3/de$a;->d:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/amap/api/col/l3/de$a;->a:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->b:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->c:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amap/api/col/l3/de$a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amap/api/col/l3/de$a;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3/de$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
