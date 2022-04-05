.class Lcom/ifengyu/library/widget/view/SwitchButton$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/view/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/widget/view/SwitchButton;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$a;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$a;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$a;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->h(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    :cond_0
    return-void
.end method
