.class public Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopWebView;
.super Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

# interfaces
.implements Lcom/qmuiteam/qmui/nestedScroll/c;


# instance fields
.field private i:Lcom/qmuiteam/qmui/nestedScroll/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopWebView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopWebView;->getScrollOffsetRange()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez p1, :cond_0

    neg-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v2, v0}, Landroid/webkit/WebView;->scrollBy(II)V

    sub-int/2addr p1, v0

    return p1
.end method

.method public a(Lcom/qmuiteam/qmui/nestedScroll/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopWebView;->i:Lcom/qmuiteam/qmui/nestedScroll/b$a;

    return-void
.end method

.method public getCurrentScroll()I
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopWebView;->getScrollOffsetRange()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getScrollOffsetRange()I
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->onScrollChanged(IIII)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopWebView;->i:Lcom/qmuiteam/qmui/nestedScroll/b$a;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopWebView;->getCurrentScroll()I

    move-result p2

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopWebView;->getScrollOffsetRange()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/qmuiteam/qmui/nestedScroll/b$a;->a(II)V

    :cond_0
    return-void
.end method
