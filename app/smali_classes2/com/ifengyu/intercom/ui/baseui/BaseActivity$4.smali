.class Lcom/ifengyu/intercom/ui/baseui/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

.field final synthetic b:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$4;->b:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$4;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$4;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$4;->b:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n()V

    return-void
.end method
