.class public Lcom/ifengyu/intercom/lite/c/b/g;
.super Lcom/ifengyu/intercom/lite/c/a/a;
.source "SlideVerifyDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/lite/c/b/g$b;,
        Lcom/ifengyu/intercom/lite/c/b/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/lite/c/a/a<",
        "Lcom/ifengyu/intercom/lite/c/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field private t:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

.field private u:Landroid/webkit/WebView;

.field private v:Lcom/ifengyu/intercom/lite/c/b/g$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/c/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/c/b/g;)Lcom/ifengyu/intercom/lite/c/b/g$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/c/b/g;->v:Lcom/ifengyu/intercom/lite/c/b/g$c;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/c/b/g;)Lcom/qmuiteam/qmui/widget/dialog/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0c013b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900e7

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/g;->t:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    const p2, 0x7f0904d5

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/g;->u:Landroid/webkit/WebView;

    .line 6
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/g;->u:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 8
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/g;->u:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 9
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/g;->u:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 10
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/g;->u:Landroid/webkit/WebView;

    new-instance p3, Lcom/ifengyu/intercom/lite/c/b/g$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/ifengyu/intercom/lite/c/b/g$b;-><init>(Lcom/ifengyu/intercom/lite/c/b/g;Lcom/ifengyu/intercom/lite/c/b/g$a;)V

    const-string v0, "androidBridge"

    invoke-virtual {p2, p3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/g;->u:Landroid/webkit/WebView;

    const-string p3, "https://m.ifengyu.com/resources/codesms.html"

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Lcom/ifengyu/intercom/lite/c/b/g$c;)Lcom/ifengyu/intercom/lite/c/b/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/g;->v:Lcom/ifengyu/intercom/lite/c/b/g$c;

    return-object p0
.end method

.method protected a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x11

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    const p2, 0x7f120365

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    return-void
.end method

.method protected c(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    const p2, 0x7f09031e

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setId(I)V

    .line 4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    const v0, 0x7f04042a

    .line 5
    invoke-static {p3, v0}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2, v2, p2, v1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->a(IIII)V

    const p2, 0x7f040355

    .line 7
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 8
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object p2

    const v1, 0x7f04042b

    .line 9
    invoke-static {p3, v1}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/qmuiteam/qmui/c/h;->d(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 10
    invoke-static {p3, v0}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/c/h;->b(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 11
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 12
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/c/h;->d()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
