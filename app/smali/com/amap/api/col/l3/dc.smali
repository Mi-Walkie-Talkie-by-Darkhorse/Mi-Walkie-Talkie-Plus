.class public final Lcom/amap/api/col/l3/dc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/col/l3/an;
.implements Lcom/amap/api/col/l3/cr;
.implements Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/dc$a;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:Z

.field private E:Landroid/graphics/Bitmap;

.field private F:Landroid/graphics/Bitmap;

.field private G:Landroid/graphics/Bitmap;

.field private H:Landroid/graphics/Bitmap;

.field private I:Z

.field private J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private L:Z

.field private M:Z

.field a:Lcom/amap/api/col/l3/u;

.field b:[F

.field c:Lcom/amap/api/col/l3/dc$a;

.field d:[F

.field e:J

.field f:J

.field g:J

.field h:Lcom/amap/api/col/l3/ao;

.field private i:Landroid/content/Context;

.field private j:Lcom/amap/api/col/l3/cp;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/autonavi/amap/mapcore/FPoint;

.field private q:Ljava/nio/FloatBuffer;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Ljava/nio/FloatBuffer;

.field private u:F

.field private v:F

.field private w:Z

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/u;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dc;->k:Z

    iput v0, p0, Lcom/amap/api/col/l3/dc;->l:I

    iput v0, p0, Lcom/amap/api/col/l3/dc;->m:I

    iput v0, p0, Lcom/amap/api/col/l3/dc;->n:I

    iput v0, p0, Lcom/amap/api/col/l3/dc;->o:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->q:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3/dc;->s:Z

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/amap/api/col/l3/dc;->u:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/amap/api/col/l3/dc;->v:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, p0, Lcom/amap/api/col/l3/dc;->A:F

    iput v3, p0, Lcom/amap/api/col/l3/dc;->B:F

    iput-boolean v2, p0, Lcom/amap/api/col/l3/dc;->D:Z

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->F:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->H:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->a:Lcom/amap/api/col/l3/u;

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dc;->I:Z

    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->b:[F

    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->d:[F

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/amap/api/col/l3/dc;->e:J

    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/amap/api/col/l3/dc;->f:J

    const-wide/16 v3, 0x64

    iput-wide v3, p0, Lcom/amap/api/col/l3/dc;->g:J

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dc;->L:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/dc;->M:Z

    iput-object p2, p0, Lcom/amap/api/col/l3/dc;->i:Landroid/content/Context;

    iput-object p1, p0, Lcom/amap/api/col/l3/dc;->a:Lcom/amap/api/col/l3/u;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/dc;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/dc;->r:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->i:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/amap/api/col/l3/dc;->i:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    invoke-static {p1}, Lcom/amap/api/col/l3/em;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3/dc;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/dc;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-object p0
.end method

.method private declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/dc;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/dc;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/dc;->b(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/dc;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dc;->L:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/amap/api/col/l3/dc;->n:I

    iput p2, p0, Lcom/amap/api/col/l3/dc;->o:I

    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3/dc;->l:I

    iput p2, p0, Lcom/amap/api/col/l3/dc;->m:I

    iput p1, p0, Lcom/amap/api/col/l3/dc;->n:I

    iput p2, p0, Lcom/amap/api/col/l3/dc;->o:I

    return-void
.end method

.method private declared-synchronized b(Landroid/graphics/Bitmap;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->F:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->H:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->y:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/dc;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/dc;->y:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v4, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v4, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/l3/dc;->F:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v4, p0, Lcom/amap/api/col/l3/dc;->F:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/amap/api/col/l3/dc;->H:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/l3/dc;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->y:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/dc;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/dc;->y:Landroid/graphics/Bitmap;

    :cond_7
    :goto_1
    iput-boolean v1, p0, Lcom/amap/api/col/l3/dc;->I:Z

    iput-object p1, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    monitor-exit p0

    return-void

    :cond_8
    :goto_2
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3/dc;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dc;->L:Z

    return v0
.end method

.method private d()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dc;->D:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/l3/dc;->M:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3/dc;->L:Z

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    new-instance v2, Lcom/amap/api/col/l3/dc$1;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/dc$1;-><init>(Lcom/amap/api/col/l3/dc;)V

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/col/l3/dc;->L:Z

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/dc;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/dc;->b(Landroid/graphics/Bitmap;)V

    :goto_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/dc;->D:Z

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->y:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->F:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->F:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->H:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-boolean v0, v1, Lcom/amap/api/col/l3/dc;->s:Z

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->p:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->h:Lcom/amap/api/col/l3/ao;

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ao;->c()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gtz v0, :cond_1

    iget-wide v6, v1, Lcom/amap/api/col/l3/dc;->f:J

    goto :goto_0

    :cond_1
    iget-wide v8, v1, Lcom/amap/api/col/l3/dc;->g:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    move-wide v6, v8

    goto :goto_0

    :cond_2
    move-wide v6, v4

    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/amap/api/col/l3/dc;->e:J

    sub-long v12, v8, v10

    cmp-long v0, v12, v6

    if-lez v0, :cond_5

    cmp-long v0, v10, v4

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/dc;->a(Lcom/amap/api/col/l3/cp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_1
    iput-wide v8, v1, Lcom/amap/api/col/l3/dc;->e:J

    :cond_5
    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    iget-boolean v0, v1, Lcom/amap/api/col/l3/dc;->I:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_1
    iget v0, v1, Lcom/amap/api/col/l3/dc;->C:I

    if-eqz v0, :cond_6

    new-array v0, v4, [I

    iget v6, v1, Lcom/amap/api/col/l3/dc;->C:I

    aput v6, v0, v5

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_2

    :cond_6
    new-array v0, v4, [I

    aput v5, v0, v5

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v5

    iput v0, v1, Lcom/amap/api/col/l3/dc;->C:I

    :goto_2
    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, v1, Lcom/amap/api/col/l3/dc;->C:I

    iget-object v6, v1, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    invoke-static {v0, v6, v5}, Lcom/amap/api/col/l3/em;->a(ILandroid/graphics/Bitmap;Z)I

    iput-boolean v4, v1, Lcom/amap/api/col/l3/dc;->I:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const-string v2, "PopupOverlay"

    const-string v3, "drawMarker"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_7
    :goto_3
    iget-boolean v0, v1, Lcom/amap/api/col/l3/dc;->M:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_8

    iput-boolean v4, v1, Lcom/amap/api/col/l3/dc;->L:Z

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iget-object v7, v1, Lcom/amap/api/col/l3/dc;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    iget-wide v7, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_a

    iget-wide v7, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_a

    :goto_4
    iget-wide v7, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    double-to-float v7, v7

    iput v7, v1, Lcom/amap/api/col/l3/dc;->A:F

    iget-wide v7, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    double-to-float v0, v7

    iput v0, v1, Lcom/amap/api/col/l3/dc;->B:F

    goto :goto_5

    :cond_8
    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean v5, v1, Lcom/amap/api/col/l3/dc;->M:Z

    iput-boolean v4, v1, Lcom/amap/api/col/l3/dc;->L:Z

    iget v0, v1, Lcom/amap/api/col/l3/dc;->n:I

    iput v0, v1, Lcom/amap/api/col/l3/dc;->l:I

    iget v0, v1, Lcom/amap/api/col/l3/dc;->o:I

    iput v0, v1, Lcom/amap/api/col/l3/dc;->m:I

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iget-object v7, v1, Lcom/amap/api/col/l3/dc;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    iget-wide v7, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_a

    iget-wide v7, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_4

    :cond_9
    iput v6, v1, Lcom/amap/api/col/l3/dc;->A:F

    iput v6, v1, Lcom/amap/api/col/l3/dc;->B:F

    iput-boolean v5, v1, Lcom/amap/api/col/l3/dc;->L:Z

    :cond_a
    :goto_5
    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget-object v7, v1, Lcom/amap/api/col/l3/dc;->p:Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v8, 0x4

    if-eqz v7, :cond_10

    if-nez v0, :cond_b

    goto/16 :goto_7

    :cond_b
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v7

    iget-object v10, v1, Lcom/amap/api/col/l3/dc;->p:Lcom/autonavi/amap/mapcore/FPoint;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v11, v10, v7}, Lcom/autonavi/ae/gmap/GLMapState;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/dc;->d()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/dc;->e()I

    move-result v10

    iget v11, v7, Landroid/graphics/Point;->x:I

    iget v12, v1, Lcom/amap/api/col/l3/dc;->l:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    int-to-float v12, v0

    iget v13, v1, Lcom/amap/api/col/l3/dc;->u:F

    mul-float v12, v12, v13

    sub-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, v7, Landroid/graphics/Point;->y:I

    iget v13, v1, Lcom/amap/api/col/l3/dc;->m:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    int-to-float v13, v10

    iget v14, v1, Lcom/amap/api/col/l3/dc;->v:F

    sub-float v14, v6, v14

    mul-float v13, v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    sub-int v7, v11, v0

    if-gt v7, v2, :cond_10

    neg-int v0, v0

    const/4 v7, 0x2

    mul-int/lit8 v0, v0, 0x2

    if-lt v11, v0, :cond_10

    neg-int v0, v10

    mul-int/lit8 v0, v0, 0x2

    if-lt v12, v0, :cond_10

    sub-int v0, v12, v10

    if-le v0, v3, :cond_c

    goto/16 :goto_7

    :cond_c
    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    goto/16 :goto_7

    :cond_d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v10, v1, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget-object v13, v1, Lcom/amap/api/col/l3/dc;->t:Ljava/nio/FloatBuffer;

    const/16 v14, 0x8

    if-nez v13, :cond_e

    new-array v13, v14, [F

    fill-array-data v13, :array_0

    invoke-static {v13}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v13

    iput-object v13, v1, Lcom/amap/api/col/l3/dc;->t:Ljava/nio/FloatBuffer;

    :cond_e
    iget v13, v1, Lcom/amap/api/col/l3/dc;->A:F

    sub-float v13, v6, v13

    float-to-double v14, v13

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v17

    move/from16 v17, v10

    int-to-double v9, v0

    mul-double v14, v14, v9

    double-to-int v9, v14

    iget-object v10, v1, Lcom/amap/api/col/l3/dc;->b:[F

    add-int v14, v11, v9

    int-to-float v15, v14

    aput v15, v10, v5

    iget-object v13, v1, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    iput v14, v13, Landroid/graphics/Rect;->left:I

    sub-int v14, v3, v12

    int-to-float v6, v14

    aput v6, v10, v4

    const/16 v19, 0x0

    aput v19, v10, v7

    const/4 v7, 0x3

    add-int/2addr v11, v0

    sub-int v0, v11, v9

    int-to-float v0, v0

    aput v0, v10, v7

    aput v6, v10, v8

    sub-int v6, v12, v17

    iput v6, v13, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x5

    aput v19, v10, v6

    const/4 v6, 0x6

    aput v0, v10, v6

    iput v11, v13, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x7

    add-int v14, v14, v17

    int-to-float v7, v14

    aput v7, v10, v6

    iput v12, v13, Landroid/graphics/Rect;->bottom:I

    const/16 v6, 0x8

    aput v19, v10, v6

    const/16 v6, 0x9

    aput v15, v10, v6

    const/16 v6, 0xa

    aput v7, v10, v6

    const/16 v6, 0xb

    aput v19, v10, v6

    iget-object v6, v1, Lcom/amap/api/col/l3/dc;->q:Ljava/nio/FloatBuffer;

    if-nez v6, :cond_f

    invoke-static {v10}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    goto :goto_6

    :cond_f
    invoke-static {v10, v6}, Lcom/amap/api/col/l3/em;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v6

    :goto_6
    iput-object v6, v1, Lcom/amap/api/col/l3/dc;->q:Ljava/nio/FloatBuffer;

    const/4 v6, 0x1

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_14

    iget-object v6, v1, Lcom/amap/api/col/l3/dc;->d:[F

    invoke-static {v6, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v9, v1, Lcom/amap/api/col/l3/dc;->d:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v12, v2

    const/4 v13, 0x0

    int-to-float v14, v3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, -0x40800000    # -1.0f

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget v2, v1, Lcom/amap/api/col/l3/dc;->C:I

    iget-object v14, v1, Lcom/amap/api/col/l3/dc;->q:Ljava/nio/FloatBuffer;

    iget-object v3, v1, Lcom/amap/api/col/l3/dc;->t:Ljava/nio/FloatBuffer;

    if-eqz v14, :cond_13

    if-eqz v3, :cond_13

    if-nez v2, :cond_11

    goto/16 :goto_9

    :cond_11
    iget-object v6, v1, Lcom/amap/api/col/l3/dc;->c:Lcom/amap/api/col/l3/dc$a;

    if-nez v6, :cond_12

    new-instance v6, Lcom/amap/api/col/l3/dc$a;

    const-string v7, "texture.glsl"

    invoke-direct {v6, v7}, Lcom/amap/api/col/l3/dc$a;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Lcom/amap/api/col/l3/dc;->c:Lcom/amap/api/col/l3/dc$a;

    :cond_12
    iget-object v6, v1, Lcom/amap/api/col/l3/dc;->c:Lcom/amap/api/col/l3/dc$a;

    iget v6, v6, Lcom/amap/api/col/l3/df;->d:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v6, 0xbe2

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v7, 0x303

    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v7, v7, v7}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const/16 v7, 0xde1

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, v1, Lcom/amap/api/col/l3/dc;->c:Lcom/amap/api/col/l3/dc$a;

    iget v2, v2, Lcom/amap/api/col/l3/dc$a;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v1, Lcom/amap/api/col/l3/dc;->c:Lcom/amap/api/col/l3/dc$a;

    iget v9, v2, Lcom/amap/api/col/l3/dc$a;->b:I

    const/4 v10, 0x3

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/16 v13, 0xc

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v2, v1, Lcom/amap/api/col/l3/dc;->c:Lcom/amap/api/col/l3/dc$a;

    iget v2, v2, Lcom/amap/api/col/l3/dc$a;->c:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v1, Lcom/amap/api/col/l3/dc;->c:Lcom/amap/api/col/l3/dc$a;

    iget v2, v2, Lcom/amap/api/col/l3/dc$a;->c:I

    const/16 v20, 0x2

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x8

    move/from16 v19, v2

    move-object/from16 v24, v3

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v2, v1, Lcom/amap/api/col/l3/dc;->c:Lcom/amap/api/col/l3/dc$a;

    iget v2, v2, Lcom/amap/api/col/l3/dc$a;->a:I

    iget-object v3, v1, Lcom/amap/api/col/l3/dc;->d:[F

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x6

    invoke-static {v0, v5, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->c:Lcom/amap/api/col/l3/dc$a;

    iget v0, v0, Lcom/amap/api/col/l3/dc$a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, v1, Lcom/amap/api/col/l3/dc;->c:Lcom/amap/api/col/l3/dc$a;

    iget v0, v0, Lcom/amap/api/col/l3/dc$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_13
    :goto_9
    iget-boolean v0, v1, Lcom/amap/api/col/l3/dc;->w:Z

    if-eqz v0, :cond_14

    iput-boolean v5, v1, Lcom/amap/api/col/l3/dc;->w:Z

    :cond_14
    :goto_a
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final a(Lcom/amap/api/col/l3/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/dc;->h:Lcom/amap/api/col/l3/ao;

    return-void
.end method

.method public final declared-synchronized a(Lcom/amap/api/col/l3/cp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/col/l3/cp;->isInfoWindowEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3/dc;->b_()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->h:Lcom/amap/api/col/l3/ao;

    if-eqz v0, :cond_9

    iput-object p1, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/cp;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/dc;->setVisible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance p1, Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-direct {p1, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->h:Lcom/amap/api/col/l3/ao;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->h:Lcom/amap/api/col/l3/ao;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ao;->a(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/dc;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3/dc;->h:Lcom/amap/api/col/l3/ao;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3/ao;->b(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->h:Lcom/amap/api/col/l3/ao;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ao;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/dc;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/dc;->a(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->h:Lcom/amap/api/col/l3/ao;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ao;->c(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/dc;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/l3/dc;->F:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/dc;->a(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/dc;->F:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->h:Lcom/amap/api/col/l3/ao;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ao;->d(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/dc;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/dc;->a(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->h:Lcom/amap/api/col/l3/ao;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ao;->e(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/dc;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->H:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/dc;->a(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/dc;->H:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v0, "PopupOverlay"

    const-string v1, "getInfoWindow"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_9
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dc;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v2, p1}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Rect;II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final a_()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-interface {v0}, Lcom/amap/api/col/l3/cs;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/dc;->setVisible(Z)V

    iget-object v2, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-interface {v2}, Lcom/amap/api/col/l3/cs;->h()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-interface {v3}, Lcom/amap/api/col/l3/cp;->e()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-interface {v4}, Lcom/amap/api/col/l3/cp;->c()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-interface {v4}, Lcom/amap/api/col/l3/cp;->f()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-interface {v5}, Lcom/amap/api/col/l3/cp;->d()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    iget-boolean v5, p0, Lcom/amap/api/col/l3/dc;->L:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/amap/api/col/l3/dc;->x:Landroid/graphics/Bitmap;

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_9

    :cond_1
    iget-object v5, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-interface {v5}, Lcom/amap/api/col/l3/cs;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowEnable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/dc;->setVisible(Z)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/dc;->setVisible(Z)V

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowAutoOverturn()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/amap/api/col/l3/dc;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v9, 0x0

    :goto_1
    add-int/2addr v8, v9

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/amap/api/col/l3/dc;->z:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    iget-object v10, p0, Lcom/amap/api/col/l3/dc;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v10, 0x0

    :goto_3
    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v6, p0, Lcom/amap/api/col/l3/dc;->D:Z

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :goto_4
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->o()I

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->o()I

    invoke-direct {p0}, Lcom/amap/api/col/l3/dc;->f()V

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-interface {v0}, Lcom/amap/api/col/l3/cp;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/dc;->p:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {p0, v3, v4}, Lcom/amap/api/col/l3/dc;->b(II)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->j:Lcom/amap/api/col/l3/cp;

    invoke-interface {v0}, Lcom/amap/api/col/l3/cp;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/dc;->p:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {p0, v3, v4}, Lcom/amap/api/col/l3/dc;->b(II)V

    invoke-direct {p0}, Lcom/amap/api/col/l3/dc;->f()V

    :cond_9
    return-void

    :cond_a
    :goto_5
    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/dc;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final declared-synchronized b_()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/dc;->setVisible(Z)V

    invoke-direct {p0}, Lcom/amap/api/col/l3/dc;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final destroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dc;->k:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/dc;->g()V

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->t:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->t:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->q:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->q:Ljava/nio/FloatBuffer;

    :cond_1
    iput-object v1, p0, Lcom/amap/api/col/l3/dc;->p:Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/dc;->C:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "realDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/dc;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "PopupOverlay"

    iput-object v0, p0, Lcom/amap/api/col/l3/dc;->r:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dc;->s:Z

    return v0
.end method

.method public final remove()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowAnimation(Lcom/amap/api/maps/model/animation/Animation;Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowAppearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/dc;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "PopupOverlay"

    const-string v1, "setInfoWindowDisappearAnimation"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object p1, p0, Lcom/amap/api/col/l3/dc;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method

.method public final setInfoWindowBackColor(I)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowBackEnable(Z)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowBackScale(FF)V
    .locals 0

    return-void
.end method

.method public final setInfoWindowDisappearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc;->J:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/dc;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "PopupOverlay"

    const-string v1, "setInfoWindowDisappearAnimation"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object p1, p0, Lcom/amap/api/col/l3/dc;->K:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method

.method public final setInfoWindowMovingAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/dc;->s:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/dc;->w:Z

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3/dc;->s:Z

    return-void
.end method

.method public final setZIndex(F)V
    .locals 0

    return-void
.end method

.method public final startAnimation()V
    .locals 0

    return-void
.end method
