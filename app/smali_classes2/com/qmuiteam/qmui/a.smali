.class public Lcom/qmuiteam/qmui/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/view/animation/Interpolator;

.field public static final b:Landroid/view/animation/Interpolator;

.field public static final c:Landroid/view/animation/Interpolator;

.field public static final d:Landroid/view/animation/Interpolator;

.field public static final e:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/a;->a:Landroid/view/animation/Interpolator;

    new-instance v0, La/e/a/a/b;

    invoke-direct {v0}, La/e/a/a/b;-><init>()V

    new-instance v0, La/e/a/a/a;

    invoke-direct {v0}, La/e/a/a/a;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/a;->b:Landroid/view/animation/Interpolator;

    new-instance v0, La/e/a/a/c;

    invoke-direct {v0}, La/e/a/a/c;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/a;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/a;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    new-instance v0, Lcom/qmuiteam/qmui/a$a;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/a$a;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method
