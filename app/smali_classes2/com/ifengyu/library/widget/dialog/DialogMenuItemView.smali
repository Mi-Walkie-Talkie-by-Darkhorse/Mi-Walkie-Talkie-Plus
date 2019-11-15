.class public Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;
.super Landroid/widget/RelativeLayout;
.source "DialogMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$CheckItemView;,
        Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$MarkItemView;,
        Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$TextItemView;,
        Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/high16 v1, 0x41a80000    # 21.0f

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a:I

    iput-boolean v2, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->c:Z

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v0

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->setPadding(IIII)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x106000c

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/ifengyu/library/R$color;->black80:I

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    return-void
.end method

.method public getMenuIndex()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a:I

    return v0
.end method

.method public performClick()Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->b:Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->b:Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;

    iget v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a:I

    invoke-interface {v0, v1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;->a(I)V

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->c:Z

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->c:Z

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a(Z)V

    return-void
.end method

.method public setListener(Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->setClickable(Z)V

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->b:Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;

    return-void
.end method

.method public setMenuIndex(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a:I

    return-void
.end method
