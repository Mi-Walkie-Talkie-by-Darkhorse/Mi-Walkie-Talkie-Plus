.class Lcom/ifengyu/intercom/ui/map/c/b/b$3;
.super Ljava/lang/Object;
.source "OsmClusterOverlayManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/c/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/c/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$3;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$3;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->d(Lcom/ifengyu/intercom/ui/map/c/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/t;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$3;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->b(Lcom/ifengyu/intercom/ui/map/c/b/b;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v2, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->show()V

    return-void
.end method
