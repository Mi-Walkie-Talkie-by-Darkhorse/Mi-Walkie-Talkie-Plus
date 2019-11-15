.class Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;
.super Landroid/view/View;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field final synthetic b:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->b:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->b:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;

    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->b:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;

    iget-boolean v0, v0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f00a3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->b:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;)I

    move-result v0

    goto :goto_0
.end method
