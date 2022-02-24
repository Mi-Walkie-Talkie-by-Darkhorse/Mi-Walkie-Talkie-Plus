.class Lcom/ifengyu/intercom/ui/map/e/b/b$c;
.super Ljava/lang/Object;
.source "OsmClusterOverlayManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/e/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/e/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/e/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$c;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

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

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$c;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->d(Lcom/ifengyu/intercom/ui/map/e/b/b;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/map/f/a/f;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/f/a/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    .line 3
    new-instance p2, Lcom/ifengyu/intercom/ui/widget/dialog/s;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$c;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/map/e/b/b;->b(Lcom/ifengyu/intercom/ui/map/e/b/b;)Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    invoke-direct {p2, p3, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 4
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method
