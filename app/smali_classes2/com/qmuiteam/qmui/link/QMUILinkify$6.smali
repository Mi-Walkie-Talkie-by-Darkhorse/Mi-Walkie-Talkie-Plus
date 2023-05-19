.class final Lcom/qmuiteam/qmui/link/QMUILinkify$6;
.super Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;
.source "QMUILinkify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/link/QMUILinkify;->b(Ljava/lang/String;IILandroid/text/Spannable;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Lcom/qmuiteam/qmui/span/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/res/ColorStateList;

.field final synthetic e:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/qmuiteam/qmui/span/c;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$6;->d:Landroid/content/res/ColorStateList;

    iput-object p4, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$6;->e:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;-><init>(Ljava/lang/String;Lcom/qmuiteam/qmui/span/c;)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$6;->d:Landroid/content/res/ColorStateList;

    const v1, 0x10100a7

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    new-array v5, v3, [I

    .line 2
    fill-array-data v5, :array_0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 3
    iget-object v5, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$6;->d:Landroid/content/res/ColorStateList;

    new-array v6, v2, [I

    aput v1, v6, v4

    invoke-virtual {v5, v6, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 4
    iget-boolean v6, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->a:Z

    if-eqz v6, :cond_0

    move v0, v5

    :cond_0
    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$6;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    new-array v3, v3, [I

    .line 6
    fill-array-data v3, :array_1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 7
    iget-object v3, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$6;->e:Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput v1, v2, v4

    invoke-virtual {v3, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 8
    iget-boolean v2, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->a:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 9
    :cond_3
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 10
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data
.end method
