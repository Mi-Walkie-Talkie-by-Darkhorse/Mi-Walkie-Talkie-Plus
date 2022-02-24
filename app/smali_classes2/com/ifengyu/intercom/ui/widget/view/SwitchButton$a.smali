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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->b:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->b:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;

    .line 5
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->b:Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;

    iget-boolean v3, v2, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->e:Z

    if-eqz v3, :cond_0

    const v2, 0x7f060188

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;->a(Lcom/ifengyu/intercom/ui/widget/view/SwitchButton;)I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/SwitchButton$a;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
