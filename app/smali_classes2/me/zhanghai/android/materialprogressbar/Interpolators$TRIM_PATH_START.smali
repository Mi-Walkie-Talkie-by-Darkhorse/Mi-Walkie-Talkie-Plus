.class public Lme/zhanghai/android/materialprogressbar/Interpolators$TRIM_PATH_START;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/Interpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRIM_PATH_START"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/view/animation/Interpolator;

.field private static final PATH_TRIM_PATH_START:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/Interpolators$TRIM_PATH_START;->PATH_TRIM_PATH_START:Landroid/graphics/Path;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v3, Lme/zhanghai/android/materialprogressbar/Interpolators$TRIM_PATH_START;->PATH_TRIM_PATH_START:Landroid/graphics/Path;

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sget-object v0, Lme/zhanghai/android/materialprogressbar/Interpolators$TRIM_PATH_START;->PATH_TRIM_PATH_START:Landroid/graphics/Path;

    invoke-static {v0}, Landroidx/core/view/e0/b;->a(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/materialprogressbar/Interpolators$TRIM_PATH_START;->INSTANCE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
