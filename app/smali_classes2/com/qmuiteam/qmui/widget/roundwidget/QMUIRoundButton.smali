.class public Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
.super Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;
.source "QMUIRoundButton.java"

# interfaces
.implements Lcom/qmuiteam/qmui/c/i/a;


# static fields
.field private static c:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/qmuiteam/qmui/widget/roundwidget/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La/b/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, La/b/g;-><init>(I)V

    sput-object v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->c:La/b/g;

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_round_btn_bg_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->c:La/b/g;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_round_btn_border_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "border"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->c:La/b/g;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_round_btn_text_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "textColor"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/qmuiteam/qmui/widget/roundwidget/a;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->b:Lcom/qmuiteam/qmui/widget/roundwidget/a;

    .line 2
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/l;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenDisable(Z)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    return-void
.end method


# virtual methods
.method public getDefaultSkinAttrs()La/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->c:La/b/g;

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->b:Lcom/qmuiteam/qmui/widget/roundwidget/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a()I

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->b:Lcom/qmuiteam/qmui/widget/roundwidget/a;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBgData(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->b:Lcom/qmuiteam/qmui/widget/roundwidget/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->b:Lcom/qmuiteam/qmui/widget/roundwidget/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeData(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->b:Lcom/qmuiteam/qmui/widget/roundwidget/a;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a(ILandroid/content/res/ColorStateList;)V

    return-void
.end method
