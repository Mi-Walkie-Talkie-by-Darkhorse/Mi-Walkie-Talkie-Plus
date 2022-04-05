.class Lcom/autonavi/ae/gmap/GLMapEngine$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/GLMapEngine;->startPivotZoomAnim(ILandroid/graphics/Point;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

.field final synthetic val$engineID:I

.field final synthetic val$ftime:I

.field final synthetic val$pivot:Landroid/graphics/Point;

.field final synthetic val$zoomer:F


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;ILandroid/graphics/Point;IF)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput p2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$engineID:I

    iput-object p3, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$pivot:Landroid/graphics/Point;

    iput p4, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$ftime:I

    iput p5, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$zoomer:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$engineID:I

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$100(Lcom/autonavi/ae/gmap/GLMapEngine;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$700(IJ)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$pivot:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$engineID:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$100(Lcom/autonavi/ae/gmap/GLMapEngine;)J

    move-result-wide v2

    iget v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$ftime:I

    iget v5, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$zoomer:F

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$pivot:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    invoke-static/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$800(IJIFII)V

    return-void

    :cond_0
    iget v8, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$engineID:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$100(Lcom/autonavi/ae/gmap/GLMapEngine;)J

    move-result-wide v9

    iget v11, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$ftime:I

    iget v12, p0, Lcom/autonavi/ae/gmap/GLMapEngine$11;->val$zoomer:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$800(IJIFII)V

    return-void
.end method
