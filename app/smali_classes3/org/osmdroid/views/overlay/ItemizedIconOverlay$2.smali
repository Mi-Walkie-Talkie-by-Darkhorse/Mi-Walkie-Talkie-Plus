.class Lorg/osmdroid/views/overlay/ItemizedIconOverlay$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/overlay/ItemizedIconOverlay;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/ItemizedIconOverlay;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$2;->this$0:Lorg/osmdroid/views/overlay/ItemizedIconOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(I)Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$2;->this$0:Lorg/osmdroid/views/overlay/ItemizedIconOverlay;

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->onLongPressHelper(ILorg/osmdroid/views/overlay/OverlayItem;)Z

    move-result p1

    return p1
.end method
