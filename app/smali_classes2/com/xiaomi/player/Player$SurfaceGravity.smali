.class public final enum Lcom/xiaomi/player/Player$SurfaceGravity;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/player/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SurfaceGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/player/Player$SurfaceGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/player/Player$SurfaceGravity;

.field public static final enum SurfaceGravityResizeAspect:Lcom/xiaomi/player/Player$SurfaceGravity;

.field public static final enum SurfaceGravityResizeAspectFill:Lcom/xiaomi/player/Player$SurfaceGravity;

.field public static final enum SurfaceGravityResizeAspectFit:Lcom/xiaomi/player/Player$SurfaceGravity;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/player/Player$SurfaceGravity;

    const-string v1, "SurfaceGravityResizeAspect"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/player/Player$SurfaceGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/Player$SurfaceGravity;->SurfaceGravityResizeAspect:Lcom/xiaomi/player/Player$SurfaceGravity;

    new-instance v0, Lcom/xiaomi/player/Player$SurfaceGravity;

    const-string v1, "SurfaceGravityResizeAspectFit"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/player/Player$SurfaceGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/Player$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/player/Player$SurfaceGravity;

    new-instance v0, Lcom/xiaomi/player/Player$SurfaceGravity;

    const-string v1, "SurfaceGravityResizeAspectFill"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/player/Player$SurfaceGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/Player$SurfaceGravity;->SurfaceGravityResizeAspectFill:Lcom/xiaomi/player/Player$SurfaceGravity;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/player/Player$SurfaceGravity;

    sget-object v1, Lcom/xiaomi/player/Player$SurfaceGravity;->SurfaceGravityResizeAspect:Lcom/xiaomi/player/Player$SurfaceGravity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/player/Player$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/player/Player$SurfaceGravity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/player/Player$SurfaceGravity;->SurfaceGravityResizeAspectFill:Lcom/xiaomi/player/Player$SurfaceGravity;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/player/Player$SurfaceGravity;->$VALUES:[Lcom/xiaomi/player/Player$SurfaceGravity;

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

    iput p3, p0, Lcom/xiaomi/player/Player$SurfaceGravity;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/player/Player$SurfaceGravity;
    .locals 1

    const-class v0, Lcom/xiaomi/player/Player$SurfaceGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/player/Player$SurfaceGravity;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/player/Player$SurfaceGravity;
    .locals 1

    sget-object v0, Lcom/xiaomi/player/Player$SurfaceGravity;->$VALUES:[Lcom/xiaomi/player/Player$SurfaceGravity;

    invoke-virtual {v0}, [Lcom/xiaomi/player/Player$SurfaceGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/player/Player$SurfaceGravity;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/player/Player$SurfaceGravity;->code:I

    return v0
.end method
