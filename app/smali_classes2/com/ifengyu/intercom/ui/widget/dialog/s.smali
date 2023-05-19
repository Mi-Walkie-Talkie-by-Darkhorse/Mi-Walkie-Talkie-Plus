.class public Lcom/ifengyu/intercom/ui/widget/dialog/s;
.super Ljava/lang/Object;
.source "MyCustomTipBuilder.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/qmuiteam/qmui/c/g;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 1

    const v0, 0x7f120167

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 4

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->c:Lcom/qmuiteam/qmui/c/g;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/a;->b(Lcom/qmuiteam/qmui/c/g;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;

    invoke-direct {v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialogView;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->d:Landroid/view/View;

    .line 6
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d;->setContentView(Landroid/view/View;)V

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->d:Landroid/view/View;

    return-object v0
.end method

.method public d(I)Lcom/ifengyu/intercom/ui/widget/dialog/s;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b:I

    return-object p0
.end method
