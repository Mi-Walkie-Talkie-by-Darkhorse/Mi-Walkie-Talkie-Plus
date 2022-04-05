.class Lcom/ifengyu/intercom/ui/adapter/c$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jude/rollviewpager/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/c$c;-><init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/c$c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/c$c;Lcom/ifengyu/intercom/ui/adapter/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$c$a;->a:Lcom/ifengyu/intercom/ui/adapter/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$c$a;->a:Lcom/ifengyu/intercom/ui/adapter/c$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/adapter/c$c;->b:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$c$a;->a:Lcom/ifengyu/intercom/ui/adapter/c$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/adapter/c$c;->b:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/ui/adapter/c$a;->b(I)V

    :cond_0
    return-void
.end method
