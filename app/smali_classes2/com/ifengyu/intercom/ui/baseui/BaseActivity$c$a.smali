.class Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c$a;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c$a;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;->b()V

    :cond_0
    return-void
.end method
