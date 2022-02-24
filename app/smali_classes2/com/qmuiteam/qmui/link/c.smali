.class public Lcom/qmuiteam/qmui/link/c;
.super Landroid/text/method/LinkMovementMethod;
.source "QMUILinkTouchMovementMethod.java"


# static fields
.field private static a:Lcom/qmuiteam/qmui/link/c;

.field private static b:Lcom/qmuiteam/qmui/link/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/link/b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/link/b;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/link/c;->b:Lcom/qmuiteam/qmui/link/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/link/c;->a:Lcom/qmuiteam/qmui/link/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/link/c;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/link/c;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/link/c;->a:Lcom/qmuiteam/qmui/link/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/qmuiteam/qmui/link/c;->a:Lcom/qmuiteam/qmui/link/c;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/link/c;->b:Lcom/qmuiteam/qmui/link/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qmuiteam/qmui/link/b;->b(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
