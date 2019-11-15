.class Lcom/ifengyu/intercom/ui/map/a$2;
.super Ljava/lang/Object;
.source "GaoDeMapOperate.java"

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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a$2;->a:Lcom/ifengyu/intercom/ui/map/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a$2;->a:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/a;->b(Lcom/ifengyu/intercom/ui/map/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/a/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/c/a/e;->c()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/t;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a$2;->a:Lcom/ifengyu/intercom/ui/map/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/a;->c(Lcom/ifengyu/intercom/ui/map/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/t;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->show()V

    return-void
.end method
