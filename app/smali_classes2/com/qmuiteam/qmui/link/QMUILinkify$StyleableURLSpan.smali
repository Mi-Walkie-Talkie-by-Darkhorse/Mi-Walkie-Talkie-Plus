.class abstract Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;
.super Landroid/text/style/URLSpan;

# interfaces
.implements Lcom/qmuiteam/qmui/link/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/link/QMUILinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StyleableURLSpan"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Lcom/qmuiteam/qmui/span/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qmuiteam/qmui/span/c;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->a:Z

    iput-object p1, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->c:Lcom/qmuiteam/qmui/span/c;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->a:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->c:Lcom/qmuiteam/qmui/span/c;

    iget-object v1, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/span/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    return-void
.end method
