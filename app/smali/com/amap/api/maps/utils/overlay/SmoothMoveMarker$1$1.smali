.class Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;
.super Ljava/util/TimerTask;
.source "SmoothMoveMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$000(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$908(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)I

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$908(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)I

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;->move(D)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
