.class public Lcom/xiaomi/utils/PerformanceDetect;
.super Ljava/lang/Object;
.source "PerformanceDetect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceDetect"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static timeUsedToFilter()J
    .locals 2

    const-string v0, "PerformanceDetect"

    const-string v1, "time used to filter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/utils/PerformanceDetect;->timeUsedToFilterJni()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native timeUsedToFilterJni()J
.end method

.method public static timeUsedToSmooth()J
    .locals 2

    const-string v0, "PerformanceDetect"

    const-string v1, "time used to smooth"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/utils/PerformanceDetect;->timeUsedToSmoothJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public static timeUsedToSmoothFilter()J
    .locals 2

    const-string v0, "PerformanceDetect"

    const-string v1, "time used to smooth filter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/utils/PerformanceDetect;->timeUsedToSmoothFilterJni()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native timeUsedToSmoothFilterJni()J
.end method

.method private static native timeUsedToSmoothJni()J
.end method

.method public static timeUsedToSmoothStickerRender()J
    .locals 2

    const-string v0, "PerformanceDetect"

    const-string v1, "time used to smooth sticker render"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/utils/PerformanceDetect;->timeUsedToSmoothStickerRenderJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public static timeUsedToSmoothStickerRenderFilter()J
    .locals 2

    const-string v0, "PerformanceDetect"

    const-string v1, "time used to smooth sticker render filter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/utils/PerformanceDetect;->timeUsedToSmoothStickerRenderFilterJni()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native timeUsedToSmoothStickerRenderFilterJni()J
.end method

.method private static native timeUsedToSmoothStickerRenderJni()J
.end method

.method public static timeUsedToStickerRender()J
    .locals 2

    const-string v0, "PerformanceDetect"

    const-string v1, "time used to sticker render"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/utils/PerformanceDetect;->timeUsedToStickerRenderJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public static timeUsedToStickerRenderFilter()J
    .locals 2

    const-string v0, "PerformanceDetect"

    const-string v1, "time used to sticker render filter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/utils/PerformanceDetect;->timeUsedToStickerRenderFilterJni()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native timeUsedToStickerRenderFilterJni()J
.end method

.method private static native timeUsedToStickerRenderJni()J
.end method
