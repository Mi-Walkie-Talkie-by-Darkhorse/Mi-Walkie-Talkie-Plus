.class public Lcom/ifengyu/library/widget/dialog/a;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/dialog/a$a;,
        Lcom/ifengyu/library/widget/dialog/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/dialog/a;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/dialog/a;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/dialog/a;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/dialog/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/dialog/a;->b()V

    return-void
.end method
