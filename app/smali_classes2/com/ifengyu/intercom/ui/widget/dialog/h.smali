.class public Lcom/ifengyu/intercom/ui/widget/dialog/h;
.super Landroid/app/Dialog;
.source "DialogProgress.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f0c00e2

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->setCanceledOnTouchOutside(Z)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1002c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->e:Landroid/widget/ImageView;

    const v0, 0x7f1002ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->e:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/e;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
