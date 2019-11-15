.class Lcom/ifengyu/intercom/ui/adapter/m$1;
.super Ljava/lang/Object;
.source "SelectDeviceAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/ui/adapter/m$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/m;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/m;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    iput p2, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/ui/adapter/m;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/ui/adapter/m;I)I

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/ui/adapter/m;)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->b(Lcom/ifengyu/intercom/ui/adapter/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->c(Lcom/ifengyu/intercom/ui/adapter/m;)Lcom/ifengyu/intercom/ui/adapter/m$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/adapter/m$a;->a()V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->d(Lcom/ifengyu/intercom/ui/adapter/m;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->a:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/ui/adapter/m;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/ui/adapter/m;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$1;->b:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->c(Lcom/ifengyu/intercom/ui/adapter/m;)Lcom/ifengyu/intercom/ui/adapter/m$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/adapter/m$a;->b()V

    goto :goto_1
.end method
