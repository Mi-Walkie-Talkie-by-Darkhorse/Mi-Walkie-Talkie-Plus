.class Lcom/autonavi/ae/gmap/GLMapEngine$1;
.super Ljava/lang/Object;
.source "GLMapEngine.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/ae/gmap/GLMapEngine;-><init>(Landroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/ae/gmap/GLMapEngine;


# direct methods
.method constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine$1;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapAnimationFinish(Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine$1;->this$0:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-static {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->access$000(Lcom/autonavi/ae/gmap/GLMapEngine;Lcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method
