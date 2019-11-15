.class public Lorg/osmdroid/views/MapController$ZoomAnimationListener;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ZoomAnimationListener"
.end annotation


# instance fields
.field private mMapController:Lorg/osmdroid/views/MapController;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/MapController$ZoomAnimationListener;->mMapController:Lorg/osmdroid/views/MapController;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapController$ZoomAnimationListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->onAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapController$ZoomAnimationListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->onAnimationStart()V

    return-void
.end method
