.class public final enum Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/ScaleBarOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitsOfMeasure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

.field public static final enum imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

.field public static final enum metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

.field public static final enum nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const/4 v1, 0x0

    const-string v2, "metric"

    invoke-direct {v0, v2, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    new-instance v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const/4 v2, 0x1

    const-string v3, "imperial"

    invoke-direct {v0, v3, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    new-instance v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const/4 v3, 0x2

    const-string v4, "nautical"

    invoke-direct {v0, v4, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v5, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    aput-object v5, v4, v1

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->$VALUES:[Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

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

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    .locals 1

    const-class v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    .locals 1

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->$VALUES:[Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0}, [Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    return-object v0
.end method
