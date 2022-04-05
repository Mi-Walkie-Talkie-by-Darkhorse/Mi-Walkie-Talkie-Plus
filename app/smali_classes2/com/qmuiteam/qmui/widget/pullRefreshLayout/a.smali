.class public Lcom/qmuiteam/qmui/widget/pullRefreshLayout/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIIII)I
    .locals 0

    if-lt p4, p6, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    if-gt p4, p5, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p4, p5

    int-to-float p3, p4

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float p3, p3, p4

    sub-int/2addr p6, p5

    int-to-float p4, p6

    div-float/2addr p3, p4

    int-to-float p4, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float p3, p3, p1

    add-float/2addr p4, p3

    float-to-int p1, p4

    :goto_0
    return p1
.end method
