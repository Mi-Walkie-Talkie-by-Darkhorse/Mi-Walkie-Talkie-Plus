.class public Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;
.super Landroid/graphics/Point;
.source "SimpleFastPointOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LabelledPoint"
.end annotation


# instance fields
.field private mlabel:Ljava/lang/String;

.field final synthetic this$0:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;Landroid/graphics/Point;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->this$0:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;

    invoke-direct {p0, p2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->mlabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->mlabel:Ljava/lang/String;

    return-object v0
.end method
