.class public Lorg/metalev/multitouch/controller/MultiTouchController;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;,
        Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;,
        Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ACTION_POINTER_INDEX_SHIFT:I = 0x0

.field private static ACTION_POINTER_UP:I = 0x0

.field public static final DEBUG:Z = false

.field private static final EVENT_SETTLE_TIME_INTERVAL:J = 0x14L

.field private static final MAX_MULTITOUCH_DIM_JUMP_SIZE:F = 40.0f

.field private static final MAX_MULTITOUCH_POS_JUMP_SIZE:F = 30.0f

.field public static final MAX_TOUCH_POINTS:I = 0x14

.field private static final MIN_MULTITOUCH_SEPARATION:F = 30.0f

.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_NOTHING:I = 0x0

.field private static final MODE_PINCH:I = 0x2

.field private static m_getHistoricalPressure:Ljava/lang/reflect/Method;

.field private static m_getHistoricalX:Ljava/lang/reflect/Method;

.field private static m_getHistoricalY:Ljava/lang/reflect/Method;

.field private static m_getPointerCount:Ljava/lang/reflect/Method;

.field private static m_getPointerId:Ljava/lang/reflect/Method;

.field private static m_getPressure:Ljava/lang/reflect/Method;

.field private static m_getX:Ljava/lang/reflect/Method;

.field private static m_getY:Ljava/lang/reflect/Method;

.field public static final multiTouchSupported:Z

.field private static final pointerIds:[I

.field private static final pressureVals:[F

.field private static final xVals:[F

.field private static final yVals:[F


# instance fields
.field private handleSingleTouchEvents:Z

.field private mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

.field private mCurrPtAng:F

.field private mCurrPtDiam:F

.field private mCurrPtHeight:F

.field private mCurrPtWidth:F

.field private mCurrPtX:F

.field private mCurrPtY:F

.field private mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

.field private mMode:I

.field private mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

.field private mSettleEndTime:J

.field private mSettleStartTime:J

.field objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startAngleMinusPinchAngle:F

.field private startPosX:F

.field private startPosY:F

.field private startScaleOverPinchDiam:F

.field private startScaleXOverPinchWidth:F

.field private startScaleYOverPinchHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    sput v2, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_UP:I

    const/16 v2, 0x8

    sput v2, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerId:Ljava/lang/reflect/Method;

    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalX"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalY"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalPressure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v0, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    sget-boolean v0, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    if-eqz v0, :cond_0

    :try_start_1
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_UP:I

    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    new-array v0, v7, [F

    sput-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    new-array v0, v7, [F

    sput-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    new-array v0, v7, [F

    sput-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    new-array v0, v7, [I

    sput-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->pointerIds:[I

    return-void

    :catch_0
    move-exception v0

    const-string v2, "MultiTouchController"

    const-string v3, "static initializer failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/metalev/multitouch/controller/MultiTouchController;-><init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-direct {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;-><init>()V

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    const/4 v0, 0x0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    iput-boolean p2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    iput-object p1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    return-void
.end method

.method private anchorAtThisPositionAndScale()V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-interface {v0, v2, v3}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->getPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)V

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$000(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    div-float v0, v1, v0

    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->extractCurrPtInfo()V

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtX:F

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v2}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$500(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosX:F

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtY:F

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v2}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$600(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosY:F

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtDiam:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleOverPinchDiam:F

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$700(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleXOverPinchWidth:F

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$800(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleYOverPinchHeight:F

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$900(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtAng:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startAngleMinusPinchAngle:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    goto :goto_1
.end method

.method private decodeTouchEvent(I[F[F[F[IIZJ)V
    .locals 10

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    iput-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->access$300(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V

    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchController()V

    return-void
.end method

.method private extractCurrPtInfo()V
    .locals 4

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtX:F

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtY:F

    const v2, 0x41aa6666    # 21.3f

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$000(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtDiam:F

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$100(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtWidth:F

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$100(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtHeight:F

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$200(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtAng:F

    return-void

    :cond_0
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchDiameter()F

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchAngle()F

    move-result v1

    goto :goto_3
.end method

.method private multiTouchController()V
    .locals 7

    const/4 v1, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const-wide/16 v2, 0x14

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v1}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->getDraggableObjectAtPoint(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V

    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    iget-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->performDragOrPinch()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_5

    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    iget-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    :cond_7
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    iget-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->access$1000(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->performDragOrPinch()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDragOrPinch()V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$000(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->extractCurrPtInfo()V

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtX:F

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosX:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtY:F

    iget v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosY:F

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleOverPinchDiam:F

    iget v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtDiam:F

    mul-float/2addr v3, v0

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleXOverPinchWidth:F

    iget v4, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtWidth:F

    mul-float/2addr v4, v0

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleYOverPinchHeight:F

    iget v5, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtHeight:F

    mul-float/2addr v5, v0

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startAngleMinusPinchAngle:F

    iget v6, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtAng:F

    add-float/2addr v6, v0

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-virtual/range {v0 .. v6}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->set(FFFFFF)V

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2, v3}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->setPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method protected getHandleSingleTouchEvents()Z
    .locals 1

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    return v0
.end method

.method public isPinching()Z
    .locals 2

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    :try_start_0
    sget-boolean v0, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    div-int v12, v0, v1

    const/4 v0, 0x0

    move v11, v0

    :goto_2
    if-gt v11, v12, :cond_10

    if-ge v11, v12, :cond_4

    const/4 v0, 0x1

    move v8, v0

    :goto_3
    sget-boolean v0, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_8

    :cond_2
    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    :goto_4
    aput v0, v2, v3

    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    :goto_5
    aput v0, v2, v3

    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_7

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v0

    :goto_6
    aput v0, v2, v3

    :cond_3
    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    sget-object v3, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    sget-object v5, Lorg/metalev/multitouch/controller/MultiTouchController;->pointerIds:[I

    if-eqz v8, :cond_c

    const/4 v6, 0x2

    :goto_7
    if-eqz v8, :cond_d

    const/4 v7, 0x1

    :goto_8
    if-eqz v8, :cond_f

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    :goto_9
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/metalev/multitouch/controller/MultiTouchController;->decodeTouchEvent(I[F[F[F[IIZJ)V

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    goto :goto_6

    :cond_8
    const/16 v0, 0x14

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_a
    if-ge v2, v3, :cond_3

    sget-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerId:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->pointerIds:[I

    aput v0, v4, v2

    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    if-eqz v8, :cond_9

    sget-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v2

    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    if-eqz v8, :cond_a

    sget-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v2

    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    if-eqz v8, :cond_b

    sget-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_a

    :cond_9
    sget-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    :cond_a
    sget-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_b
    sget-object v0, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_c
    move v6, v10

    goto/16 :goto_7

    :cond_d
    const/4 v0, 0x1

    if-eq v10, v0, :cond_e

    const/4 v0, 0x1

    sget v7, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    shl-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v10

    sget v7, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_UP:I

    if-eq v0, v7, :cond_e

    const/4 v0, 0x3

    if-eq v10, v0, :cond_e

    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto/16 :goto_9

    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MultiTouchController"

    const-string v2, "onTouchEvent() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method protected setHandleSingleTouchEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    return-void
.end method
