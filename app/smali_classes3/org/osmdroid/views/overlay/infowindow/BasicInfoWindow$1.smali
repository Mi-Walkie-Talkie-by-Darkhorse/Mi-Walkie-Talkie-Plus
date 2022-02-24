.class Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;
.super Ljava/lang/Object;
.source "BasicInfoWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;->this$0:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;->this$0:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    :cond_0
    return p2
.end method
