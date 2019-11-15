.class Lcom/autonavi/amap/mapcore/animation/GLAnimation$1;
.super Ljava/lang/Object;
.source "GLAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setListenerHandler(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;


# direct methods
.method constructor <init>(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation$1;->this$0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation$1;->this$0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation$1;->this$0:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/animation/Animation$AnimationListener;->onAnimationStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
