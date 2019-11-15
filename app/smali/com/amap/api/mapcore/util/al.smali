.class public Lcom/amap/api/mapcore/util/al;
.super Ljava/lang/Object;
.source "QuadTree2.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore/util/ai;

.field private final b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/al;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IIIII)V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/ai;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/ai;-><init>(IIII)V

    invoke-direct {p0, v0, p5}, Lcom/amap/api/mapcore/util/al;-><init>(Lcom/amap/api/mapcore/util/ai;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/amap/api/mapcore/util/ai;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/al;-><init>(Lcom/amap/api/mapcore/util/ai;I)V

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/mapcore/util/ai;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/amap/api/mapcore/util/al;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iput p2, p0, Lcom/amap/api/mapcore/util/al;->b:I

    iget v0, p0, Lcom/amap/api/mapcore/util/al;->b:I

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/al;->a(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/al;->c:I

    return-void
.end method

.method private a(I)I
    .locals 3

    const/16 v0, 0x14

    const/16 v1, 0xa

    const/4 v2, 0x5

    packed-switch p1, :pswitch_data_0

    move v0, v2

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x32

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(IILcom/amap/api/maps/model/MultiPointItem;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/al;->c:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/amap/api/mapcore/util/al;->b:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/al;->b()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v0, v0, Lcom/amap/api/mapcore/util/ai;->f:I

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v0, v0, Lcom/amap/api/mapcore/util/ai;->e:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/al;

    invoke-direct {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/al;->a(IILcom/amap/api/maps/model/MultiPointItem;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/al;

    invoke-direct {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/al;->a(IILcom/amap/api/maps/model/MultiPointItem;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v0, v0, Lcom/amap/api/mapcore/util/ai;->e:I

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/al;

    invoke-direct {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/al;->a(IILcom/amap/api/maps/model/MultiPointItem;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/al;

    invoke-direct {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/al;->a(IILcom/amap/api/maps/model/MultiPointItem;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/util/ai;Ljava/util/Collection;FD)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore/util/ai;",
            "Ljava/util/Collection",
            "<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;FD)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ai;->a(Lcom/amap/api/mapcore/util/ai;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/MultiPointItem;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amap/api/mapcore/util/ai;->a(Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v0, v0, Lcom/amap/api/mapcore/util/ai;->d:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v2, v2, Lcom/amap/api/mapcore/util/ai;->b:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v2, v2, Lcom/amap/api/mapcore/util/ai;->c:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v4, v4, Lcom/amap/api/mapcore/util/ai;->a:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    div-double/2addr v0, p4

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/al;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/al;->a(Lcom/amap/api/mapcore/util/ai;Ljava/util/Collection;FD)V

    goto :goto_2

    :cond_4
    const-wide v2, 0x4013467381d7dbf5L    # 4.8188

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    const-wide v4, 0x4013bc504816f007L    # 4.9339

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    const-wide v2, 0x3ff1bfb15b573eabL    # 1.1093

    add-double/2addr v0, v2

    double-to-float v3, v0

    goto :goto_1

    :cond_5
    move v3, p3

    goto :goto_1
.end method

.method private b()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    new-instance v0, Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v1, v1, Lcom/amap/api/mapcore/util/ai;->a:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v2, v2, Lcom/amap/api/mapcore/util/ai;->e:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v3, v3, Lcom/amap/api/mapcore/util/ai;->b:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v4, v4, Lcom/amap/api/mapcore/util/ai;->f:I

    iget v5, p0, Lcom/amap/api/mapcore/util/al;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/al;-><init>(IIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    new-instance v0, Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v1, v1, Lcom/amap/api/mapcore/util/ai;->e:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v2, v2, Lcom/amap/api/mapcore/util/ai;->c:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v3, v3, Lcom/amap/api/mapcore/util/ai;->b:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v4, v4, Lcom/amap/api/mapcore/util/ai;->f:I

    iget v5, p0, Lcom/amap/api/mapcore/util/al;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/al;-><init>(IIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    new-instance v0, Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v1, v1, Lcom/amap/api/mapcore/util/ai;->a:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v2, v2, Lcom/amap/api/mapcore/util/ai;->e:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v3, v3, Lcom/amap/api/mapcore/util/ai;->f:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v4, v4, Lcom/amap/api/mapcore/util/ai;->d:I

    iget v5, p0, Lcom/amap/api/mapcore/util/al;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/al;-><init>(IIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    new-instance v0, Lcom/amap/api/mapcore/util/al;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v1, v1, Lcom/amap/api/mapcore/util/ai;->e:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v2, v2, Lcom/amap/api/mapcore/util/ai;->c:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v3, v3, Lcom/amap/api/mapcore/util/ai;->f:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v4, v4, Lcom/amap/api/mapcore/util/ai;->d:I

    iget v5, p0, Lcom/amap/api/mapcore/util/al;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/al;-><init>(IIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/al;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/al;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/amap/api/mapcore/util/ai;Ljava/util/Collection;D)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore/util/ai;",
            "Ljava/util/Collection",
            "<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;D)V"
        }
    .end annotation

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/al;->a(Lcom/amap/api/mapcore/util/ai;Ljava/util/Collection;FD)V

    return-void
.end method

.method protected a(Lcom/amap/api/maps/model/MultiPointItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/al;->a:Lcom/amap/api/mapcore/util/ai;

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/mapcore/util/ai;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {p0, v1, v0, p1}, Lcom/amap/api/mapcore/util/al;->a(IILcom/amap/api/maps/model/MultiPointItem;)V

    :cond_0
    return-void
.end method
