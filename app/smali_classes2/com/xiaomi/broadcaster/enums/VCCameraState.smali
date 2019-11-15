.class public final enum Lcom/xiaomi/broadcaster/enums/VCCameraState;
.super Ljava/lang/Enum;
.source "VCCameraState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/broadcaster/enums/VCCameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/broadcaster/enums/VCCameraState;

.field public static final enum VCCameraStateBack:Lcom/xiaomi/broadcaster/enums/VCCameraState;

.field public static final enum VCCameraStateFront:Lcom/xiaomi/broadcaster/enums/VCCameraState;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCCameraState;

    const-string v1, "VCCameraStateFront"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/broadcaster/enums/VCCameraState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCCameraState;->VCCameraStateFront:Lcom/xiaomi/broadcaster/enums/VCCameraState;

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCCameraState;

    const-string v1, "VCCameraStateBack"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/broadcaster/enums/VCCameraState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCCameraState;->VCCameraStateBack:Lcom/xiaomi/broadcaster/enums/VCCameraState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/broadcaster/enums/VCCameraState;

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCCameraState;->VCCameraStateFront:Lcom/xiaomi/broadcaster/enums/VCCameraState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCCameraState;->VCCameraStateBack:Lcom/xiaomi/broadcaster/enums/VCCameraState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCCameraState;->$VALUES:[Lcom/xiaomi/broadcaster/enums/VCCameraState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/broadcaster/enums/VCCameraState;->nCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/broadcaster/enums/VCCameraState;
    .locals 1

    const-class v0, Lcom/xiaomi/broadcaster/enums/VCCameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/broadcaster/enums/VCCameraState;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/broadcaster/enums/VCCameraState;
    .locals 1

    sget-object v0, Lcom/xiaomi/broadcaster/enums/VCCameraState;->$VALUES:[Lcom/xiaomi/broadcaster/enums/VCCameraState;

    invoke-virtual {v0}, [Lcom/xiaomi/broadcaster/enums/VCCameraState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/broadcaster/enums/VCCameraState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/xiaomi/broadcaster/enums/VCCameraState;->nCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
