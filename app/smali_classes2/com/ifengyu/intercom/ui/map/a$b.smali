.class Lcom/ifengyu/intercom/ui/map/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a$b;->a:Lcom/ifengyu/intercom/ui/map/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a$b;->a:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/a;->b(Lcom/ifengyu/intercom/ui/map/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/map/e/a/e;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/a/e;->b()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/widget/dialog/s;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/a$b;->a:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/map/a;->c(Lcom/ifengyu/intercom/ui/map/a;)Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    invoke-direct {p2, p3, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method
