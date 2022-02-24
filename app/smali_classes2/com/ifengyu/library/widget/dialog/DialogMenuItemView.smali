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
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->c:Z

    const/high16 v0, 0x41a80000    # 21.0f

    .line 4
    invoke-static {v0}, Lcom/ifengyu/library/a/m;->a(F)I

    move-result v1

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->a(F)I

    move-result v0

    invoke-virtual {p0, v1, p1, v0, p1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/ifengyu/library/R$color;->black80:I

    invoke-static {p0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p0, 0x13

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p0, 0x41400000    # 12.0f

    .line 4
    invoke-static {p0}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x106000c

    .line 2
    invoke-static {p0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p0, 0x13

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p0, 0x41600000    # 14.0f

    .line 4
    invoke-static {p0}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    return-object v0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    return-void
.end method

.method public getMenuIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a:I

    return v0
.end method

.method public performClick()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->b:Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a:I

    invoke-interface {v0, v1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;->a(I)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->c:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a(Z)V

    return-void
.end method

.method public setListener(Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->b:Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$a;

    return-void
.end method

.method public setMenuIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;->a:I

    return-void
.end method
