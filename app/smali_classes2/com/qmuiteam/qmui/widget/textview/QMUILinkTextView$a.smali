.class Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$a;
.super Landroid/os/Handler;
.source "QMUILinkTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$a;->a:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkTextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4
    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$a;->a:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->h(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;)Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel:"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$a;->a:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->h(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;)Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "mailto:"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$a;->a:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->h(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;)Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "http"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$a;->a:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->h(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;)Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$b;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
