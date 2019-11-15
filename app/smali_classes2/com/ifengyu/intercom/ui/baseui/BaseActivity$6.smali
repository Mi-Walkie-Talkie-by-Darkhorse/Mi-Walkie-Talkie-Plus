.class Lcom/ifengyu/intercom/ui/baseui/BaseActivity$6;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$6;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$6;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$6;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$6;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;->c()V

    :cond_0
    return-void
.end method
