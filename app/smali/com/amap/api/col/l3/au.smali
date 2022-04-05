.class public final Lcom/amap/api/col/l3/au;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/amap/api/col/l3/ar;

.field private final b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/au;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IIIII)V
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3/ar;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/api/col/l3/ar;-><init>(IIII)V

    invoke-direct {p0, v0, p5}, Lcom/amap/api/col/l3/au;-><init>(Lcom/amap/api/col/l3/ar;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/amap/api/col/l3/ar;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/au;-><init>(Lcom/amap/api/col/l3/ar;I)V

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/col/l3/ar;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/amap/api/col/l3/au;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/au;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/col/l3/au;->a:Lcom/amap/api/col/l3/ar;

    iput p2, p0, Lcom/amap/api/col/l3/au;->b:I

    const/4 p1, 0x5

    const/16 v1, 0xa

    const/16 v2, 0x14

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x32

    :goto_0
    :pswitch_4
    iput v0, p0, Lcom/amap/api/col/l3/au;->c:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/amap/api/col/l3/ar;Ljava/util/Collection;FD)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3/ar;",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;FD)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/au;->a:Lcom/amap/api/col/l3/ar;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ar;->a(Lcom/amap/api/col/l3/ar;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/au;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    float-to-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/l3/au;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v5, v4}, Lcom/amap/api/col/l3/ar;->a(II)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    cmpl-double v2, p4, v0

    if-lez v2, :cond_6

    iget-object p3, p0, Lcom/amap/api/col/l3/au;->a:Lcom/amap/api/col/l3/ar;

    iget v0, p3, Lcom/amap/api/col/l3/ar;->d:I

    int-to-double v0, v0

    iget v2, p3, Lcom/amap/api/col/l3/ar;->b:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p3, Lcom/amap/api/col/l3/ar;->c:I

    int-to-double v2, v2

    iget p3, p3, Lcom/amap/api/col/l3/ar;->a:I

    int-to-double v4, p3

    sub-double/2addr v2, v4

    mul-double v0, v0, v2

    div-double/2addr v0, p4

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpg-double p3, v0, v2

    if-gez p3, :cond_4

    return-void

    :cond_4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, v0, v2

    if-lez p3, :cond_5

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const-wide v2, 0x4013467381d7dbf5L    # 4.8188

    mul-double v2, v2, v0

    mul-double v2, v2, v0

    const-wide v4, 0x4013bc504816f007L    # 4.9339

    mul-double v0, v0, v4

    sub-double/2addr v2, v0

    const-wide v0, 0x3ff1bfb15b573eabL    # 1.1093

    add-double/2addr v2, v0

    double-to-float p3, v2

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3/au;->e:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/au;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3/au;->a(Lcom/amap/api/col/l3/ar;Ljava/util/Collection;FD)V

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/au;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/col/l3/au;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/amap/api/col/l3/ar;Ljava/util/Collection;D)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3/ar;",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;D)V"
        }
    .end annotation

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3/au;->a(Lcom/amap/api/col/l3/ar;Ljava/util/Collection;FD)V

    return-void
.end method

.method protected final a(Lcom/amap/api/maps/model/MultiPointItem;)V
    .locals 12

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/au;->a:Lcom/amap/api/col/l3/ar;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/l3/ar;->a(II)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    move-object v2, p0

    :goto_0
    iget-object v3, v2, Lcom/amap/api/col/l3/au;->d:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/amap/api/col/l3/au;->d:Ljava/util/List;

    :cond_0
    iget-object v3, v2, Lcom/amap/api/col/l3/au;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v2, Lcom/amap/api/col/l3/au;->c:I

    if-le v3, v4, :cond_5

    iget v3, v2, Lcom/amap/api/col/l3/au;->b:I

    const/16 v4, 0x28

    if-ge v3, v4, :cond_5

    iget-object v3, v2, Lcom/amap/api/col/l3/au;->e:Ljava/util/List;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lcom/amap/api/col/l3/au;->e:Ljava/util/List;

    new-instance v5, Lcom/amap/api/col/l3/au;

    iget-object v6, v2, Lcom/amap/api/col/l3/au;->a:Lcom/amap/api/col/l3/ar;

    iget v7, v6, Lcom/amap/api/col/l3/ar;->a:I

    iget v8, v6, Lcom/amap/api/col/l3/ar;->e:I

    iget v9, v6, Lcom/amap/api/col/l3/ar;->b:I

    iget v10, v6, Lcom/amap/api/col/l3/ar;->f:I

    iget v6, v2, Lcom/amap/api/col/l3/au;->b:I

    add-int/lit8 v11, v6, 0x1

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/amap/api/col/l3/au;-><init>(IIIII)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/amap/api/col/l3/au;->e:Ljava/util/List;

    new-instance v11, Lcom/amap/api/col/l3/au;

    iget-object v5, v2, Lcom/amap/api/col/l3/au;->a:Lcom/amap/api/col/l3/ar;

    iget v6, v5, Lcom/amap/api/col/l3/ar;->e:I

    iget v7, v5, Lcom/amap/api/col/l3/ar;->c:I

    iget v8, v5, Lcom/amap/api/col/l3/ar;->b:I

    iget v9, v5, Lcom/amap/api/col/l3/ar;->f:I

    iget v5, v2, Lcom/amap/api/col/l3/au;->b:I

    add-int/lit8 v10, v5, 0x1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/col/l3/au;-><init>(IIIII)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/amap/api/col/l3/au;->e:Ljava/util/List;

    new-instance v11, Lcom/amap/api/col/l3/au;

    iget-object v5, v2, Lcom/amap/api/col/l3/au;->a:Lcom/amap/api/col/l3/ar;

    iget v6, v5, Lcom/amap/api/col/l3/ar;->a:I

    iget v7, v5, Lcom/amap/api/col/l3/ar;->e:I

    iget v8, v5, Lcom/amap/api/col/l3/ar;->f:I

    iget v9, v5, Lcom/amap/api/col/l3/ar;->d:I

    iget v5, v2, Lcom/amap/api/col/l3/au;->b:I

    add-int/lit8 v10, v5, 0x1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/col/l3/au;-><init>(IIIII)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/amap/api/col/l3/au;->e:Ljava/util/List;

    new-instance v11, Lcom/amap/api/col/l3/au;

    iget-object v5, v2, Lcom/amap/api/col/l3/au;->a:Lcom/amap/api/col/l3/ar;

    iget v6, v5, Lcom/amap/api/col/l3/ar;->e:I

    iget v7, v5, Lcom/amap/api/col/l3/ar;->c:I

    iget v8, v5, Lcom/amap/api/col/l3/ar;->f:I

    iget v9, v5, Lcom/amap/api/col/l3/ar;->d:I

    iget v5, v2, Lcom/amap/api/col/l3/au;->b:I

    add-int/lit8 v10, v5, 0x1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/col/l3/au;-><init>(IIIII)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, v2, Lcom/amap/api/col/l3/au;->e:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v2, v2, Lcom/amap/api/col/l3/au;->a:Lcom/amap/api/col/l3/ar;

    iget v5, v2, Lcom/amap/api/col/l3/ar;->f:I

    iget v2, v2, Lcom/amap/api/col/l3/ar;->e:I

    if-ge v0, v5, :cond_3

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_3
    if-ge v1, v2, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    check-cast v2, Lcom/amap/api/col/l3/au;

    goto/16 :goto_0

    :cond_5
    iget-object v0, v2, Lcom/amap/api/col/l3/au;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method
