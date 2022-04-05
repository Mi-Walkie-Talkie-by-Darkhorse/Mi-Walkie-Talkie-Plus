.class Lcom/autonavi/ae/gmap/GLMapEngine$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/GLMapEngine;->startPivotZoomRotateAnim(ILandroid/graphics/Point;FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

.field final synthetic val$engineID:I

.field final synthetic val$pivot:Landroid/graphics/Point;

.field final synthetic val$time:I

.field final synthetic val$toMapLevel:I

.field final synthetic val$zoomer:F


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;ILandroid/graphics/Point;IFI)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput p2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$engineID:I

    iput-object p3, p0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$pivot:Landroid/graphics/Point;

    iput p4, p0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$time:I

    iput p5, p0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$zoomer:F

    iput p6, p0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$toMapLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$engineID:I

    iget-object v2, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$100(Lcom/autonavi/ae/gmap/GLMapEngine;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$500(IJ)V

    iget-object v1, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$pivot:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$engineID:I

    iget-object v1, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$100(Lcom/autonavi/ae/gmap/GLMapEngine;)J

    move-result-wide v3

    iget v5, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$time:I

    iget v6, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$zoomer:F

    iget v7, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$toMapLevel:I

    iget-object v1, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$pivot:Landroid/graphics/Point;

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-static/range {v2 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$600(IJIFIII)V

    return-void

    :cond_0
    iget v10, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$engineID:I

    iget-object v1, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$100(Lcom/autonavi/ae/gmap/GLMapEngine;)J

    move-result-wide v11

    iget v13, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$time:I

    iget v14, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$zoomer:F

    iget v15, v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;->val$toMapLevel:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$600(IJIFIII)V

    return-void
.end method
