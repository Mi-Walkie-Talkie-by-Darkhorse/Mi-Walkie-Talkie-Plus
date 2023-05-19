.class Lcom/autonavi/ae/gmap/GLMapEngine$15;
.super Ljava/lang/Object;
.source "GLMapEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/GLMapEngine;->setMapDataConrol(IIIII[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

.field final synthetic val$dataType:I

.field final synthetic val$delMode:I

.field final synthetic val$engineID:I

.field final synthetic val$jsonBuffer:[B

.field final synthetic val$requestMode:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;IIIII[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput p2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$engineID:I

    iput p3, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$type:I

    iput p4, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$delMode:I

    iput p5, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$requestMode:I

    iput p6, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$dataType:I

    iput-object p7, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$jsonBuffer:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$engineID:I

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$100(Lcom/autonavi/ae/gmap/GLMapEngine;)J

    move-result-wide v1

    iget v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$type:I

    iget v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$delMode:I

    iget v5, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$requestMode:I

    iget v6, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$dataType:I

    iget-object v7, p0, Lcom/autonavi/ae/gmap/GLMapEngine$15;->val$jsonBuffer:[B

    invoke-static/range {v0 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$1100(IJIIII[B)Z

    return-void
.end method
