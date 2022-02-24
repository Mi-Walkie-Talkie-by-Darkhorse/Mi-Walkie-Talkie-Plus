.class Lcom/ifengyu/intercom/ui/adapter/n$a;
.super Ljava/lang/Object;
.source "SelectDeviceAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/n;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/n;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n$a;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    iput p2, p0, Lcom/ifengyu/intercom/ui/adapter/n$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n$a;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n;I)I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n$a;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n;I)I

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n$a;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/n;->a(Lcom/ifengyu/intercom/ui/adapter/n;)I

    move-result p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/n$a;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/n;->b(Lcom/ifengyu/intercom/ui/adapter/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n$a;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/n;->c(Lcom/ifengyu/intercom/ui/adapter/n;)Lcom/ifengyu/intercom/ui/adapter/n$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/adapter/n$d;->a()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n$a;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/n;->c(Lcom/ifengyu/intercom/ui/adapter/n;)Lcom/ifengyu/intercom/ui/adapter/n$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/adapter/n$d;->b()V

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/n$a;->b:Lcom/ifengyu/intercom/ui/adapter/n;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/n;->d(Lcom/ifengyu/intercom/ui/adapter/n;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/ifengyu/intercom/ui/adapter/n$a;->a:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
