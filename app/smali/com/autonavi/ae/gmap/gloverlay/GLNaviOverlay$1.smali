.class Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->setArcInfo(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;

.field final synthetic val$end:I

.field final synthetic val$radius:I

.field final synthetic val$start:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;->this$0:Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;

    iput p2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;->val$radius:I

    iput p3, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;->val$width:I

    iput p4, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;->val$start:I

    iput p5, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;->this$0:Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;

    iget-wide v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    iget v3, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;->val$radius:I

    iget v4, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;->val$width:I

    iget v5, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;->val$start:I

    iget v6, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;->val$end:I

    invoke-static/range {v1 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->access$000(JIIII)V

    return-void
.end method
