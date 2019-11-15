.class public final enum Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;
.super Ljava/lang/Enum;
.source "SimpleFastPointOverlayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

.field public static final enum DENSITY_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

.field public static final enum ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    const-string v1, "ZOOM_THRESHOLD"

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    new-instance v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    const-string v1, "DENSITY_THRESHOLD"

    invoke-direct {v0, v1, v3}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->DENSITY_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->DENSITY_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->$VALUES:[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;
    .locals 1

    const-class v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    return-object v0
.end method

.method public static values()[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;
    .locals 1

    sget-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->$VALUES:[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    invoke-virtual {v0}, [Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    return-object v0
.end method
