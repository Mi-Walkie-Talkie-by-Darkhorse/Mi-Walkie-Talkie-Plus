.class Lde/hdodenhof/circleimageview/CircleImageView$a;
.super Landroid/view/ViewOutlineProvider;
.source "CircleImageView.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/hdodenhof/circleimageview/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lde/hdodenhof/circleimageview/CircleImageView;


# direct methods
.method private constructor <init>(Lde/hdodenhof/circleimageview/CircleImageView;)V
    .locals 0

    iput-object p1, p0, Lde/hdodenhof/circleimageview/CircleImageView$a;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/hdodenhof/circleimageview/CircleImageView;Lde/hdodenhof/circleimageview/CircleImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/hdodenhof/circleimageview/CircleImageView$a;-><init>(Lde/hdodenhof/circleimageview/CircleImageView;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lde/hdodenhof/circleimageview/CircleImageView$a;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v1}, Lde/hdodenhof/circleimageview/CircleImageView;->a(Lde/hdodenhof/circleimageview/CircleImageView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
