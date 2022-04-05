.class public Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$CheckItemView;
.super Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/dialog/DialogMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckItemView"
.end annotation


# instance fields
.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;


# virtual methods
.method protected a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$CheckItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/DialogMenuItemView$CheckItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
