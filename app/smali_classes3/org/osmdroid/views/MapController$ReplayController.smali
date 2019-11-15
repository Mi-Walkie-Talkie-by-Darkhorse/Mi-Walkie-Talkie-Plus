.class Lorg/osmdroid/views/MapController$ReplayController;
.super Ljava/lang/Object;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplayController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;
    }
.end annotation


# instance fields
.field private mReplayList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/osmdroid/views/MapController;


# direct methods
.method private constructor <init>(Lorg/osmdroid/views/MapController;)V
    .locals 1

    iput-object p1, p0, Lorg/osmdroid/views/MapController$ReplayController;->this$0:Lorg/osmdroid/views/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/views/MapController;Lorg/osmdroid/views/MapController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapController$ReplayController;-><init>(Lorg/osmdroid/views/MapController;)V

    return-void
.end method


# virtual methods
.method public animateTo(II)V
    .locals 5

    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$ReplayType;->AnimateToPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateTo(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$ReplayType;->AnimateToGeoPoint:Lorg/osmdroid/views/MapController$ReplayType;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public replayCalls()V
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$1;->$SwitchMap$org$osmdroid$views$MapController$ReplayType:[I

    invoke-static {v0}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$100(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/views/MapController$ReplayType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/osmdroid/views/MapController$ReplayType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lorg/osmdroid/views/MapController$ReplayController;->this$0:Lorg/osmdroid/views/MapController;

    invoke-static {v0}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$200(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/osmdroid/views/MapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lorg/osmdroid/views/MapController$ReplayController;->this$0:Lorg/osmdroid/views/MapController;

    invoke-static {v0}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$300(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$300(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v0}, Lorg/osmdroid/views/MapController;->animateTo(II)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lorg/osmdroid/views/MapController$ReplayController;->this$0:Lorg/osmdroid/views/MapController;

    invoke-static {v0}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$200(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/osmdroid/views/MapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lorg/osmdroid/views/MapController$ReplayController;->this$0:Lorg/osmdroid/views/MapController;

    invoke-static {v0}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$300(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;->access$300(Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v0}, Lorg/osmdroid/views/MapController;->zoomToSpan(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCenter(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$ReplayType;->SetCenterPoint:Lorg/osmdroid/views/MapController$ReplayType;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zoomToSpan(DD)V
    .locals 9

    const-wide v6, 0x412e848000000000L    # 1000000.0

    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$ReplayType;->ZoomToSpanPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v3, Landroid/graphics/Point;

    mul-double v4, p1, v6

    double-to-int v4, v4

    mul-double/2addr v6, p3

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zoomToSpan(II)V
    .locals 5

    iget-object v0, p0, Lorg/osmdroid/views/MapController$ReplayController;->mReplayList:Ljava/util/LinkedList;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;

    sget-object v2, Lorg/osmdroid/views/MapController$ReplayType;->ZoomToSpanPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/osmdroid/views/MapController$ReplayController$ReplayClass;-><init>(Lorg/osmdroid/views/MapController$ReplayController;Lorg/osmdroid/views/MapController$ReplayType;Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
