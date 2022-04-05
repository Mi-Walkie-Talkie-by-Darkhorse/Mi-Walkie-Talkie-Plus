.class public Lcom/ifengyu/intercom/lite/widget/WindowInsetLinearLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/qmuiteam/qmui/widget/c;


# instance fields
.field protected a:Lcom/qmuiteam/qmui/util/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/lite/widget/WindowInsetLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/lite/widget/WindowInsetLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/qmuiteam/qmui/util/o;

    invoke-direct {p1, p0, p0}, Lcom/qmuiteam/qmui/util/o;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/c;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/widget/WindowInsetLinearLayout;->a:Lcom/qmuiteam/qmui/util/o;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/WindowInsetLinearLayout;->a:Lcom/qmuiteam/qmui/util/o;

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/util/o;->a(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/widget/WindowInsetLinearLayout;->a:Lcom/qmuiteam/qmui/util/o;

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/util/o;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/widget/WindowInsetLinearLayout;->a(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->S(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->S(Landroid/view/View;)V

    return-void
.end method
