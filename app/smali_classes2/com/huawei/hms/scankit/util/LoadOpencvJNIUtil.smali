.class public Lcom/huawei/hms/scankit/util/LoadOpencvJNIUtil;
.super Ljava/lang/Object;
.source "LoadOpencvJNIUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadOpencvJNIUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static QuadFitting([FI[F)[F
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/scankit/util/OpencvJNI;->QuadFitting([FI[F)[F

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static adaptivebinary([BIII)[B
    .locals 0

    if-eqz p0, :cond_0

    if-lt p1, p3, :cond_0

    if-lt p2, p3, :cond_0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/huawei/hms/scankit/util/OpencvJNI;->adaptiveBinary([BIII)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static imageResize([BIIII)[B
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/hms/scankit/util/OpencvJNI;->imageResize([BIIII)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static imageRotate([BIIIIFD)[B
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/huawei/hms/scankit/util/OpencvJNI;->imageRotate([BIIIIFD)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static multiBarcodeDetect([BIIIZ)[F
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/hms/scankit/util/OpencvJNI;->multiBarcodeDetect([BIIIZ)[F

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static setModel([BI[FI[BI)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/huawei/hms/scankit/util/OpencvJNI;->setModel([BI[FI[BI)V

    :cond_0
    return-void
.end method
