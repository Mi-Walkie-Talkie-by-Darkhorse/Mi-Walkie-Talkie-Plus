.class public abstract Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;
.super Ljava/lang/Object;
.source "ADGLAnimation.java"


# static fields
.field public static final DEFAULT_ANIMATION_ID:I = -0x1

.field public static final DEFAULT_DURATION:I = 0xfa

.field public static final INVALIDE_VALUE:I = -0x270f

.field public static final Interpolator_Accelerate:I = 0x1

.field public static final Interpolator_AccelerateDecelerate:I = 0x3

.field public static final Interpolator_Bounce:I = 0x4

.field public static final Interpolator_Decelerate:I = 0x2

.field public static final Interpolator_Double_Raise:I = 0x6

.field public static final Interpolator_Linear:I = 0x0

.field public static final Interpolator_Overshoot:I = 0x5


# instance fields
.field protected _duration:I

.field protected _isOver:Z

.field protected _offsetTime:J

.field protected _startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_offsetTime:J

    return-void
.end method


# virtual methods
.method public abstract doAnimation(Ljava/lang/Object;)V
.end method

.method public isOver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
