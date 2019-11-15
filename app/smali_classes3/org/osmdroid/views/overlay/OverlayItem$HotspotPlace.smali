.class public final enum Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
.super Ljava/lang/Enum;
.source "OverlayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/OverlayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HotspotPlace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum LEFT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum LOWER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum LOWER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum NONE:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum RIGHT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum TOP_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum UPPER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum UPPER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->NONE:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v4}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "BOTTOM_CENTER"

    invoke-direct {v0, v1, v5}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "TOP_CENTER"

    invoke-direct {v0, v1, v6}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->TOP_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "RIGHT_CENTER"

    invoke-direct {v0, v1, v7}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->RIGHT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "LEFT_CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LEFT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "UPPER_RIGHT_CORNER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->UPPER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "LOWER_RIGHT_CORNER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LOWER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "UPPER_LEFT_CORNER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->UPPER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "LOWER_LEFT_CORNER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LOWER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->NONE:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v1, v0, v3

    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v1, v0, v4

    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v1, v0, v5

    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->TOP_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v1, v0, v6

    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->RIGHT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LEFT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->UPPER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LOWER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->UPPER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LOWER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v2, v0, v1

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->$VALUES:[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

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

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    .locals 1

    const-class v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    return-object v0
.end method

.method public static values()[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    .locals 1

    sget-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->$VALUES:[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v0}, [Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    return-object v0
.end method
