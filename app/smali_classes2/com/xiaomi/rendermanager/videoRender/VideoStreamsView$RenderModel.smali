.class public final enum Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;
.super Ljava/lang/Enum;
.source "VideoStreamsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

.field public static final enum RENDER_MODEL_AUTO:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

.field public static final enum RENDER_MODEL_CUT:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

.field public static final enum RENDER_MODEL_FIT:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    const-string v1, "RENDER_MODEL_AUTO"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_AUTO:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    new-instance v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    const-string v1, "RENDER_MODEL_FIT"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_FIT:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    new-instance v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    const-string v1, "RENDER_MODEL_CUT"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_CUT:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    sget-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_AUTO:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_FIT:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->RENDER_MODEL_CUT:Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->$VALUES:[Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;
    .locals 1

    const-class v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;
    .locals 1

    sget-object v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->$VALUES:[Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    invoke-virtual {v0}, [Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;

    return-object v0
.end method
