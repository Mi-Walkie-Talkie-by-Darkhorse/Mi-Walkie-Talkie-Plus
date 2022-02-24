.class Lcom/autonavi/ae/gmap/GLMapEngine$14;
.super Ljava/lang/Object;
.source "GLMapEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/GLMapEngine;->onScenicActive(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

.field final synthetic val$engineID:I

.field final synthetic val$finfor:Lcom/autonavi/ae/gmap/scenic/ScenicInfor;


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;ILcom/autonavi/ae/gmap/scenic/ScenicInfor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$14;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput p2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$14;->val$engineID:I

    iput-object p3, p0, Lcom/autonavi/ae/gmap/GLMapEngine$14;->val$finfor:Lcom/autonavi/ae/gmap/scenic/ScenicInfor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$14;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$1000(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/ae/gmap/scenic/ScenicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$14;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$1000(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/ae/gmap/scenic/ScenicListener;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$14;->val$engineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine$14;->val$finfor:Lcom/autonavi/ae/gmap/scenic/ScenicInfor;

    invoke-interface {v0, v1, v2}, Lcom/autonavi/ae/gmap/scenic/ScenicListener;->onScenicActive(ILcom/autonavi/ae/gmap/scenic/ScenicInfor;)V

    :cond_0
    return-void
.end method
